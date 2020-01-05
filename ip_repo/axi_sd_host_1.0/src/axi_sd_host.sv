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
    output wire data_in_tready,
    input wire [C_DATA_WIDTH-1 : 0] data_in_tdata,
    input wire data_in_tlast,
    input wire data_in_tvalid,

    // Data out
    input wire data_out_almostfull,
    output wire data_out_tvalid,
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

    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    output fifo_out_resetn,
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    output fifo_in_resetn,

    input wire clk,
    input wire resetn
    );

   initial begin : check_parameters
     if (C_S_AXI_DATA_WIDTH != 32)
       $error("Only AXI data width of 32 is supported");
   end

   // Register definitions

   localparam read_written_start = 8;
   localparam read_written_end = 11;
   localparam read_special_start = 0;
   localparam read_special_end = 5;

   // 4 words of response
   localparam reg_resp = 0;

   // Status
   // Reading the status clears interrupt bits.
   localparam reg_status = 4;
   localparam status_bits_high = 12;
   // Interrupt bits
   localparam interrupt_bits_high = 1;
   localparam reg_status_cmd_done = 0;
   localparam reg_status_dat_done_new = 1;
   // Other
   localparam reg_status_cmd_err_index = 2;
   localparam reg_status_cmd_err_crc = 3;
   localparam reg_status_cmd_err_end_bit = 4;
   localparam reg_status_cmd_err_timeout = 5;
   localparam reg_status_cmd_isbusy = 6;
   localparam reg_status_dat_done = 7;
   localparam reg_status_dat_stop_clock = 8;
   localparam reg_status_dat_error_code = 9;

   // Settings
   // The settings bits in the same position as the interrupt bits turn
   // them on.
   localparam reg_settings = 8;
   localparam bit [31:0] reg_settings_mask = 32'hf;
   // Clock selection takes 2 bits
   localparam reg_settings_clk = 2;

   // DAT control
   localparam reg_dat_ctrl = 9;
   localparam bit [31:0] reg_dat_ctrl_mask = 32'h7f;
   localparam reg_dat_ctrl_enabled = 0;
   localparam reg_dat_ctrl_read_mode = 1;
   localparam reg_dat_ctrl_small_block = 2;
   localparam reg_dat_ctrl_block_count_used = 3;
   localparam reg_dat_ctrl_block_size_exp = 4; // 3 bits
   localparam reg_dat_block_count = 10;

   // Command
   // cmd_arg is the argument of the command.  cmd_rest is the index and
   // flags.  Writing to cmd_rest starts sending the command.
   localparam reg_cmd_arg = 11;
   localparam reg_cmd_rest = 12;
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
                                  reg_cmd_arg: 32'hffffffff,
                                  reg_cmd_rest: reg_cmd_rest_mask,
                                  reg_dat_ctrl: reg_dat_ctrl_mask,
                                  reg_dat_block_count: 32'hffffffff,
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

   assign status[reg_status_dat_stop_clock] = dat_stop_clock;

   assign clock_div_en = !dat_stop_clock;

   // Reset the DAT module every time its mode is changed.
   reset_gen dat_reset_gen(.resetn_out(dat_resetn),
                           .clk(clk),
                           .resetn_in(~(~resetn |
                                        onwrite[reg_dat_ctrl] |
                                        ~dat_ctrl[reg_dat_ctrl_enabled])));

   dat_rw #(.word_size(C_DATA_WIDTH)) dat_rw
     (.in_tdata(data_in_tdata),
      .in_tlast(data_in_tlast),
      .in_tready(data_in_tready),
      .in_tvalid(data_in_tvalid),
      .out_almostfull(data_out_almostfull),
      .out_tdata(data_out_tdata),
      .out_tlast(data_out_tlast),
      .out_tready(data_out_tready),
      .out_tvalid(data_out_tvalid),
      .block_size_exp(dat_ctrl[reg_dat_ctrl_block_size_exp+:3]),
      .small_block(dat_ctrl[reg_dat_ctrl_small_block]),
      .block_count_in(reg_written[reg_dat_block_count]),
      .block_count_used(dat_ctrl[reg_dat_ctrl_block_count_used]),
      .read_mode(dat_ctrl[reg_dat_ctrl_read_mode]),
      .stop_clock(dat_stop_clock),
      .done(status[reg_status_dat_done]),
      .done_new(interrupt_bits_set[reg_status_dat_done_new]),
      .error_code(status[reg_status_dat_error_code+:dat_error_codes::width]),
      .fifo_out_resetn(fifo_out_resetn),
      .fifo_in_resetn(fifo_in_resetn),
      .sd_dat(sd_dat),
      .sd_clk(sd_clk_ph),
      .clk(clk),
      .resetn(dat_resetn));

   // Register read
   always @(*)
     casex (raddr_saved >> 2)
       reg_resp ^ 4'b00xx:
         reg_read = cmd_resp_out;
       reg_status:
         reg_read = {status, interrupt_bits};
       default:
         reg_read = 'x;
     endcase // casex (raddr_saved >> 2)

   // Interrupt
   always @(posedge clk)
     if (~resetn)
       interrupt <= 1'b0;
     else
       interrupt <= |(reg_written[reg_settings] & interrupt_bits);

   // User logic ends

endmodule // axi_sd_host

module reset_gen
  #(parameter duration = 16)
   (output reg resetn_out,
    input clk,
    input resetn_in);

   reg [$clog2(duration-1)-1:0] counter;

   wire signed [$clog2(duration-1):0] counter_dec = counter - 1;

   always @(posedge clk, negedge resetn_in)
     if (~resetn_in) begin
        counter <= duration - 1;
        resetn_out <= 1'b0;
     end
     else if (counter_dec < 0)
       resetn_out <= 1'b1;
     else
       counter <= counter_dec;
endmodule // reset_gen
