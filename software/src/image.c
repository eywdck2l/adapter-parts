#include "image.h"
#include "axis-constant-generator.h"
#include "crypt.h"
#include "disk.h"
#include "sd-card.h"
#include "sd-host.h"
#include "util.h"
#include <inttypes.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#define HEADER_SIZE_MAX 1024

#define HEADER_BLOCK_COUNT_MAX ((HEADER_SIZE_MAX + 511) / 512)

#define ENTRY_NAME_SIZE 16

#define IMG_CIPHER_NULL 0
#define IMG_CIPHER_XTS_AES_256 1

#define END_POINTER_CHECKSUM_SHA256 0
#define END_POINTER_CHECKSUM_CRC32 1

#define ENDING_CIPHER_NULL 0
#define ENDING_CIPHER_RSA 1

// Maximum number of data clusters per image
#define DATA_CLUSTER_COUNT_MAX 0x400000

// Maximum cluster size, set arbitrarily to 4MiB
#define CLUSTER_SIZE_EXP_MAX 13

// Fallback is 64KiB clusters if the size suggested in the archive
// header is not supported
#define CLUSTER_SIZE_EXP_FALLBACK 9

// Maximum size of the image ending possibly needed in bytes
#define ENDING_STORED_SIZE 512

// Default number of data clusters to allocate at once
#define DEFAULT_ALLOCATION_INCREMENT 8

#define STR(X) #X
#define XSTR(X) STR(X)

static int write_image_area(my_blkcnt_t offset, my_blkcnt_t count,
                            void (*cb)(int error, my_blkcnt_t transferred),
                            int source, int flags);

static void read_end_pointers(unsigned i);

static void create_image(my_blkcnt_t last_end);

static int write_ending(my_blkcnt_t at, void (*cb)(int error));

static uint32_t get_max_image_size(my_blkcnt_t start);

// Configuration parsing

typedef enum {
  ENTRY_ERROR_SUCCESS,
  ENTRY_ERROR_NON_FATAL,
  ENTRY_ERROR_FATAL
} entry_error_t;

struct entry_spec_t {
  char name[16];
  entry_error_t (*parse)(const void *opaque, const char *data, unsigned size);
  const void *opaque;
};

struct field_spec_t {
  void *dest;
  char size;
  bool is_last;
};

struct list_spec_t {
  unsigned *seen_count;
  unsigned storage_limit;
  size_t list_entry_size;
  struct field_spec_t field_spec[];
};

static void initialize_config(void);

static int parse_config(const char *data);

static int check_config(void);

// Functions to parse entries.  `data` is data following the name and
// size fields of the entry.  `entry_size` is the size of the entry
// excluding the name and size fields.

static entry_error_t parse_entry_regular(const void *spec, const char *data,
                                         unsigned entry_size);

static entry_error_t parse_entry_list(const void *spec, const char *data,
                                      unsigned entry_size);

static entry_error_t parse_ending_cipher(const void *discard, const char *data,
                                         unsigned entry_size);

#define STORAGE_LIMIT_END_POINTER_LOCA 4
#define STORAGE_LIMIT_GLOBAL_LOG_LOCAT 1
#define STORAGE_LIMIT_IMAGE_LOG 1

static struct {
  // Both are in blocks
  my_blkcnt_t disk_capacity;
  my_blkcnt_t header_size;

  int ending_cipher;

  uint32_t allocation_increment;

  uint32_t end_pointer_checksum;

  unsigned end_pointers_cnt;
  struct {
    uint32_t blk;
  } end_pointers[STORAGE_LIMIT_END_POINTER_LOCA];

  uint32_t ending_size;

  unsigned global_logs_cnt;
  struct {
    uint32_t start;
    uint32_t count;
  } global_logs[STORAGE_LIMIT_GLOBAL_LOG_LOCAT];

  uint32_t img_area_start;
  uint32_t img_area_end;

  uint32_t img_cipher;
  uint8_t img_cluster_size_exp;

  unsigned img_logs_cnt;
  struct {
    uint32_t blk_count;
  } img_logs[STORAGE_LIMIT_IMAGE_LOG];

  char sd_cid[15];
} conf;

static const struct field_spec_t spec_allocate_once[] = {
    {.dest = &conf.allocation_increment, .size = 4, .is_last = 1}};
static const struct field_spec_t spec_end_pointer_chec[] = {
    {.dest = &conf.end_pointer_checksum, .size = 4, .is_last = 1}};
static const struct list_spec_t spec_end_pointer_loca = {
    .seen_count = &conf.end_pointers_cnt,
    .storage_limit = STORAGE_LIMIT_END_POINTER_LOCA,
    .list_entry_size = sizeof(conf.end_pointers[0]),
    .field_spec = {
        {.dest = &conf.end_pointers[0].blk, .size = 4, .is_last = 1}}};
static const struct field_spec_t spec_ending_size[] = {
    {.dest = &conf.ending_size, .size = 4, .is_last = 1}};
static const struct list_spec_t spec_global_log_locat = {
    .seen_count = &conf.global_logs_cnt,
    .storage_limit = STORAGE_LIMIT_GLOBAL_LOG_LOCAT,
    .list_entry_size = sizeof(conf.global_logs[0]),
    .field_spec = {
        {.dest = &conf.global_logs[0].start, .size = 4, .is_last = 0},
        {.dest = &conf.global_logs[0].count, .size = 4, .is_last = 1}}};
static const struct field_spec_t spec_image_area[] = {
    {.dest = &conf.img_area_start, .size = 4, .is_last = 0},
    {.dest = &conf.img_area_end, .size = 4, .is_last = 1}};
static const struct field_spec_t spec_image_basic[] = {
    {.dest = &conf.img_cipher, .size = 4, .is_last = 0},
    {.dest = &conf.img_cluster_size_exp, .size = 1, .is_last = 1}};
static const struct list_spec_t spec_image_log = {
    .seen_count = &conf.img_logs_cnt,
    .storage_limit = STORAGE_LIMIT_IMAGE_LOG,
    .list_entry_size = sizeof(conf.img_logs[0]),
    .field_spec = {
        {.dest = &conf.img_logs[0].blk_count, .size = 4, .is_last = 1}}};
static const struct field_spec_t spec_sd_cid[] = {
    {.dest = &conf.sd_cid, .size = 15, .is_last = 1}};

