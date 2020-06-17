`timescale 1 ns / 1 ps

module axi_sd_host #
  (
   parameter cmd_idle_high = 0,
   parameter integer C_DATA_WIDTH = 8,
   parameter real C_CLK_FREQ_HZ = 100000000,
   parameter integer C_S_AXI_DATA_WIDTH = 32,
   parameter integer C_S_AXI_ADDR_WIDTH = 6
   )
   (
    // SD interface
    output wire sd_clk,
    inout tri sd_cmd,
    inout tri [3:0] sd_dat,

    // Data in
    output reg data_in_tready,
    input wire [C_DATA_WIDTH-1 : 0] data_in_tdata,
    input wire data_in_tlast,
    input wire data_in_tvalid,

    // Data out
    output reg data_out_tvalid,
    output wire [C_DATA_WIDTH-1 : 0] data_out_tdata,
    output wire data_out_tlast,
    input wire data_out_tready,

    // Ports of Axi Slave Bus Interface S_AXI
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
    input wire  s_axi_awvalid,
    output wire  s_axi_awready,
    input wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
    input wire  s_axi_wvalid,
    output wire  s_axi_wready,
    output wire [1 : 0] s_axi_bresp,
    output wire  s_axi_bvalid,
    input wire  s_axi_bready,
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
    input wire  s_axi_arvalid,
    output wire  s_axi_arready,
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
    output wire [1 : 0] s_axi_rresp,
    output wire  s_axi_rvalid,
    input wire  s_axi_rready,

    (* X_INTERFACE_PARAMETER = "SENSITIVITY LEVEL_HIGH" *)
    output reg interrupt,

    input wire clk,
    input wire resetn
    );

   initial begin : check_parameters
     if (C_S_AXI_DATA_WIDTH != 32)
       $error("Only AXI data width of 32 is supported");
   end

   // Register definitions

   localparam read_written_start = 8;
   localparam read_written_end = 12;
   localparam read_special_start = 0;
   localparam read_special_end = 6;

   // 4 words of response
   localparam reg_resp = 0;

   // Status
   // Reading the status clears interrupt bits.
   localparam reg_status = 4;
   localparam status_bits_high = 17;
   // Interrupt bits
   localparam interrupt_bits_high = 3;
   localparam reg_status_cmd_done = 0;
   localparam reg_status_dat_done_new = 1;
   localparam reg_status_dat_block_done = 2;
   localparam reg_status_dat_busy_cleared_new = 3;
   // Other
   localparam reg_status_cmd_err_index = 4;
   localparam reg_status_cmd_err_crc = 5;
   localparam reg_status_cmd_err_end_bit = 6;
   localparam reg_status_cmd_err_timeout = 7;
   localparam reg_status_cmd_isbusy = 8;
   localparam reg_status_dat_enabled = 9;
   localparam reg_status_dat_done = 10;
   localparam reg_status_dat_busy_cleared = 11;
   localparam reg_status_dat_block_count_success_overflow = 12;
   localparam reg_status_dat_stop_clock = 13;
   localparam reg_status_dat_error_code = 14;

   // DAT blocks
   localparam reg_dat_block_count_success = 5;

   // Settings
   localparam reg_settings = 8;
   localparam bit [31:0] reg_settings_mask = 32'h3;
   // Clock selection takes 2 bits
   localparam reg_settings_clk = 0;

   // Interrupt enable
   localparam reg_intr_en = 9;
   localparam bit [31:0] reg_intr_en_mask = {(interrupt_bits_high+1){1'b1}};

   // DAT control
   localparam reg_dat_ctrl = 10;
   localparam bit [31:0] reg_dat_ctrl_mask = 32'hff;
   localparam reg_dat_ctrl_enabled = 0;
   localparam reg_dat_ctrl_keep_data = 1;
   localparam reg_dat_ctrl_read_mode = 2;
   localparam reg_dat_ctrl_small_block = 3;
   localparam reg_dat_ctrl_block_count_used = 4;
   localparam reg_dat_ctrl_block_size_exp = 5; // 3 bits
   localparam reg_dat_block_count_in = 11;

   // Command
   // cmd_arg is the argument of the command.  cmd_rest is the index and
   // flags.  Writing to cmd_rest starts sending the command.
   localparam reg_cmd_arg = 12;
   localparam reg_cmd_rest = 13;
   localparam bit [31:0] reg_cmd_rest_mask = 32'h13f;
   localparam reg_cmd_rest_index = 0;
   localparam reg_cmd_rest_exp_r2 = 8;

   // Connections to the AXI module
   wire [31:0]           reg_written[1<<(C_S_AXI_ADDR_WIDTH-2)];
   reg [31:0]            reg_read;
   wire [C_S_AXI_ADDR_WIDTH-1:0] raddr_saved;
   wire [(1<<(C_S_AXI_ADDR_WIDTH-2))-1:0] onwrite, onread;

   // Instantiation of Axi Bus Interface S_AXI
   axi4_lite_intf # (.DATA_WIDTH(C_S_AXI_DATA_WIDTH),
                    .ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
                    .read_written_start(read_written_start),
                    .read_written_end(read_written_end),
                    .read_special_start(read_special_start),
                    .read_special_end(read_special_end),
                    .write_mask('{reg_settings: reg_settings_mask,
                                  reg_intr_en: reg_intr_en_mask,
                                  reg_cmd_arg: 32'hffffffff,
                                  reg_cmd_rest: reg_cmd_rest_mask,
                                  reg_dat_ctrl: reg_dat_ctrl_mask,
                                  reg_dat_block_count_in: 32'hffffffff,
                                  default: 0})
                    ) axi4_lite_intf_inst
     (
      .reg_written(reg_written),
      .reg_in(reg_read),
      .onread(onread),
      .onwrite(onwrite),
      .raddr_saved(raddr_saved),

      .awaddr(s_axi_awaddr),
      .awvalid(s_axi_awvalid),
      .awready(s_axi_awready),
      .wdata(s_axi_wdata),
      .wvalid(s_axi_wvalid),
      .wready(s_axi_wready),
      .bresp(s_axi_bresp),
      .bvalid(s_axi_bvalid),
      .bready(s_axi_bready),
      .araddr(s_axi_araddr),
      .arvalid(s_axi_arvalid),
      .arready(s_axi_arready),
      .rdata(s_axi_rdata),
      .rresp(s_axi_rresp),
      .rvalid(s_axi_rvalid),
      .rready(s_axi_rready),
      .clk(clk),
      .resetn(resetn)
      );

   // Clock
   wire [1:0]                             sd_clk_ph;
   assign sd_clk = sd_clk_ph[0];
   reg                                    sd_clk_2;
   wire                                   sd_clk_1;
   wire                                   clock_div_en;
   assign sd_clk_ph = {sd_clk_1, sd_clk_2};
   always @(posedge clk)
     if (~resetn)
       sd_clk_2 <= 1'b0;
     else
       sd_clk_2 <= sd_clk_1;
   clock_divider_selector #(.clk_cnt(2),
                            .out_freq('{200000,
                                        25000000}),
                            .div_pow2('{1'b1, 1'b0}),
                            .in_freq(C_CLK_FREQ_HZ))
   clock_gen(.clk_out(sd_clk_1),
             .select_in(reg_written[reg_settings][reg_settings_clk+:2]),
             .clk_in(clk),
             .div_en(clock_div_en),
             .resetn(resetn));

   // Settings
   wire [C_S_AXI_DATA_WIDTH-1:0]          settings = reg_written[reg_settings],
                                          dat_ctrl = reg_written[reg_dat_ctrl];

   // Status register

   wire [status_bits_high:interrupt_bits_high+1] status;
   wire [interrupt_bits_high:0]                  interrupt_bits_set,
                                                 interrupt_bits;
   reg [interrupt_bits_high:0]                   interrupt_bits_saved;

   // Latch the interrupt bits.

   assign interrupt_bits = interrupt_bits_saved | interrupt_bits_set;

   always @(posedge clk)
     if (~resetn | onread[reg_status])
       interrupt_bits_saved <= 0;
     else
       interrupt_bits_saved <= interrupt_bits;

   // CMD

   wire [31:0]                                   cmd_resp_out;

   cmd_writer cmd_writer
     (.resp_out(cmd_resp_out),
      .resp_out_addr(s_axi_araddr[3:2]),
      .resp_out_change(s_axi_arvalid && (s_axi_araddr >> 4) == (reg_resp >> 2)),
      .cmd_in({reg_written[reg_cmd_rest][reg_cmd_rest_index+:6],
               reg_written[reg_cmd_arg]}),
      .exp_r2_in(reg_written[reg_cmd_rest][reg_cmd_rest_exp_r2]),
      .cmd_idle_high(cmd_idle_high),
      .err_index(status[reg_status_cmd_err_index]),
      .err_crc(status[reg_status_cmd_err_crc]),
      .err_end_bit(status[reg_status_cmd_err_end_bit]),
      .err_timeout(status[reg_status_cmd_err_timeout]),
      .send_cmd_req(onwrite[reg_cmd_rest]),
      .resp_done(interrupt_bits_set[reg_status_cmd_done]),
      .isbusy(status[reg_status_cmd_isbusy]),
      .sd_cmd(sd_cmd),
      .sd_clk(sd_clk_ph),
      .clk(clk),
      .resetn(resetn));

   // DAT

   wire                                          dat_resetn;
   wire                                          dat_stop_clock;
   wire                                          small_block_mode;

   assign status[reg_status_dat_stop_clock] = dat_stop_clock;
   assign status[reg_status_dat_enabled] = dat_ctrl[reg_dat_ctrl_enabled];
   assign clock_div_en = !dat_stop_clock;

   // Reset the DAT module every time its mode is changed.
   reset_gen dat_reset_gen
     (.resetn_out(dat_resetn),
      .clk(clk),
      .resetn_in(~(~resetn |
                   onwrite[reg_dat_ctrl] |
                   ~dat_ctrl[reg_dat_ctrl_enabled])));

   assign small_block_mode = dat_ctrl[reg_dat_ctrl_small_block];

   // The FIFO should be reset when dat_ctrl is changed, unless
   // keep_data was high before it was changed.

   wire                                          fifo_resetn;

   reset_gen fifo_resetn_gen
     (.resetn_out(fifo_resetn),
      .clk(clk),
      .resetn_in(~(~resetn |
                   ~((~onwrite[reg_dat_ctrl] & dat_ctrl[reg_dat_ctrl_enabled]) |
                     dat_ctrl[reg_dat_ctrl_keep_data]))));

   // FIFO

   reg [C_DATA_WIDTH-1:0]                        fifo_in_tdata;
   reg                                           fifo_in_tlast;
   reg                                           fifo_in_tvalid;
   wire                                          fifo_in_tready;
   wire [C_DATA_WIDTH-1:0]                       fifo_out_tdata;
   wire                                          fifo_out_tlast;
   wire                                          fifo_out_tvalid;
   reg                                           fifo_out_tready;
   wire                                          fifo_almost_full;
   wire                                          fifo_discard_block;
   wire                                          fifo_rewind_block;

   block_mode_fifo #(.DATA_WIDTH(C_DATA_WIDTH)) fifo
     (.out_tdata(fifo_out_tdata),
      .out_tlast(fifo_out_tlast),
      .out_tvalid(fifo_out_tvalid),
      .out_tready(fifo_out_tready),
      .almost_empty(),
      .in_tdata(fifo_in_tdata),
      .in_tlast(fifo_in_tlast),
      .in_tvalid(fifo_in_tvalid),
      .in_tready(fifo_in_tready),
      .almost_full(fifo_almost_full),
      .rewind_block_output(fifo_rewind_block),
      .discard_block_input(fifo_discard_block),
      .small_block_mode(small_block_mode),
      .clk,
      .resetn(fifo_resetn));

   wire                                          read_mode;
   wire                                          interface_in_tready;
   wire [C_DATA_WIDTH-1:0]                       interface_out_tdata;
   wire                                          interface_out_tlast;
   wire                                          interface_out_tvalid;
   reg                                           interface_out_tready;

   assign read_mode = dat_ctrl[reg_dat_ctrl_read_mode];

   // When reading from the card, the FIFO takes input from the DAT
   // module and gives output to the AXI-Stream interface.  Vice versa
   // when writing.  tvalid and tready inputs to the DAT module
   // interface are not masked because it only uses the ports in the
   // correct mode.

   assign data_out_tdata = fifo_out_tdata;
   assign data_out_tlast = fifo_out_tlast;

   always_comb
     if (read_mode) begin
        data_in_tready = 1'b0;
        interface_out_tready = fifo_in_tready;
        fifo_in_tdata = interface_out_tdata;
        fifo_in_tlast = interface_out_tlast;
        fifo_in_tvalid = interface_out_tvalid;
        fifo_out_tready = data_out_tready;
        data_out_tvalid = fifo_out_tvalid;
     end
     else begin
        data_out_tvalid = 1'b0;
        data_in_tready = fifo_in_tready;
        fifo_in_tdata = data_in_tdata;
        fifo_in_tlast = data_in_tlast;
        fifo_in_tvalid = data_in_tvalid;
        fifo_out_tready = interface_in_tready;
     end // else: !if(read_mode)

   wire [31:0]                                   dat_block_count_success;

   dat_rw #(.word_size(C_DATA_WIDTH)) dat_rw
     (.in_tdata(fifo_out_tdata),
      .in_tlast(fifo_out_tlast),
      .in_tready(interface_in_tready),
      .in_tvalid(fifo_out_tvalid),
      .out_almostfull(fifo_almost_full),
      .out_tdata(interface_out_tdata),
      .out_tlast(interface_out_tlast),
      .out_tready(fifo_in_tready),
      .out_tvalid(interface_out_tvalid),
      .block_count_success(dat_block_count_success),
      .block_count_success_overflow(status[reg_status_dat_block_count_success_overflow]),
      .block_size_exp(dat_ctrl[reg_dat_ctrl_block_size_exp+:3]),
      .small_block(dat_ctrl[reg_dat_ctrl_small_block]),
      .block_count_in(reg_written[reg_dat_block_count_in]),
      .block_count_used(dat_ctrl[reg_dat_ctrl_block_count_used]),
      .read_mode(read_mode),
      .stop_clock(dat_stop_clock),
      .busy_cleared(status[reg_status_dat_busy_cleared]),
      .busy_cleared_new(interrupt_bits_set[reg_status_dat_busy_cleared_new]),
      .done(status[reg_status_dat_done]),
      .done_new(interrupt_bits_set[reg_status_dat_done_new]),
      .block_done(interrupt_bits_set[reg_status_dat_block_done]),
      .error_code(status[reg_status_dat_error_code+:dat_error_codes::width]),
      .fifo_in_rewind_block(fifo_rewind_block),
      .fifo_out_discard_block(fifo_discard_block),
      .sd_dat(sd_dat),
      .sd_clk(sd_clk_ph),
      .clk(clk),
      .resetn(dat_resetn),
      .resetn_sys(resetn));

   reg [31:0]                                    dat_block_count_success_saved;

   always @(posedge clk)
     if (~resetn)
       dat_block_count_success_saved <= '0;
     else if (onread[reg_status])
       dat_block_count_success_saved <= dat_block_count_success;

   // Register read
   always @(*)
     casex (raddr_saved >> 2)
       reg_resp ^ 4'b00xx:
         reg_read = cmd_resp_out;
       reg_status:
         reg_read = {status, interrupt_bits};
       reg_dat_block_count_success:
         reg_read = dat_block_count_success_saved;
       default:
         reg_read = 'x;
     endcase // casex (raddr_saved >> 2)

   // Interrupt
   always @(posedge clk)
     if (~resetn)
       interrupt <= 1'b0;
     else
       interrupt <= |(reg_written[reg_intr_en] & interrupt_bits);
endmodule // axi_sd_host

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
