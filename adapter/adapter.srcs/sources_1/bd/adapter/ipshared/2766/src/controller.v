module sd_if_controller
  #(parameter integer reg_addr_bits = 32,
    parameter logic rca_enabled = 1)
   (output reg [31:0] read_data,
    output interrupt,
    output sd_dat3_pullup,
    input [reg_addr_bits-1:0] read_addr, write_addr,
    input reg_wren,
    input [31:0] wdata,
    input sd_clk,
    inout sd_cmd,
    inout [3:0] sd_dat,
    input clk,
    input resetn_in);

   localparam offset_ctrl = 0;
   localparam offset_cmd_status = 1;
   localparam offset_cmd_rx_arg = 2;
   localparam offset_cmd_tx_ctrl = 3;
   localparam offset_cmd_tx_dat = 4;
   localparam offset_rca = 5;

   wire [19:0] cmd_status;
   wire [31:0] cmd_rx_arg, cmd_tx_ctrl;

   reg         dat3_pullup_disabled;

   wire        ctrl_reset, ctrl_disable_dat3_pullup;

   wire        rca_mismatch;
   wire [15:0] rca_read;

   assign {ctrl_disable_dat3_pullup, ctrl_reset}
     = (reg_wren && write_addr == offset_ctrl) ?
       wdata[1:0] :
       0;

   wire        resetn = !(!resetn_in || ctrl_reset);

   // Address decoding for reading registers
   always @(*)
     begin
        case (read_addr)
          offset_cmd_status:
            read_data = {dat3_pullup_disabled, 3'h0, rca_mismatch, cmd_status};
          offset_cmd_rx_arg:
            read_data = cmd_rx_arg;
          offset_cmd_tx_ctrl:
            read_data = cmd_tx_ctrl;
          offset_rca:
            read_data = rca_read;
          default:
            read_data = 0;
        endcase
     end // always @ (*)

   // cmd

   sd_if_controller_cmd(.status(cmd_status),
                        .rx_arg(cmd_rx_arg),
                        .tx_ctrl(cmd_tx_ctrl),
                        .interrupt(interrupt),
                        .wdata(wdata),
                        .write_tx_ctrl(reg_wren &&
                                       write_addr == offset_cmd_tx_ctrl),
                        .write_tx_dat(reg_wren &&
                                      write_addr == offset_cmd_tx_dat),
                        .sd_clk(sd_clk),
                        .sd_cmd(sd_cmd),
                        .clk(clk),
                        .resetn(resetn));

   // pullup on dat3

   OBUFT buf_dat3_pullup(.O(sd_dat3_pullup),
                         .I(1'b1),
                         .T(dat3_pullup_disabled));

   always @(posedge clk)
     if (!resetn)
       dat3_pullup_disabled <= 1'b0;
     else if (ctrl_disable_dat3_pullup)
       dat3_pullup_disabled <= 1'b1;

   // rca

   generate
      if (rca_enabled)
        begin: rca_cmp
           reg [15:0] rca_reg;

           assign rca_mismatch = cmd_rx_arg[31:16] != rca_reg;
           assign rca_read = rca_reg;

           always @(posedge clk)
             if (~resetn)
               rca_reg <= 0;
             else if (reg_wren && write_addr == offset_rca)
               rca_reg <= wdata[15:0];
        end // block: rca_cmp
      else
        begin: rca_cmp
           assign rca_mismatch = 1'b0;
           assign rca_read = 0;
        end
   endgenerate

endmodule // sd_if_controller