static const struct entry_spec_t entry_spec[] = {
    {.name = "ALLOCATE-ONCE",
     .parse = &parse_entry_regular,
     .opaque = spec_allocate_once},
    {.name = "END-POINTER-CHEC",
     .parse = &parse_entry_regular,
     .opaque = spec_end_pointer_chec},
    {.name = "END-POINTER-LOCA",
     .parse = &parse_entry_list,
     .opaque = &spec_end_pointer_loca},
    {.name = "ENDING-CIPHER", .parse = &parse_ending_cipher, .opaque = NULL},
    {.name = "ENDING-SIZE",
     .parse = &parse_entry_regular,
     .opaque = spec_ending_size},
    {.name = "GLOBAL-LOG-LOCAT",
     .parse = &parse_entry_list,
     .opaque = &spec_global_log_locat},
    {.name = "IMAGE-AREA",
     .parse = &parse_entry_regular,
     .opaque = spec_image_area},
    {.name = "IMAGE-BASIC",
     .parse = &parse_entry_regular,
     .opaque = spec_image_basic},
    {.name = "IMAGE-LOG",
     .parse = &parse_entry_list,
     .opaque = &spec_image_log},
    {.name = "SD-CID", .parse = &parse_entry_regular, .opaque = spec_sd_cid}};

// Masks for rounding to cluster size
static my_blkcnt_t round_cluster_high_bits, round_cluster_low_bits;

// Where image logs are, in absolute block position from start of disk
static my_blkcnt_t abs_img_log[STORAGE_LIMIT_IMAGE_LOG];

// Image size
static uint32_t img_size_clusters;
static my_blkcnt_t img_size_blks;

// L1 mapping size in blocks
static my_blkcnt_t l1_map_size;

// Locations of parts of image.  The L1 map is always at the start of
// the image.
static my_blkcnt_t abs_img_start, off_clusters;
static const my_blkcnt_t off_l1_map = 0;

// Number of clusters there are space for without running into the image
// ending
static uint32_t cluster_limit_resizable;
// Number of clusters there are space for allowing moving the image
// ending
static uint32_t cluster_limit_hard;

// Number of clusters used
static uint32_t clusters_used;

// Requests should be delayed because of a metadata update
static bool request_may_interrupt;
// The delayed request
static void (*request_delayed)(void);
// The current request
struct transfer_part_t {
  // Region where the requested data is
  my_blkcnt_t off_data_start, data_blk_count;
  // Region to write, including data and padding to align it to clusters
  my_blkcnt_t off_write_start, write_blk_count;
  unsigned allocation;
};
static struct transfer_part_t req_part;

// Data buffer, used for holding configuration during initialization and
// for the image ending and end pointer after that
static union {
  char header[HEADER_SIZE_MAX];
  struct {
    char end_pointer[512];
    char ending[ENDING_STORED_SIZE];
  } initialized;
} buffer __attribute__((aligned(4)));

// Cluster map
static int32_t l2_map_data[DATA_CLUSTER_COUNT_MAX]
    __attribute__((section("DRAM_DATA"))),
    l1_map_data[DATA_CLUSTER_COUNT_MAX / 128]
    __attribute__((section("DRAM_DATA")));

static int cmp_entry_names(const void *key, const void *spec) {
  return memcmp(key, ((const struct entry_spec_t *)spec)->name, 16);
}

static const struct entry_spec_t *find_entry_spec(const char *name) {
  return bsearch(name, entry_spec, sizeof(entry_spec) / sizeof(entry_spec[0]),
                 sizeof(entry_spec[0]), cmp_entry_names);
}

static void initialize_config(void) {
  memset(&conf, 0, sizeof(conf));

  conf.img_cluster_size_exp = CLUSTER_SIZE_EXP_FALLBACK;
  conf.ending_size = 1;
  conf.disk_capacity = disk_get_capacity();
}

static uint32_t read_u32(const char *data) {
  const unsigned char *p = (const unsigned char *)data;
  return p[0] | ((uint32_t)p[1] << 8) | ((uint32_t)p[2] << 16) |
         ((uint32_t)p[3] << 24);
}

static char *write_u32(char *dest, uint32_t val) {
  dest[0] = val;
  dest[1] = val >> 8;
  dest[2] = val >> 16;
  dest[3] = val >> 24;
  return dest + 4;
}

static int parse_config(const char *data) {
  const char magic[16] = "CVTM-MAGIC";

  // Check first entry

  if (memcmp(magic, data, 16) != 0) {
    log_error("Wrong magic number\n");
    return -1;
  }

  uint32_t pos, header_size;

  {
    uint32_t entry_size = read_u32(data + 16);
    if (entry_size < 56) {
      log_error("Size of first entry is %" PRIu32 ", expected 56\n",
                entry_size);
      return -1;
    }

    // todo check checksum

    header_size = read_u32(data + 52);
    if (header_size > HEADER_SIZE_MAX) {
      log_error("Header size too big %" PRIu32 "\n", header_size);
      return -1;
    } else if (header_size < entry_size) {
      log_error("Header size is less than size of first entry %" PRIu32
                " %" PRIu32 "\n",
                header_size, entry_size);
      return -1;
    }

    conf.header_size = (header_size + 511) / 512;

    data += entry_size;
    header_size -= entry_size;
    pos = entry_size;
  }

  // Process entries

  while (header_size) {
    if (header_size < ENTRY_NAME_SIZE + 4) {
      log_warn("Header ends with no space left for entry\n");
      return 0;
    }

    uint32_t entry_size = read_u32(data + 16);
    if (entry_size < ENTRY_NAME_SIZE + 4) {
      log_error("Entry size is too small, %" PRIu32 "\n", entry_size);
      return -1;
    }
    if (entry_size > header_size) {
      log_warn("Last entry in header exceeds header size\n");
      entry_size = header_size;
    }

    const struct entry_spec_t *spec = find_entry_spec(data);
    if (!spec) {
      log_warn("Unrecognized entry at %" PRIX32 "\n", pos);
    } else {
      entry_error_t err = spec->parse(spec->opaque, data + ENTRY_NAME_SIZE + 4,
                                      (entry_size - ENTRY_NAME_SIZE + 4));
      if (err) {
        log_error("Got error parsing entry %d at %" PRIu32 "\n", err, pos);
        if (err != ENTRY_ERROR_NON_FATAL)
          return -1;
      }
    }

    data += entry_size;
    pos += entry_size;
    header_size -= entry_size;
  }

  log_info("Done parsing configuration\n");
  return 0;
}

