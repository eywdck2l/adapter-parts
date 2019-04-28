`timescale 1ns / 1ps

`define test_vector_high 22

module test_cmd_if;

   reg [47:0] cmd_to_send_all[0:`test_vector_high];

   wire       read_ready, read_crc_err, more_data_towrite, write_data_ack,
              ncr_timeout;
   wire [47:0] data_read;

   reg         write_strb, write_no_crc_sig;
   reg [7:0]   write_bits;
   reg [5:0]   write_delay;
   reg [31:0]  data_towrite;

   reg         resetn;

   wire        sd_cmd;
   pullup(sd_cmd);

   reg [2:0]   clk_div;
   wire        clk = clk_div[0];
   wire        sd_clk = clk_div[2];

   sd_cmd_if receiver(.read_ready(read_ready),
                      .read_crc_err(read_crc_err),
                      .data_read(data_read),
                      .more_data_towrite(),
                      .write_data_ack(),
                      .ncr_timeout(ncr_timeout),
                      .write_strb(1'b0),
                      .write_no_crc_sig(1'b0),
                      .write_bits(8'h0),
                      .write_delay(6'h0),
                      .data_towrite(32'h0),
                      .sd_clk(sd_clk),
                      .sd_cmd(sd_cmd),
                      .clk(clk),
                      .resetn(resetn));

   sd_cmd_if sender(.read_ready(),
                    .read_crc_err(),
                    .data_read(),
                    .more_data_towrite(more_data_towrite),
                    .write_data_ack(write_data_ack),
                    .ncr_timeout(),
                    .write_strb(write_strb),
                    .write_no_crc_sig(write_no_crc_sig),
                    .write_bits(write_bits),
                    .write_delay(write_delay),
                    .data_towrite(data_towrite),
                    .sd_clk(sd_clk),
                    .sd_cmd(sd_cmd),
                    .clk(clk),
                    .resetn(resetn));

   always
     #1 clk_div <= clk_div + 1;

   integer     crc_case, i;
   reg [47:0]  cmd_to_send;

   initial
     begin
        $readmemh("test-cmd-if-commands.tv", cmd_to_send_all);

        clk_div <= 0;
        resetn <= 1'b0;
        write_strb <= 1'b0;
        write_no_crc_sig <= 1'b0;
        write_bits <= 0;
        write_delay <= 0;
        data_towrite <= 0;

        $dumpvars();

        #16 resetn <= 1'b1;

        repeat (64) @(negedge sd_clk);

        for (crc_case = 0; crc_case < 2; crc_case = crc_case + 1)
          begin
             if (crc_case == 0)
               begin
                  // crc computed in sender
                  write_no_crc_sig = 1'b0;
                  write_bits <= 40;
               end
             else
               begin
                  // crc provided
                  write_no_crc_sig = 1'b1;
                  write_bits <= 48;
               end // else: !if(crc_case == 0)

             for (i = 0; i <= `test_vector_high; i = i + 1)
               begin
                  cmd_to_send = cmd_to_send_all[i];

                  @(posedge clk)
                    begin
                       data_towrite <= write_no_crc_sig ?
                                       {cmd_to_send[47:32], 16'h0} :
                                       {cmd_to_send[47:40], 24'h0};
                       write_strb <= 1'b1;
                    end

                  @(posedge clk)
                    write_strb <= 1'b0;

                  repeat (7) @(negedge sd_clk);

                  data_towrite <= write_no_crc_sig ?
                                  cmd_to_send[31:0] :
                                  cmd_to_send[39:8];

                  repeat (128) @(negedge sd_clk);
               end // for (i = 0; i <= `test_vector_high; i = i + 1)
          end // for (crc_case = 0; crc_case < 2; crc_case = crc_case + 1)
        $finish;
     end // initial begin

   always @(posedge clk)
     if (read_ready)
       $display($time, , "read crc %x data %012x", read_crc_err, data_read);

endmodule // test_cmd_if
