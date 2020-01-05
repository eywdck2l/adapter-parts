`timescale 1 ns / 1 ps

module axi_sd_card #
  (
   // Width of S_AXI data bus
   parameter integer C_S_AXI_DATA_WIDTH = 32,
   // Width of S_AXI address bus
   parameter integer C_S_AXI_ADDR_WIDTH = 7,
   // Width of the AXI-Stream data buses
   parameter integer C_DATA_WIDTH = 8
   )
   (// SD bus
    input sd_clk,
    inout sd_cmd,
    inout [3:0] sd_dat,
    output sd_dat3_pullup,

    // Data out
    output [C_DATA_WIDTH-1:0] out_tdata,
    output out_tlast,
    output out_tvalid,
    input out_tready,
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    output fifo_out_resetn,
    input fifo_out_almostfull,
    // For masking the output FIFO's signals
    output fifo_out_tready_masked,
    output fifo_out_tvalid_masked,
    input fifo_out_tready_in,
    input fifo_out_tvalid_in,

    // Data in
    input [C_DATA_WIDTH-1:0] in_tdata,
    input in_tlast,
    input in_tvalid,
    output in_tready,
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    output fifo_in_resetn,

    // AXI4 Lite interface for registers
    input [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
    input [2 : 0] s_axi_awprot,
    input s_axi_awvalid,
    output s_axi_awready,
    input [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
    input [(C_S_AXI_DATA_WIDTH/8)-1 : 0] s_axi_wstrb,
    input s_axi_wvalid,
    output s_axi_wready,
    output [1 : 0] s_axi_bresp,
    output s_axi_bvalid,
    input s_axi_bready,
    input [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
    input [2 : 0] s_axi_arprot,
    input s_axi_arvalid,
    output s_axi_arready,
    output [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
    output [1 : 0] s_axi_rresp,
    output s_axi_rvalid,
    input s_axi_rready,

    (* X_INTERFACE_PARAMETER = "SENSITIVITY LEVEL_HIGH" *)
    output interrupt,

    input clk,
    input resetn
    );

   initial begin : check_parameters
     if (C_S_AXI_DATA_WIDTH != 32)
       $error("Only AXI data width of 32 is supported");
   end

   // Registers

   // RAM for CID and CSD
   localparam reg_ram_start = 0;
   localparam reg_ram_end = 8;

   // Read-only registers
   localparam reg_read_only_start  = 8;
   localparam reg_read_only_end = 17;
   localparam offset_status = 8;
   // Registered that are saved when the status register is being read.
   // All reads by the CPU will get their value when status was last
   // read.
   localparam reg_saved_start = 9;
   localparam reg_saved_end = 17;
   localparam offset_csr_read = 9;
   localparam offset_saved_cmd_arg = 10;
   localparam offset_last_cmd_arg = 11;
   localparam offset_erase_start = 12;
   localparam offset_erase_end = 13;
   localparam offset_block_limit = 14;
   localparam offset_pre_erase_count = 15;
   localparam offset_dat_blocks_transferred = 16;

   // Registers that read as what was written
   localparam reg_read_written_start = 17;
   localparam reg_read_written_end = 20;
   // Registers that are cleared when the device is reset
   localparam reg_clear_device_reset_start = 17;
   localparam reg_clear_device_reset_end = 19;
   localparam offset_ocr = 17;
   localparam offset_size = 18;
   // Registers that are not cleared when the device is reset
   localparam offset_intr_en = 19;
   localparam bit [31:0] reg_write_mask [1<<(C_S_AXI_ADDR_WIDTH-2)] =
                           '{
                             offset_ocr: 32'hff000000,
                             offset_size: 32'hffffffff,
                             // the bits in status that can trigger
                             // interrupts
                             offset_intr_en: 32'h18d40000,
                             default: '0
                             };

   // Write-only registers
   localparam reg_clear_always_start = 20;
   localparam reg_clear_always_end = 23;
   localparam offset_control = 20;
   localparam offset_csr_set_bits = 21;
   localparam offset_csr_clr_bits = 22;

   // AXI

   wire [31:0]           reg_written[1 << (C_S_AXI_ADDR_WIDTH - 2)];
   // status_read is high when the status register is being latched.
   // onread_pre is used instead of onread because the status register
   // is saved to reg_read_only_mux in advance.
   wire                  status_read;
   reg [31:0]            reg_read;
   wire                  read_busy, write_busy;
   wire [C_S_AXI_ADDR_WIDTH-1:0] waddr_saved, raddr_saved;
   wire [31:0]               wdata_saved;
   reg [(1<<(C_S_AXI_ADDR_WIDTH-2))-1:0] reg_resetn;
   wire [(1<<(C_S_AXI_ADDR_WIDTH-2))-1:0] onread_pre;

   axi4_lite_intf #(.DATA_WIDTH(32),
                    .ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
                    .read_special_start(0),
                    .read_special_end(reg_read_written_start),
                    .read_written_start(reg_read_written_start),
                    .read_written_end(reg_read_written_end),
                    .write_mask(reg_write_mask)
                    ) axi4_lite_intf_inst
     (.reg_written,
      .reg_in(reg_read),
      .read_busy_in(read_busy),
      .write_busy_in(write_busy),
      .onread_pre,
      .reg_resetn,
      .wdata_saved,
      .waddr_saved,
      .raddr_saved,
      .awvalid(s_axi_awvalid),
      .awready(s_axi_awready),
      .awaddr(s_axi_awaddr),
      .wvalid(s_axi_wvalid),
      .wready(s_axi_wready),
      .wdata(s_axi_wdata),
      .bvalid(s_axi_bvalid),
      .bready(s_axi_bready),
      .bresp(s_axi_bresp),
      .arvalid(s_axi_arvalid),
      .arready(s_axi_arready),
      .araddr(s_axi_araddr),
      .rvalid(s_axi_rvalid),
      .rready(s_axi_rready),
      .rdata(s_axi_rdata),
      .rresp(s_axi_rresp),
      .clk,
      .resetn);

   // Discard the 2 least significant bits from addresses

   wire [C_S_AXI_ADDR_WIDTH-2-1:0]        raddr_high, raddr_saved_high,
                                          waddr_high, waddr_saved_high;

   assign raddr_high = s_axi_araddr >> 2;
   assign raddr_saved_high = raddr_saved >> 2;
   assign waddr_high = s_axi_awaddr >> 2;
   assign waddr_saved_high = waddr_saved >> 2;

   assign status_read = onread_pre[offset_status];

   // RAM for CID and CSD

   reg [7:0] ram[32];

   // RAM writes

   reg [1:0] ram_byte_index_write;
   reg       ram_write, ram_write_next;

   always @(*) begin
      ram_write_next = ram_write;
      if (ram_write) begin
         if (ram_byte_index_write == 2'h3)
           ram_write_next = 1'b0;
      end
      else begin
         // The AXI module used guarantees there will be a clock cycle
         // when awvalid and wvalid are both high.
         if (s_axi_awvalid && s_axi_wvalid && waddr_high >= reg_ram_start &&
             waddr_high < reg_ram_end)
           ram_write_next = 1'b1;
      end // else: !if(ram_write)
   end // always @ (*)

   always @(posedge clk)
     if (~resetn | ~ram_write)
       ram_byte_index_write <= 0;
     else
       ram_byte_index_write <= ram_byte_index_write + 1;

   always @(posedge clk)
     if (~resetn)
       ram_write <= 1'b0;
     else
       ram_write <= ram_write_next;

   always @(posedge clk)
     if (ram_write)
       ram[{waddr_saved_high[2:0],
            ram_byte_index_write}] <= wdata_saved[8*{~ram_byte_index_write}+:8];

   assign write_busy = ram_write;

   // RAM reads

   reg [31:0] ram_word_out;
   reg [1:0]  ram_byte_index_read;
   reg        ram_read, ram_read_next;

   always @(*) begin
      ram_read_next = ram_read;
      if (ram_read) begin
         if (ram_byte_index_read == 2'h3)
           ram_read_next = 1'b0;
      end
      else begin
         if (s_axi_arvalid && raddr_high >= reg_ram_start &&
             raddr_high < reg_ram_end)
           ram_read_next = 1'b1;
      end
   end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       ram_read <= 1'b0;
     else
       ram_read <= ram_read_next;

   always @(posedge clk)
     if (~resetn | ~ram_read)
       ram_byte_index_read <= 0;
     else
       ram_byte_index_read <= ram_byte_index_read + 1;

   always @(posedge clk)
     if (~resetn)
       ram_word_out <= '0;
     else if (ram_read)
       ram_word_out <= {ram_word_out[23:0],
                        ram[{raddr_saved_high[2:0], ram_byte_index_read}]};

   assign read_busy = ram_read;

   // Handle reads from the device

   reg [7:0] dev_ram_data;
   wire [4:0] dev_ram_addr;
   wire       dev_ram_read_en;

   always @(posedge clk)
     if (~resetn)
       dev_ram_data <= '0;
     else if (dev_ram_read_en)
       dev_ram_data <= ram[dev_ram_addr];

   // Reset signals for registers

   wire device_reset;

   generate
      for (genvar i = $low(reg_resetn); i <= $high(reg_resetn); i++)
        if (i >= reg_clear_device_reset_start && i < reg_clear_device_reset_end)
          assign reg_resetn[i] = ~device_reset;
        else
          assign reg_resetn[i] = 1'b1;
   endgenerate

   // Read-only registers

   wire [31:0] reg_read_only [reg_read_only_start:reg_read_only_end-1];

   // Multiplex these saved registers in advace to help with timing.

   wire [31:0] reg_read_only_mux [reg_read_only_start>>2:
                                  (reg_read_only_end-1)>>2];

   generate
      for (genvar i = $low(reg_read_only_mux); i <= $high(reg_read_only_mux);
           i++) begin : assign_reg_mux
         // Don't use an extra register if no multiplexing is needed
         if ((i << 2) == reg_read_only_end - 1) begin : reg_not_needed
            assign reg_read_only_mux[i] = reg_read_only[i << 2];
         end : reg_not_needed
         else begin : reg_needed
            reg [31:0] mux;
            always @(posedge clk)
              if (~resetn)
                mux <= '0;
              else
                mux <= reg_read_only[{i, raddr_high[1:0]}];
            assign reg_read_only_mux[i] = mux;
         end : reg_needed
      end : assign_reg_mux
   endgenerate

   // Registers that are saved when the status is read

   reg [31:0] reg_saved[reg_saved_start:reg_saved_end-1];
   wire [31:0] reg_saved_in[reg_saved_start:reg_saved_end-1];

   assign reg_saved_in[offset_pre_erase_count][31:23] = '0;

   always @(posedge clk)
     if (~resetn)
       reg_saved <= '{default: '0};
     else if (status_read)
       reg_saved <= reg_saved_in;

   assign reg_read_only[reg_saved_start:reg_saved_end-1] = reg_saved;

   // Registers that are cleared the whole time except on writes

   reg [31:0] reg_clear_always [reg_clear_always_start:reg_clear_always_end-1];

   generate
      for (genvar i = reg_clear_always_start; i < reg_clear_always_end; i++)
        begin: set_reg_clear_always
           always @(posedge clk)
             if (!resetn || !(s_axi_awvalid && s_axi_wvalid && waddr_high == i))
               reg_clear_always[i] <= 0;
             else
               reg_clear_always[i] <= s_axi_wdata;
        end
   endgenerate

   // Generate what the master reads

   // raddr_saved is used instead of s_axi_araddr because the data is
   // used when the read address transaction has taken place.
   always @(*)
     if (raddr_saved_high >= reg_ram_start &&
         raddr_saved_high < reg_ram_end)
       reg_read = ram_word_out;
     else if (raddr_saved_high >= reg_read_only_start &&
              raddr_saved_high < reg_read_only_end)
       reg_read = reg_read_only_mux[raddr_saved_high>>2];
     else
       reg_read = 'x;

   // Status

   wire        last_cmd_is_acmd;
   wire [5:0]  last_cmd_index;
   wire        last_cmd_ignored;
   wire        last_cmd_valid;
   wire        new_cmd;
   wire        saved_cmd_is_acmd;
   wire [5:0]  saved_cmd_index;
   wire        new_cmd_saved;
   wire        is_inactive;
   wire        got_reset_cmd;
   wire        block_limit_used;
   wire        pre_erase_count_used;
   wire        got_cmd8;
   wire        sd_dat3_pullup_off;
   wire [2:0]  dat_error_code;
   wire        dat_done_new;

   assign device_reset = got_reset_cmd;

   // The latched status bits

   localparam status_new_cmd_saved = 16;
   localparam status_new_cmd = 18;
   localparam status_got_reset_cmd = 21;
   localparam status_dat_done = 25;

   reg [31:0]  latched_status_bits, latched_status_bits_set,
               latched_status_bits_next;

   always @(*) begin : latch_status_bits
      // For some bits, we want to know if the corresponding event has
      // happened more than once since status was last read.  The bit
      // indicating this is 1 bit left.
      localparam bit [31:0] save_missed = '{
                                            status_new_cmd_saved: 1'b1,
                                            status_new_cmd: 1'b1,
                                            default: 1'b0
                                            };

      latched_status_bits_set = '{
                                  status_new_cmd_saved: new_cmd_saved,
                                  status_new_cmd: new_cmd,
                                  status_got_reset_cmd: got_reset_cmd,
                                  status_dat_done: dat_done_new,
                                  default: 1'b0
                                  };

      latched_status_bits_set |= (save_missed & latched_status_bits &
                                  latched_status_bits_set) << 1;

      latched_status_bits_next = latched_status_bits | latched_status_bits_set;
   end // block: latch_status_bits

   always @(posedge clk)
     if (~resetn | status_read)
       latched_status_bits <= '0;
     else
       latched_status_bits <= latched_status_bits_next;

   // Status

   reg [31:0] status;

   assign reg_read_only[offset_status] = status;

   always @(*) begin
      status = latched_status_bits_next;

      status[28:26] = dat_error_code;
      status[24] = pre_erase_count_used;
      status[23] = block_limit_used;
      status[22] = got_cmd8;
      status[20] = is_inactive;
      status[15] = last_cmd_valid;
      status[14] = last_cmd_ignored;
      status[13] = last_cmd_is_acmd;
      status[12:7] = last_cmd_index;
      status[6] = saved_cmd_is_acmd;
      status[5:0] = saved_cmd_index;
   end // always @ (*)

   // Control signals.  They are only valid when the latest command that
   // requires the CPU to act upon has been read by the CPU.  It is also
   // necessary that this module gets the signal `new_cmd_saved' no
   // later than whatever module needs the control signals.  The module
   // `dat_controller' uses `update_2', which is asserted the same time
   // as `new_cmd_saved'.

   wire prog_done, start_write, start_read;

   wire [2:0] controls;

   assign controls = latched_status_bits_next[status_new_cmd_saved] ?
                     0 : reg_clear_always[offset_control];

   assign prog_done = controls[0];
   assign start_write = controls[1];
   assign start_read = controls[2];

   // Interrupt

   assign interrupt = |(status & reg_written[offset_intr_en]);

   // IO buffers

   wire        sd_cmd_i;
   wire        sd_cmd_o, sd_cmd_t;
   wire [3:0]  sd_dat_i, sd_dat_o, sd_dat_t;

   IOBUF buf_cmd(.O(sd_cmd_i),
                 .IO(sd_cmd),
                 .I(sd_cmd_o),
                 .T(sd_cmd_t));

   generate
      for (genvar i = 0; i < 4; i++)
        begin: buf_dat
           IOBUF buf_dat(.O(sd_dat_i[i]),
                         .IO(sd_dat[i]),
                         .I(sd_dat_o[i]),
                         .T(sd_dat_t[i]));
        end
   endgenerate

   OBUFT buf_dat3_pullup(.O(sd_dat3_pullup),
                         .I(1'b1),
                         .T(sd_dat3_pullup_off));

   // Wire the main module

   device #(.dat_word_size(C_DATA_WIDTH))
   device(.csr_set_bits(reg_clear_always[offset_csr_set_bits]),
          .csr_clr_bits(reg_clear_always[offset_csr_clr_bits]),
          .ocr_high_byte_in(reg_written[offset_ocr][31:24]),
          .size_in(reg_written[offset_size]),
          .card_status_out(reg_saved_in[offset_csr_read]),
          .saved_cmd_arg(reg_saved_in[offset_saved_cmd_arg]),
          .last_cmd_arg(reg_saved_in[offset_last_cmd_arg]),
          .erase_start(reg_saved_in[offset_erase_start]),
          .erase_end(reg_saved_in[offset_erase_end]),
          .block_limit(reg_saved_in[offset_block_limit]),
          .pre_erase_count(reg_saved_in[offset_pre_erase_count][22:0]),
          .block_count_done(reg_saved_in[offset_dat_blocks_transferred]),
          .ram_addr(dev_ram_addr),
          .ram_data(dev_ram_data),
          .ram_read_en(dev_ram_read_en),
          .got_new_cmd_out(new_cmd),
          .prog_done_in(prog_done),
          .start_write_in(start_write),
          .start_read_in(start_read),
          .sd_clk_i(sd_clk),
          .resetn_in(resetn),
          .*);
endmodule // axi_sd_card