static void got_header(int err);

void read_and_parse_config(void) {
  log_info("Read config\n");

  my_blkcnt_t disk_capacity = disk_get_capacity();
  if (disk_capacity < HEADER_BLOCK_COUNT_MAX) {
    log_error("Disk capacity too small %" PRIBLKCNT ", giving up\n",
              disk_capacity);
    return;
  }

  int err =
      read_to_mem(buffer.header, 0, HEADER_BLOCK_COUNT_MAX, got_header, 0);
  if (err) {
    log_error("Error requesting read %d, giving up\n", err);
  }
}

static void got_header(int err) {
  if (err) {
    log_error("Got error reading header %d, giving up\n", err);
    return;
  }

  initialize_config();

  if ((err = parse_config(buffer.header)) || (err = check_config())) {
    log_error("Error parsing configuration %d\n", err);
    return;
  }

  read_end_pointers(0);
}

static entry_error_t parse_fields(const struct field_spec_t *spec,
                                  const char *data, unsigned entry_size,
                                  size_t offset) {
  while (entry_size) {
    unsigned field_size = spec->size;
    if (field_size > entry_size) {
      log_error("Entry ends early\n");
      return ENTRY_ERROR_NON_FATAL;
    }

    if (field_size != 0)
      memcpy(spec->dest + offset, data, field_size);
    data += field_size;
    entry_size -= field_size;
    if (spec->is_last)
      break;
    spec++;
  }

  return ENTRY_ERROR_SUCCESS;
}

static entry_error_t parse_entry_regular(const void *spec, const char *data,
                                         unsigned entry_size) {
  return parse_fields((const struct field_spec_t *)spec, data, entry_size, 0);
}

static entry_error_t parse_entry_list(const void *spec, const char *data,
                                      unsigned entry_size) {
  const struct list_spec_t *spec_st = spec;

  unsigned seen = (*spec_st->seen_count)++;

  if (seen < spec_st->storage_limit) {
    return parse_fields(spec_st->field_spec, data, entry_size,
                        spec_st->list_entry_size * seen);
  } else {
    log_warn("Configuration is given too many times %u, this implementation "
             "handles %u\n",
             seen + 1, spec_st->storage_limit);
    return ENTRY_ERROR_NON_FATAL;
  }

  return ENTRY_ERROR_SUCCESS;
}

static entry_error_t parse_ending_cipher(const void *discard, const char *data,
                                         unsigned int entry_size) {
  // todo
  return ENTRY_ERROR_SUCCESS;
}

#define min(x, y) (((y) < (x)) ? (y) : (x))
#define max(x, y) (((y) > (x)) ? (y) : (x))

struct region_st {
  my_blkcnt_t start, count;
};

static int cmp_sort_regions(const void *a, const void *b) {
  const struct region_st *aa = a, *bb = b;
  if (sizeof(int) >= sizeof(aa->start)) {
    return (int)aa->start - (int)bb->start;
  } else {
    return (aa->start > bb->start) - (aa->start < bb->start);
  }
}

static int check_config(void) {
  int result = 0;

  if (conf.img_logs_cnt > STORAGE_LIMIT_IMAGE_LOG)
    conf.img_logs_cnt = STORAGE_LIMIT_IMAGE_LOG;

  // Check the assigned areas don't overlap

  if (conf.img_area_end <= conf.img_area_start ||
      conf.img_area_start < conf.header_size ||
      conf.img_area_end > conf.disk_capacity) {
    log_error("Bad image area start %" PRIu32 " end %" PRIu32 "\n",
              conf.img_area_start, conf.img_area_end);
    result = -1;
  } else {
    struct region_st
        areas[STORAGE_LIMIT_END_POINTER_LOCA + STORAGE_LIMIT_GLOBAL_LOG_LOCAT];
    unsigned used = 0;
    my_blkcnt_t start1 = conf.header_size, end1 = conf.img_area_start,
                start2 = conf.img_area_end, end2 = conf.disk_capacity;

    for (unsigned i =
             min(conf.end_pointers_cnt, STORAGE_LIMIT_END_POINTER_LOCA);
         i--;)
      areas[used++] =
          (struct region_st){.start = conf.end_pointers[i].blk, .count = 1};
    for (unsigned i = min(conf.global_logs_cnt, STORAGE_LIMIT_GLOBAL_LOG_LOCAT);
         i--;)
      areas[used++] = (struct region_st){.start = conf.global_logs[i].start,
                                         .count = conf.global_logs[i].count};

    qsort(areas, used, sizeof(areas[0]), cmp_sort_regions);

    for (unsigned i = 0; i < used; i++) {
      my_blkcnt_t start = areas[i].start, count = areas[i].count,
                  end = start + count;
      if (count == 0 || end < start ||
          !((start >= start1 && end <= end1) ||
            (start >= start2 && end <= end2))) {
        log_error("Area is outside bounds start %" PRIBLKCNT
                  " length %" PRIBLKCNT "\n",
                  start, count);
        result = -1;
      }
    }

    for (unsigned i = 0; i + 1 < used; i++)
      if (areas[i].start + areas[i].count > areas[i + 1].start) {
        log_error("Areas overlap %" PRIBLKCNT " %" PRIBLKCNT "\n",
                  areas[i].start, areas[i + 1].start);
        result = -1;
      }
  }

  // todo check ending cipher

  if (conf.end_pointers_cnt == 0) {
    log_error("No end pointer exists\n");
    result = -1;
  }

  if (!(conf.end_pointer_checksum == END_POINTER_CHECKSUM_SHA256 ||
        conf.end_pointer_checksum == END_POINTER_CHECKSUM_CRC32)) {
    log_error("Bad end pointer checksum %" PRIu32 "\n",
              conf.end_pointer_checksum);
    result = -1;
  }

  // Check that all the end pointers can be handled. There being more
  // end pointers than we can handle may cause previous images to be
  // overwritten.
  if (conf.end_pointers_cnt > STORAGE_LIMIT_END_POINTER_LOCA) {
    log_error("Too many end pointers %u, this implementation "
              "supports " XSTR(STORAGE_LIMIT_END_POINTER_LOCA) "\n",
              conf.end_pointers_cnt);
    result = -1;
  }

  if (!(conf.img_cipher == IMG_CIPHER_NULL ||
        conf.img_cipher == IMG_CIPHER_XTS_AES_256)) {
    log_error("Unsupported image cipher %" PRIu32 "\n", conf.img_cipher);
    result = -1;
  }

  if (conf.img_cluster_size_exp > CLUSTER_SIZE_EXP_MAX) {
    log_warn("Cluster size is too big, setting to rest of space on disk\n");
    conf.img_cluster_size_exp = CLUSTER_SIZE_EXP_FALLBACK;
  }
  round_cluster_high_bits = ~(my_blkcnt_t)0 << conf.img_cluster_size_exp;
  round_cluster_low_bits = ~round_cluster_high_bits;

  if (conf.ending_size == 0 ||
      conf.ending_size > (ENDING_STORED_SIZE + 511u) / 512u) {
    log_error("Bad ending size %" PRIu32 "\n", conf.ending_size);
    result = -1;
  }

  // The allocation increment should be at least 2 so that there is
  // space for an L2 table and a data cluster after the image is grown.
  if (conf.allocation_increment < 2)
    conf.allocation_increment = DEFAULT_ALLOCATION_INCREMENT;

  return result;
}

