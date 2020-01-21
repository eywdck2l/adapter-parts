module axi_xts_aes
  #(parameter C_S_AXI_DATA_WIDTH = 32,
    parameter C_S_AXI_ADDR_WIDTH = 10,
    parameter KEY_SIZE = 256,
    parameter WORKER_COUNT = 1,
    parameter TWEAK_WIDTH = 32,
    parameter DATA_UNIT_SIZE = 128)
   (// AXI4-Lite
    input awvalid,
    output awready,
    input [C_S_AXI_ADDR_WIDTH-1 : 0] awaddr,
    input wvalid,
    output wready,
    input [C_S_AXI_DATA_WIDTH-1 : 0] wdata,
    input [C_S_AXI_DATA_WIDTH/8-1:0] wstrb,
    output bvalid,
    input bready,
    output [1 : 0] bresp,
    input arvalid,
    output arready,
    input [C_S_AXI_ADDR_WIDTH-1 : 0] araddr,
    output rvalid,
    input rready,
    output [C_S_AXI_DATA_WIDTH-1 : 0] rdata,
    output [1 : 0] rresp,

    // Data out
    output [127:0] out_tdata,
    output out_tlast,
    output out_tvalid,

    // Data in
    input [127:0] in_tdata,
    input in_tlast,
    input in_tvalid,
    output in_tready,

    input fifo_out_almostfull,

    output fifo_out_resetn,

    input clk,
    input resetn);

   // Check parameters

   initial begin
      if (!(C_S_AXI_ADDR_WIDTH >= 10))
        $error("Address width too small");
   end

   // Register locations

   // Tweak, can be either read or written.  It is in little endian on
   // the AXI interface and converted to big endian for encryption.
   localparam REG_TWEAK = 0;
   // Status
   localparam REG_STATUS = 16;
   // Whether the key is successfully written
   localparam REG_STATUS_GOT_KEY = 0;
   // Enable
   localparam REG_STATUS_EN = 1;
   // To decrypt instead of to encrypt
   localparam REG_STATUS_DECRYPT = 2;
   // Round keys.  Key1 starts at 512.  Key2 starts of 768.
   localparam REG_KEYS = 512;

   // AXI interface

   localparam ADDR_BITS_WORD = $clog2(C_S_AXI_DATA_WIDTH / 8);

   wire [7:0] reg_written[1<<C_S_AXI_ADDR_WIDTH],
              reg_written_cleared[1<<C_S_AXI_ADDR_WIDTH];
   reg [7:0]  reg_to_read[1<<C_S_AXI_ADDR_WIDTH];
   wire [C_S_AXI_DATA_WIDTH-1:0] wdata_saved;
   wire [C_S_AXI_ADDR_WIDTH-1:0] waddr_saved;
   wire [C_S_AXI_DATA_WIDTH/8-1:0] wstrb_saved;
   wire                            wr_tran;

   axi4_lite_intf #(.DATA_WIDTH(C_S_AXI_DATA_WIDTH),
                    .ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)) axi4_lite_intf
     (.reg_written,
      .reg_written_cleared,
      .reg_to_read,
      .wdata_saved,
      .waddr_saved,
      .wstrb_saved,
      .raddr_saved(),
      .wr_tran,
      .onwrite(),
      .rd_tran(),
      .awvalid,
      .awready,
      .awaddr,
      .wvalid,
      .wready,
      .wdata,
      .wstrb,
      .bvalid,
      .bready,
      .bresp,
      .arvalid,
      .arready,
      .araddr,
      .rvalid,
      .rready,
      .rdata,
      .rresp,
      .clk,
      .resetn);

   wire [C_S_AXI_DATA_WIDTH-1:ADDR_BITS_WORD] waddr_saved_high;
   assign waddr_saved_high = waddr_saved >> ADDR_BITS_WORD;

   // Maintain key status

   localparam ROUND_KEY_COUNT = KEY_SIZE / 2 / 32 + 7;

   reg                                        key_loaded;
   reg [8:ADDR_BITS_WORD]                     next_key_addr;
   reg                                        wstrb_all_high;

   always @(posedge clk)
     if (~resetn) begin
        key_loaded <= 1'b0;
        next_key_addr <= '0;
     end
     else if (wr_tran) begin
        if (!(wstrb_all_high &&
              waddr_saved_high ==
              (REG_KEYS >> ADDR_BITS_WORD) + next_key_addr)) begin
           // Reset the sequence
           next_key_addr <= '0;
           if (waddr_saved >= REG_KEYS && waddr_saved < REG_KEYS + 512)
             key_loaded <= 1'b0;
        end
        else begin
           if (next_key_addr[7:4] >= ROUND_KEY_COUNT - 1 &&
               &next_key_addr[3:ADDR_BITS_WORD]) begin
              // One of the two keys is done
              if (next_key_addr[8])
                key_loaded <= 1'b1;
              next_key_addr[8] <= ~next_key_addr[8];
              next_key_addr[7:ADDR_BITS_WORD] <= '0;
           end
           else
             next_key_addr <= next_key_addr + 1;
        end // else: !if(!(wstrb_all_high && waddr_saved == next_key_addr))
     end // if (wr_tran)

   always @(posedge clk)
     if (~resetn)
       wstrb_all_high <= 1'b0;
     else if (wvalid & wready)
       wstrb_all_high <= &wstrb;

   reg [127:0] key_in_data;

   always @(posedge clk)
     if (wr_tran)
       key_in_data[7'(C_S_AXI_DATA_WIDTH*waddr_saved_high)+:C_S_AXI_DATA_WIDTH] <= wdata_saved;

   reg         key_in_wren;

   always @(posedge clk)
     if (~resetn)
       key_in_wren <= 1'b0;
     else
       key_in_wren <= wr_tran && waddr_saved >= REG_KEYS &&
                      waddr_saved < REG_KEYS + 512;

   // Load tweak

   reg [TWEAK_WIDTH-1:0] tweak_in;
   reg                   load_tweak;
   wire [TWEAK_WIDTH-1:0] tweak_out;

   always_comb
     foreach (tweak_in[i])
       tweak_in[i] = reg_written[REG_TWEAK+i/8][i%8];

   // The valid flags are cleared when any register is updated by the
   // master.

   reg                    en;

   // When the EN bit of the status register is written to,
   // `reg_written_cleared[REG_STATUS][REG_STATUS_EN]' is high the clock
   // cycle after wr_tran is high.

   always @(posedge clk)
     if (~resetn | ~key_loaded | wr_tran) begin
        en <= 1'b0;
        load_tweak <= 1'b0;
     end
     else if (reg_written_cleared[REG_STATUS][REG_STATUS_EN]) begin
        en <= 1'b1;
        load_tweak <= 1'b1;
     end
     else
       load_tweak <= 1'b0;

   wire                  valid_resetn;

   reset_gen valid_reset_gen
     (.resetn_out(valid_resetn),
      .clk,
      .resetn_in(~(~resetn |
                   ~en)));

   assign fifo_out_resetn = valid_resetn;

   // Encryption and decryption

   wire                  decrypt = reg_written[REG_STATUS][REG_STATUS_DECRYPT];

   xts_aes #(.KEY_SIZE(KEY_SIZE),
             .WORKER_COUNT(WORKER_COUNT),
             .TWEAK_WIDTH(TWEAK_WIDTH),
             .DATA_UNIT_SIZE(DATA_UNIT_SIZE)) xts_aes
     (.out_tdata,
      .out_tlast,
      .out_tvalid,
      .in_tdata,
      .in_tlast,
      .in_tvalid,
      .in_tready,
      .clear_valid(~valid_resetn),
      .key_in_data,
      .key_in_addr(waddr_saved[8:4]),
      .key_in_wren,
      .tweak_in,
      .load_tweak,
      .tweak_out,
      .ready_in(~fifo_out_almostfull),
      .decrypt,
      .clk,
      .resetn);

   // Register reads

   always_comb begin
      reg_to_read = '{default: '0};

      reg_to_read[REG_STATUS] = '{
                                  REG_STATUS_GOT_KEY: key_loaded,
                                  REG_STATUS_EN: en,
                                  REG_STATUS_DECRYPT: decrypt,
                                  default: 1'b0
                                  };

      foreach (tweak_out[i])
        reg_to_read[REG_TWEAK+i/8][i%8] = tweak_out[i];
   end
endmodule // axi_xts_aes

module reset_gen
  #(parameter duration = 16)
   (output reg resetn_out,
    input clk,
    input resetn_in);

   reg [$clog2(duration-1)-1:0] counter;

   wire signed [$clog2(duration-1):0] counter_dec = counter - 1;

   always @(posedge clk)
     if (~resetn_in) begin
        counter <= duration - 1;
        resetn_out <= 1'b0;
     end
     else if (counter_dec < 0)
       resetn_out <= 1'b1;
     else
       counter <= counter_dec;
endmodule // reset_gen
