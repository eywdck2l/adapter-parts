`timescale 1ns / 1ps

module test_command_responding;
   wire        sd_clk;
   wire        sd_cmd;
   wire        sd_cmd_o, sd_cmd_t;
   pullup(sd_cmd);
   assign sd_cmd = sd_cmd_t ? 1'bz : sd_cmd_o;

   wire        clk;
   reg         resetn;

   wire [31:0] card_status_out;

   device #(.support_cmd((1 << 0) |
                         (1 << 2) |
                         (1 << 3) |
                         (1 << 4) |
                         (1 << 6) |
                         (1 << 7) |
                         (1 << 8) |
                         (1 << 9) |
                         (1 << 10) |
                         (1 << 12) |
                         (1 << 13) |
                         (1 << 15) |
                         (1 << 16) |
                         (1 << 17) |
                         (1 << 18) |
                         (1 << 55) |
                         (1 << 56)),
            .support_acmd((1 << 6) |
                          (1 << 13) |
                          (1 << 41) |
                          (1 << 42) |
                          (1 << 51)))
   dut(.csr_set_bits(0),
       .csr_clr_bits(0),
       .cid(128'h2f6ee8e462fdf88d2964704ba1abf97f),
       .csd(128'hd99cb163ef5d3108ba6612fd909660ed),
       .ocr_high_byte(8'hc0),
       .card_status_out,
       .sd_clk_i(sd_clk),
       .sd_cmd_i(sd_cmd),
       .sd_cmd_o,
       .sd_cmd_t,
       .clk,
       .resetn_in(resetn),
       .sd_dat_i('1));

   reg [3:0]   clk_div;

   always
     #1 clk_div <= clk_div + 1;

   assign clk = clk_div[0];

   assign sd_clk = clk_div[3];

   localparam test_vector_cnt = 17;

   reg [47:0]  cmd_to_send_all[0:test_vector_cnt - 1];
   reg [47:0]  cmd_to_send;
   integer     i;

   reg         writing_cmd, cmd_out;

   assign sd_cmd = writing_cmd ? cmd_out : 1'bz;

   initial begin
      $readmemh("test-command-responding-commands.tv", cmd_to_send_all);

      clk_div = 0;
      resetn = 1'b0;
      writing_cmd = 1'b0;
      cmd_out = 1'b1;

      #32 resetn = 1'b1;

      for (i = 0; i < test_vector_cnt; i = i + 1) begin
         cmd_to_send = cmd_to_send_all[i];

         repeat(8) @(negedge sd_clk);

         writing_cmd = 1'b1;

         repeat (48) @(negedge sd_clk) begin
            cmd_out <= cmd_to_send[47];
            cmd_to_send <= {cmd_to_send[46:0], 1'b1};
         end

         cmd_to_send = 1'b1;
         writing_cmd = 1'b0;

         repeat(256) @(negedge sd_clk);
      end // for (i = 0; i < test_vector_cnt; i = i + 1)

      $finish;
   end // initial begin
endmodule // test_command_responding