// Read end pointers

static my_blkcnt_t ends[STORAGE_LIMIT_END_POINTER_LOCA];

static unsigned current_end_pointer_index;

static void got_end_pointer(int err);

static void check_end_pointers(void);

static uint32_t crc32c(const char *data, size_t l) {
  uint32_t result = -1;
  for (size_t i = 0; i < l; i++) {
    result ^= (unsigned char)data[i];
    for (int i = 0; i < 8; i++)
      result = (result >> 1) ^ (0x82f63b78 & -(result & 1));
  }
  return ~result;
}

static void compute_end_pointer_checksum(char *p) {
  const char filler[32] = "END-POINTER";
  memcpy(p, filler, 32);

  switch (conf.end_pointer_checksum) {
  case END_POINTER_CHECKSUM_SHA256:
    // todo
    break;
  case END_POINTER_CHECKSUM_CRC32: {
    uint32_t result = crc32c(p, 512);
    p[0] = result;
    p[1] = result >> 8;
    p[2] = result >> 16;
    p[3] = result >> 24;
    memset(p + 4, 0, 8);
    break;
  }
  }
}

static bool end_pointer_checksum_bad(char *p) {
  char s1[32];
  memcpy(s1, p, 32);
  compute_end_pointer_checksum(p);
  return memcmp(s1, p, 32) != 0;
}

static void read_end_pointers(unsigned i) {
  current_end_pointer_index = i;
  my_blkcnt_t at = conf.end_pointers[i].blk;

  log_debug("Read end pointer %u at %" PRIBLKCNT "\n", i, at);

  int err =
      read_to_mem(buffer.initialized.end_pointer, at, 1, got_end_pointer, 0);
  if (err) {
    log_error("Error reading end pointer at %" PRIBLKCNT " %d, giving up\n", at,
              err);
  }
  // todo signal error as device
}

static void got_end_pointer(int err) {
  int i = current_end_pointer_index;

  if (err) {
    log_error("Error reading end pointer at %" PRIu32 " %d, giving up\n",
              conf.end_pointers[i].blk, err);
    return;
  }

  if (end_pointer_checksum_bad(buffer.initialized.end_pointer)) {
    log_warn("End pointer %u has bad checksum\n", i);
    ends[i] = 0;
  } else {
    ends[i] = read_u32(buffer.initialized.end_pointer + 32);
  }

  log_debug("Got end pointer %u %" PRIBLKCNT "\n", i, ends[i]);

  if (i + 1 < conf.end_pointers_cnt)
    read_end_pointers(i + 1);
  else
    check_end_pointers();
}

static void check_end_pointers(void) {
  my_blkcnt_t newest = 0;
  for (unsigned i = 0; i < conf.end_pointers_cnt; i++)
    if (newest < ends[i])
      newest = ends[i];

  if (newest == 0) {
    log_error("No valid end pointer exists\n");
    return;
  }

  if (!(newest >= conf.img_area_start && newest <= conf.img_area_end)) {
    log_error("End pointer points outside image area, %" PRIBLKCNT "\n",
              newest);
    return;
  }

  // Set size. `img_grain_count` being 0 means the maximum allowed by
  // disk size
  uint32_t max_size = get_max_image_size(newest);
  img_size_clusters = max_size;
  img_size_blks = (my_blkcnt_t)max_size << conf.img_cluster_size_exp;
  if (max_size == 0) {
    log_error("No space left on device\n");
    return;
  }

  create_image(newest);
}

// Create image

// We are allowed to add padding between the ending of the last image
// and the start of the new image, and inside the new image between the
// grain mapping and the grains. We choose to pad only before the grain
// data to align them to a grain size.

static void write_blank_image_callback(int err, my_blkcnt_t transferred);

static void blank_image_ending_written_callback(int err);

static uint32_t get_max_image_size(const my_blkcnt_t start) {
  const unsigned cl_exp = conf.img_cluster_size_exp;

  my_blkcnt_t end = conf.img_area_end;
  if (end < conf.ending_size)
    return 0;
  end -= conf.ending_size;
  // Align end to cluster size.  Start is not changed so small sections
  // like the L1 table at the start take up less space.
  end &= round_cluster_high_bits;

  if (start >= end)
    return 0;
  my_blkcnt_t space = end - start;

  // Log
  my_blkcnt_t log_size = 0;
  for (unsigned i = 0; i < conf.img_logs_cnt; i++)
    log_size += conf.img_logs[i].blk_count;
  if (log_size >= space)
    return 0;
  space -= log_size;

  // The number of blocks of space each block of L1 table can point to,
  // including both the L2 tables pointed to directly and the data
  // clusters they point to.  Each block of L1 table points to 128 L2
  // tables.  Each L2 table has (128 << cl_exp) entries and each entry
  // has (1 << cl_exp) blocks.
  my_blkcnt_t clusters_per_l2 = 128 << cl_exp,
              blocks_per_l1 = 128 * (1 + (clusters_per_l2 << cl_exp));
  // Subtract space occupied by the L1 table
  space -= (space + blocks_per_l1) / (blocks_per_l1 + 1);
  // Change to clusters
  space >>= cl_exp;
  // Subtract space occupied by L2 tables
  space -= (space + clusters_per_l2) / (clusters_per_l2 + 1);

  // Make sure we have enough memory for the mappings
  if (space > DATA_CLUSTER_COUNT_MAX)
    space = DATA_CLUSTER_COUNT_MAX;

  return space;
}

static int prepare_ending(my_blkcnt_t last_end, const char img_key[64]) {
  char *p = buffer.initialized.ending;

  memset(p, 0, ENDING_STORED_SIZE);

  {
    struct __attribute__((__packed__)) {
      char magic[16];
      uint32_t length;
      uint32_t ending_length;
      uint32_t image_start;
      uint32_t prev;
      uint32_t data_cluster_count;
      uint8_t cluster_size_exp;
      uint32_t clusters_offset;
    } ent = {.magic = "ENDING",
             .length = sizeof(ent),
             .image_start = abs_img_start,
             .prev = last_end,
             .data_cluster_count = img_size_clusters,
             .cluster_size_exp = conf.img_cluster_size_exp,
             .clusters_offset = off_clusters};
    memcpy(p, &ent, sizeof(ent));
    p += sizeof(ent);
  }

  for (unsigned i = 0; i < conf.img_logs_cnt; i++) {
    struct __attribute__((__packed__)) {
      char magic[16];
      uint32_t length;
      uint32_t offset;
      uint32_t size;
    } ent = {.magic = "IMAGE-LOG-LOCATI",
             .length = sizeof(ent),
             .offset = abs_img_log[i] - abs_img_start,
             .size = conf.img_logs[i].blk_count};
    memcpy(p, &ent, sizeof(ent));
    p += sizeof(ent);
  }

  if (conf.img_cipher == IMG_CIPHER_XTS_AES_256) {
    struct __attribute__((__packed__)) {
      char magic[16];
      uint32_t length;
    } ent = {.magic = "IMAGE-KEY", .length = 84};
    memcpy(p, &ent, sizeof(ent));
    p += sizeof(ent);
    memcpy(p, img_key, 64);
    p += 64;
  }

  // Set size
  write_u32(buffer.initialized.ending + 20, p - buffer.initialized.ending);

  // TODO encrypt

  return 0;
}

static void create_image(my_blkcnt_t last_end) {
  int err;

  log_info("Create image data cluster count %" PRIu32 " cluster size %" PRIu32
           "\n",
           img_size_clusters, (uint32_t)1 << conf.img_cluster_size_exp);

  // Allocate space
  // If there isn't enough space left on device, this function won't be
  // called.

  my_blkcnt_t at = last_end;
  abs_img_start = at;
  at += l1_map_size =
      ((img_size_clusters - 1) >> (7 + 2 * conf.img_cluster_size_exp)) + 1;
  for (unsigned i = 0; i < conf.img_logs_cnt; i++) {
    abs_img_log[i] = at;
    at += conf.img_logs[i].blk_count;
  }
  at = (at + round_cluster_low_bits) & round_cluster_high_bits;
  off_clusters = at - abs_img_start;
  cluster_limit_resizable = 0;
  cluster_limit_hard = ((conf.img_area_end & round_cluster_high_bits) - at) >>
                       conf.img_cluster_size_exp;
  clusters_used = 0;

  // Key
  uint32_t key[16] = {};
  // TODO randomize
  if (conf.img_cipher == IMG_CIPHER_XTS_AES_256) {
    crypt_set_key(key);
  }

  memset(&buffer, 0, sizeof(buffer));

  if ((err = prepare_ending(last_end, (const char *)key))) {
    log_error("Error making image ending %d, giving up\n", err);
    return;
  }

  // cluster map

  // -1 means all 0
  memset(l2_map_data, -1, sizeof(l2_map_data));
  memset(l1_map_data, -1, sizeof(l1_map_data));

  // Write
  const_gen_reset();
  if ((err = write_image_area(0, off_clusters, write_blank_image_callback,
                              SD_HOST_FROM_CONSTANT,
                              DISK_TRAN_CALL_ON_BLOCK_DONE))) {
    log_error("Error writing blank image %d\n", err);
    return;
  }
  const_gen_set(-1, (uint64_t)l1_map_size << 9);
}

static void write_blank_image_callback(int err, my_blkcnt_t transferred) {
  if (err) {
    log_error("Error writing blank image %d\n", err);
    return;
  }

  if (transferred == l1_map_size) {
    // The L1 map is done, fill the rest with 0
    const_gen_set(0, (off_clusters - l1_map_size) << 9);
  } else if (transferred == off_clusters) {
    // The blank image is done. Write the ending.
    int err = write_ending(abs_img_start + off_clusters,
                           blank_image_ending_written_callback);
    if (err) {
      log_error("Error writing ending for blank image %d, giving up\n", err);
      return;
    }
  }
}

static void blank_image_ending_written_callback(int err) {
  if (err) {
    log_error("Error writing ending for blank image %d, giving up\n", err);
    return;
  }

  log_info("Finished writing blank image\n");

  request_may_interrupt = 1;
  request_delayed = NULL;
  memset(&req_part, 0, sizeof(req_part));

  // Notify card
  sd_card_set_info(img_size_clusters << conf.img_cluster_size_exp, conf.sd_cid);
}

// Write data in the image

static int write_image_area(my_blkcnt_t offset, my_blkcnt_t count,
                            void (*cb)(int error, my_blkcnt_t transferred),
                            int source, int flags) {
  flags |= DISK_TRAN_WRITE;
  if (conf.img_cipher == IMG_CIPHER_XTS_AES_256) {
    flags |= DISK_TRAN_ENCRYPTED;
    crypt_set(CRYPT_ENCRYPT, offset);
  }

  int err = disk_tran(abs_img_start + offset, count, source, cb, flags);
  if (err)
    return err;

  return 0;
}

// Write image ending

static my_blkcnt_t new_ending_at;

static void (*write_ending_client_callback)(int);

static void write_ending_callback(int err);

static void prepare_end_pointer(my_blkcnt_t points_to) {
  memset(buffer.initialized.end_pointer, 0, 512);
  write_u32(buffer.initialized.end_pointer + 32, points_to);
  compute_end_pointer_checksum(buffer.initialized.end_pointer);
}

static int write_ending(my_blkcnt_t at, void (*cb)(int error)) {
  log_debug("Write ending at %" PRIBLKCNT "\n", at);

  write_ending_client_callback = cb;
  new_ending_at = at;

  // Write ending

  return write_from_mem(buffer.initialized.ending, at, conf.ending_size,
                        write_ending_callback, 0, 0);
}

static void write_ending_callback(int err) {
  if (err) {
    log_error("Got error writing image ending %d\n", err);
    (*write_ending_client_callback)(err);
    return;
  }

  my_blkcnt_t points_to = new_ending_at + conf.ending_size;

  // Write end pointer

  unsigned oldest_i = 0;
  my_blkcnt_t oldest_v = ends[0];
  for (unsigned i = 1; i < conf.end_pointers_cnt; i++)
    if (ends[i] < oldest_v) {
      oldest_i = i;
      oldest_v = ends[i];
    }

  ends[oldest_i] = points_to;

  prepare_end_pointer(points_to);

  my_blkcnt_t at = conf.end_pointers[oldest_i].blk;

  log_debug("Write end pointer pointing to %" PRIBLKCNT " at %" PRIBLKCNT "\n",
            points_to, at);

  if ((err = write_from_mem(buffer.initialized.end_pointer, at, 1,
                            write_ending_client_callback, 0, 0)))
    (*write_ending_client_callback)(err);
}

// Reads and writes

// Start of the current request.
static my_blkcnt_t req_start;
// First block of the next part of the current request.
static my_blkcnt_t req_next_part_start;
// End of the current request.
static my_blkcnt_t req_end;
// Length done so far in the current request.
static my_blkcnt_t req_done;
// The number of blocks to write in the current step and all previous
// steps in the current transfer
static my_blkcnt_t image_write_step_target;
// The number of blocks already transferred in the current transfer
static my_blkcnt_t image_write_got;
// The next step
static void (*image_write_next_step)(void);
// The new value for number of clusters used, to take effect after the
// clusters are written
static uint32_t write_clusters_used_new;
// The current step
static enum {
  NOT_WRITING,
  WRITING_ZEROS_START,
  WRITING_DATA,
  WRITING_ZEROS_END,
  WRITING_METADATA
} write_step;

static void (*image_tran_client_callback)(int err, my_blkcnt_t transferred);

static int image_read_continue(void);
static void image_read_disk_callback(int err, my_blkcnt_t transferred);
static void image_read_step_done(void);
static int image_write_continue(void);
static void image_write_tran_callback(int err, my_blkcnt_t transferred);
static void image_write_step_1(void);
static void image_write_step_2(void);
static void image_write_step_3(void);
static void image_write_step_4(void);
static void image_write_l2_done(int err);
static void image_write_metadata_done(int err);
static void image_write_step_done(void);

#define PART_ALLOCATED 0
#define PART_DATA_UNALLOCATED 1
#define PART_L2_TABLE_UNALLOCATED 2
#define PART_NOT_ENOUGH_SPACE 3

static void image_tran_reset(void) { write_step = NOT_WRITING; }

// Find region on disk. Parameters are where the requested region is in
// the image.  `off_data_start` is 0 for the beginning of the image.
// Returns the first contiguous region of the requested region relative
// to the start of clusters.  In the case the data cluster is not
// allocated, the entire unallocated region is returned when `read` is
// 1.  When it's 0, the region is limited to fit in a single L2 table
// and no more `conf.allocation_increment` would need to be allocated.

static void image_tran_find_first_part(bool read) {
  char cl_exp = conf.img_cluster_size_exp;
  my_blkcnt_t end = req_end;
  uint32_t index_start = req_next_part_start >> cl_exp;
  uint32_t index_end = ((end - 1) >> cl_exp) + 1;
  int32_t cluster = l2_map_data[index_start];
  bool l2_map_unallocated = 0;

  if (cluster < 0) {
    // Not allocated
    if (read) {
      req_part.off_data_start = 0;
      req_part.off_write_start = 0;
      req_part.write_blk_count = 0;
      req_part.allocation = PART_DATA_UNALLOCATED;
      for (uint32_t i = index_start + 1; i < index_end; i++)
        if (l2_map_data[i] >= 0) {
          end = i << cl_exp;
          break;
        }
    } else {
      l2_map_unallocated = l1_map_data[index_start >> (7 + cl_exp)] < 0;

      // Limit the region to the same L2 map.
      index_end = min(index_end, (index_start | ~(-128 << cl_exp)) + 1);
      // Add at most conf.allocation_increment clusters at once.
      if (index_end - index_start >= conf.allocation_increment)
        index_end =
            index_start + conf.allocation_increment - l2_map_unallocated;

      // Limit the region to unallocated clusters
      for (uint32_t i = index_start + 1; i < index_end; i++)
        if (l2_map_data[i] >= 0) {
          index_end = i;
          break;
        }

      // Check whether there's enough space
      if (index_end - index_start + l2_map_unallocated >
          cluster_limit_resizable - clusters_used) {
        req_part.off_data_start = 0;
        req_part.data_blk_count = 0;
        req_part.off_write_start = 0;
        req_part.write_blk_count = 0;
        req_part.allocation = PART_NOT_ENOUGH_SPACE;
        goto done;
      }

      cluster = clusters_used + l2_map_unallocated;
      req_part.off_write_start = cluster << cl_exp;
      req_part.off_data_start =
          (cluster << cl_exp) | (req_next_part_start & round_cluster_low_bits);

      write_clusters_used_new = cluster;

      req_part.write_blk_count = (index_end - index_start) << cl_exp;
      req_part.allocation = l2_map_unallocated ? PART_L2_TABLE_UNALLOCATED
                                               : PART_DATA_UNALLOCATED;
    }
  } else {
    // Allocated

    req_part.off_data_start =
        (cluster << cl_exp) + (req_next_part_start & round_cluster_low_bits);
    req_part.off_write_start = req_part.off_data_start;
    req_part.allocation = PART_ALLOCATED;

    cluster++;
    for (uint32_t i = index_start + 1; i < index_end; i++, cluster++)
      if (l2_map_data[i] != cluster) {
        index_end = i;
        break;
      }
  }

  end = min(end, index_end << cl_exp);
  req_part.data_blk_count = end - req_next_part_start;
  if (!l2_map_unallocated)
    req_part.write_blk_count = req_part.data_blk_count;

done:
  log_debug("Request part data start %" PRIBLKCNT " count %" PRIBLKCNT
            " write start %" PRIBLKCNT " count %" PRIBLKCNT " allocation %u\n",
            req_part.off_data_start, req_part.data_blk_count,
            req_part.off_write_start, req_part.write_blk_count,
            req_part.allocation);
}

static int image_read_continue(void) {
  // Stop any ongoing data transfer and disable the data switch so we
  // can safely configure the constant generator or encryption.
  disk_tran_abort();

  if (req_next_part_start >= req_end) {
    // Done. There is no need to notify the card unit.
    return 0;
  }

  // Find first contiguous area
  image_tran_find_first_part(1);

  if (req_part.allocation != PART_ALLOCATED) {
    // The constant generator is wired to the SD host's data switch.
    const_gen_set(0, 512 * req_part.data_blk_count);
    sd_host_route_set(SD_HOST_TO_REST, SD_HOST_FROM_CONSTANT);
    sd_host_route_commit();
  } else {
    int flags = DISK_TRAN_READ;
    if (conf.img_cipher == IMG_CIPHER_XTS_AES_256) {
      flags |= DISK_TRAN_ENCRYPTED;
      crypt_set(CRYPT_DECRYPT, off_clusters + req_part.off_data_start);
    }

    int err = disk_tran(abs_img_start + off_clusters + req_part.off_data_start,
                        req_part.data_blk_count, SD_HOST_TO_REST,
                        image_read_disk_callback, flags);
    if (err) {
      log_error("Error reading from image, error reading from disk %d\n", err);
      return err;
    }
  }

  sd_card_set_tran_notifier(req_part.data_blk_count, image_read_step_done);

  return 0;
}

static void image_read_disk_callback(int err, my_blkcnt_t transferred) {
  if (err) {
    log_error("Error reading from image, error reading from disk %d\n", err);
    (*image_tran_client_callback)(err, req_done + transferred);
  }

  // Nothing is done on success. Wait till the SD card unit has taken in
  // the data.
}

static void image_read_step_done(void) {
  req_done += req_part.data_blk_count;
  req_next_part_start += req_part.data_blk_count;

  log_debug("Read step done so far %" PRIBLKCNT "\n", req_done);

  int err = image_read_continue();
  if (err) {
    log_error("Got error reading image %d\n", err);
    (*image_tran_client_callback)(err, req_done);
  }
}

static int grow_image(void (*cb)(int error)) {
  uint32_t expand = cluster_limit_hard - cluster_limit_resizable;

  if (expand == 0) {
    log_error("No space left on disk for more grains\n");
    return NO_SPACE_LEFT;
  }
  if (expand > conf.allocation_increment)
    expand = conf.allocation_increment;

  cluster_limit_resizable += expand;

  log_debug("Grow image by %" PRIu32 " to %" PRIu32 "\n", expand,
            cluster_limit_resizable);

  int err;
  if ((err = write_ending(
           abs_img_start + off_clusters +
               (cluster_limit_resizable << conf.img_cluster_size_exp),
           cb)))
    return err;

  request_may_interrupt = 0;
  return 0;
}

static int image_write_continue(void) {
  // Find first contiguous area.
  image_tran_find_first_part(0);

  // Grow image.
  if (req_part.allocation == PART_NOT_ENOUGH_SPACE)
    return grow_image(image_write_metadata_done);

  // Start transfer.  Set source later.  Data in the data switch's input
  // register stages will be lost when the source is changed.  But it is
  // okay. At most 2 data source changes will happen.  The first is from
  // constant generator to data read as SD card, which happens when the
  // constant generator has spitted out the correct number of bytes and
  // has stopped producing data.  The second is back to constant
  // generator, which happens when the correct number of blocks have
  // been copied, and secondly the SD card unit shouldn't give excess
  // data in the first place.

  image_write_step_target = 0;
  image_write_got = 0;
  int err;
  if ((err = write_image_area(
           off_clusters + req_part.off_write_start, req_part.write_blk_count,
           &image_write_tran_callback, XAXIS_SCR_MI_X_DISABLE_MASK,
           DISK_TRAN_CALL_ON_BLOCK_DONE))) {
    log_error("Got error starting transfer for writing image %d\n", err);
    return err;
  }

  if (req_part.allocation >= PART_DATA_UNALLOCATED)
    image_write_step_1();
  else
    image_write_step_2();

  return 0;
}

static void image_write_tran_callback(int err, my_blkcnt_t transferred) {
  image_write_got = transferred;

  if (err) {
    // transferred is not added to req_done because metadata is not
    // updated
    write_step = NOT_WRITING;
    (*image_tran_client_callback)(err, req_done);
  }

  else if (transferred >= image_write_step_target)
    (*image_write_next_step)();
}

static void image_write_zeros(my_blkcnt_t blk_count) {
  const_gen_set(0, 512 * (uint64_t)blk_count);
  disk_write_change_port(SD_HOST_FROM_CONSTANT);
  image_write_step_target += blk_count;
}

static void image_write_step_1(void) {
  my_blkcnt_t zeros = req_part.off_data_start & round_cluster_low_bits;
  if (zeros) {
    log_debug("Write zeros start\n");
    write_step = WRITING_ZEROS_START;
    image_write_next_step = image_write_step_2;
    image_write_zeros(zeros);
  } else
    image_write_step_2();
}

static void image_write_step_2(void) {
  // Copy data

  log_debug("Write copy\n");
  write_step = WRITING_DATA;
  image_write_step_target += req_part.data_blk_count;
  image_write_next_step = req_part.allocation >= PART_DATA_UNALLOCATED
                              ? image_write_step_3
                              : image_write_step_done;
  disk_write_change_port(SD_HOST_FROM_REST);
}

static void image_write_step_3(void) {
  // Write zeros if the request doesn't end on a cluster boundary

  my_blkcnt_t zeros = -image_write_step_target & round_cluster_low_bits;
  if (zeros) {
    log_debug("Write zeros end\n");
    write_step = WRITING_ZEROS_END;
    image_write_next_step = image_write_step_4;
    image_write_zeros(zeros);
  } else
    image_write_step_4();
}

static int image_write_from_mem(my_blkcnt_t blk_offset, my_blkcnt_t blk_count,
                                const void *data, void (*cb)(int error)) {
  int err;
  if ((err = write_image_area(blk_offset, blk_count, write_from_mem_continue,
                              SD_HOST_FROM_CPU, DISK_TRAN_CALL_ON_BLOCK_DONE)))
    return err;
  if ((err = write_from_mem(data, 0, blk_count, cb, 0, 1)))
    return err;
  return 0;
}

static void image_write_step_4(void) {
  if (req_part.allocation == PART_ALLOCATED) {
    image_write_step_done();
    return;
  }

  // Update L2 table

  request_may_interrupt = 0;
  write_step = WRITING_METADATA;

  char cl_exp = conf.img_cluster_size_exp;
  uint32_t index = req_next_part_start >> cl_exp;
  uint32_t data_cluster = req_part.off_write_start >> cl_exp;
  uint32_t count = req_part.write_blk_count >> cl_exp;
  for (uint32_t i = 0; i < count; i++)
    l2_map_data[index + i] = data_cluster + i;
  uint32_t l2_cluster;
  uint32_t l1_index = index >> (7 + cl_exp);
  if (req_part.allocation >= PART_L2_TABLE_UNALLOCATED) {
    // The cluster reserved for the new L2 table is always the one before
    // the data clusters
    l2_cluster = data_cluster - 1;
    l1_map_data[l1_index] = l2_cluster;
  } else {
    l2_cluster = l1_map_data[l1_index];
  }
  // Write L2 map to disk.  The whole array l2_map_data is set to -1 on
  // start, and checks at the start ensure a cluster is not larger than
  // the array.  So it is safe.
  log_debug("Write L2 map\n");
  int err;
  if ((err = image_write_from_mem(
           off_clusters + ((my_blkcnt_t)l2_cluster << cl_exp), 1 << cl_exp,
           &l2_map_data[index & (-128 << cl_exp)], image_write_l2_done))) {
    log_error("Got error writing L2 table %d\n", err);
    image_write_metadata_done(err);
  }
}

static void image_write_l2_done(int err) {
  if (err) {
    log_error("Got error writing L2 table %d\n", err);
    image_write_metadata_done(err);
    return;
  }

  if (req_part.allocation < PART_L2_TABLE_UNALLOCATED) {
    image_write_metadata_done(0);
    return;
  }

  // Update L1 table

  uint32_t l1_block =
      req_part.off_write_start >> (14 + 2 * conf.img_cluster_size_exp);
  log_debug("Write L1 map\n");
  if ((err = image_write_from_mem(off_l1_map + l1_block, 1,
                                  &l1_map_data[128 * l1_block],
                                  image_write_metadata_done))) {
    log_error("Got error writing L1 table %d\n", err);
    image_write_metadata_done(err);
  }
}

static void image_write_metadata_done(int err) {
  request_may_interrupt = 1;

  if (err)
    log_error("Got error in metadata update %d\n", err);

  if (req_part.allocation >= PART_DATA_UNALLOCATED)
    clusters_used = (req_part.off_write_start + req_part.write_blk_count) >>
                    conf.img_cluster_size_exp;

  // Check for delayed request
  void (*delayed)(void) = request_delayed;
  if (delayed) {
    request_delayed = NULL;
    log_debug("Continuing delayed request %p\n", delayed);
    (*delayed)();
    return;
  }

  if (err) {
    write_step = NOT_WRITING;
    (*image_tran_client_callback)(err, req_done);
    return;
  }

  image_write_step_done();
}

static void image_write_step_done(void) {
  req_done += req_part.data_blk_count;
  req_next_part_start += req_part.data_blk_count;
  memset(&req_part, 0, sizeof(req_part));

  // The block count may be changed during a transfer.  >= is used
  // instead of == to be safe.
  if (req_next_part_start >= req_end) {
    // Done. Notify the card unit.
    write_step = NOT_WRITING;
    log_debug("Done %p %" PRIBLKCNT "\n", image_tran_client_callback, req_done);
    (*image_tran_client_callback)(SUCCESS, req_done);
    return;
  }

  int err = image_write_continue();
  if (err) {
    log_error("Got error writing image %d\n", err);
    write_step = NOT_WRITING;
    (*image_tran_client_callback)(err, req_done);
  }
}

int image_req(my_blkcnt_t blk_start, my_blkcnt_t blk_count, bool read,
              void (*cb)(int err, my_blkcnt_t transferred)) {
  log_debug("Request %s start %" PRIBLKCNT " count %" PRIBLKCNT "\n",
            read ? "read" : "write", blk_start, blk_count);

  if (blk_count == 0)
    return OUT_OF_RANGE;

  if (blk_start >= img_size_blks || img_size_blks - blk_start < blk_count) {
    log_error("Attempt to access image beyond capacity %" PRIBLKCNT
              " %" PRIBLKCNT "\n",
              blk_start, blk_count);
    return OUT_OF_RANGE;
  }

  image_tran_client_callback = cb;

  req_start = blk_start;
  req_next_part_start = blk_start;
  req_end = blk_start + blk_count;
  req_done = 0;
  memset(&req_part, 0, sizeof(req_part));

  if (request_may_interrupt) {
    image_tran_reset();
    return read ? image_read_continue() : image_write_continue();
  } else {
    request_delayed = read ? image_read_step_done : image_write_step_done;
    return 0;
  }
}

// Change block count

static void transfer_done_success(void) {
  (*image_tran_client_callback)(SUCCESS, req_done);
}

void image_write_change_block_count(my_blkcnt_t count) {
  log_debug("Change block count %" PRIBLKCNT "\n", count);

  if (req_end - req_start <= count)
    return;

  req_end = req_start + count;

  if (req_done >= req_end) {
    image_abort_transfer(transfer_done_success);
    return;
  }

  // Only in the writing data step we may need to intervene.  In the
  // other steps we don't need data from the SD card unit, and we will
  // check after the steps are done.

  if (write_step == WRITING_DATA) {
    image_tran_find_first_part(0);
    image_write_step_target =
        (req_part.off_data_start - req_part.off_write_start) +
        req_part.data_blk_count;
    // Change the disk transfer's block count, so that in case if more
    // data appears on the SD card's data port, the correct amount of
    // data is written to disk, although some blocks intended to be
    // zeros may not be zeros anymore.
    disk_tran_change_block_count(req_part.write_blk_count);
    if (image_write_got >= image_write_step_target)
      image_write_step_3();
  }
}

// Abort transfer

void image_abort_transfer(void (*cb)(void)) {
  if (request_may_interrupt) {
    image_tran_reset();
    disk_tran_abort();
  } else
    request_delayed = cb;
}
