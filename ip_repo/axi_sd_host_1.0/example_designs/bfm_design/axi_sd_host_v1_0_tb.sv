`timescale 1ns / 1ps
`include "axi_sd_host_v1_0_tb_include.svh"

import axi_vip_pkg::*;
import axi4stream_vip_pkg::*;
import axi_sd_host_v1_0_bfm_1_master_0_0_pkg::*;
import axi_sd_host_v1_0_bfm_1_axi4stream_vip_mst_0_pkg::*;
import axi_sd_host_v1_0_bfm_1_axi4stream_vip_slv_0_pkg::*;

module axi_sd_host_v1_0_tb();
   localparam agent_verbosity = 0;

   logic clock;
   logic resetn;

   axi_sd_host_v1_0_bfm_1_master_0_0_mst_t mst_agent_0;
   axi_sd_host_v1_0_bfm_1_axi4stream_vip_mst_0_mst_t axis_writer;
   axi_sd_host_v1_0_bfm_1_axi4stream_vip_slv_0_slv_t axis_reader;

   wire       sd_clk;
   wire       sd_cmd;
   wire [3:0] sd_dat;
   wire       interrupt;

   pullup pullup_cmd(sd_cmd);
   pullup pullup_dat[3:0](sd_dat);

   // Check clock speed

   time       sd_clock_interval_min, sd_clock_interval_max;
   time       sd_clock_tick_last;
   bit        sd_clock_check_en;

   initial
     sd_clock_check_en = 1'b0;

   always @(sd_clk) begin
      time interval;
      interval = $time - sd_clock_tick_last;
      sd_clock_tick_last = $time;
      if (sd_clock_check_en) begin
         if (interval > sd_clock_interval_max)
           $error("SD clock too slow ", interval);
         if (interval < sd_clock_interval_min)
           $error("SD clock too fast ", interval);
      end
   end // always @ (sd_clk)

   // Write response and read the command written on the line to verify
   // that it is correct.

   bit        writing_resp, writing_dat, reading_cmd;
   logic      cmd_out;
   logic [3:0] dat_out;

   assign sd_cmd = writing_resp ? cmd_out : 1'bz;
   assign sd_dat = writing_dat ? dat_out : 'z;

   initial begin
      writing_resp = 1'b0;
      reading_cmd = 1'b0;
   end

   // The cmd line should be high unless when reading a command or
   // writing a response.
   always @(negedge sd_clk)
     assert(~resetn |
            writing_resp |
            reading_cmd |
            sd_cmd);

   // Allowed states of the DAT line

   enum {
         dat_low_none,
         dat_low_dat0,
         dat_low_any
         } dat_low_allowed;

   initial
     dat_low_allowed = dat_low_none;

   always @(negedge sd_clk) begin : check_dat
      bit good;
      if (~resetn)
        good = 1'b1;
      else
        (* full_case *)
        case (dat_low_allowed)
          dat_low_none:
            good = sd_dat == '1;
          dat_low_dat0:
            good = sd_dat ==? 4'b111x;
          dat_low_any:
            good = 1'b1;
        endcase // case (dat_low_allowed)
      assert(good)
        else $error("DAT line not high when idle");
   end : check_dat

   task automatic write_data_axis(input [7:0] data[]);
      foreach (data[i]) begin : transaction
         axi4stream_transaction trans;
         trans = axis_writer.driver.create_transaction();
         trans.set_data('{data[i]});
         trans.set_last(i + 1 == data.size() || (i + 1) % 512 == 0);
         trans.set_delay(0);
         axis_writer.driver.send(trans);
      end : transaction
   endtask : write_data_axis

   task automatic read_data_line(output [7:0] data[],
                                 // Size in bits
                       input int size,
                       input [4:0] response = 5'b00101);
      reg [1039:0]                 line_data[0:3];
      reg [4159:0]                 line_data_all;

      assume(size % 4096 == 0 || size < 4096);

      data = new[size/8];

      dat_low_allowed = dat_low_any;

      for (int blki = 0; blki * 4096 < size; blki++) begin : read_block
         line_data = '{default: '0};

         // Look for the start bit
         forever @(negedge sd_clk)
           if (sd_dat != '1) begin
              if (sd_dat != '0)
                $error("Start bits on DAT lines are not synchronous");
              break;
           end

         // Read the block and CRC
         repeat((size % 4096 == 0) ? 1040 : size / 4 + 16) @(negedge sd_clk)
           foreach (line_data[i])
             line_data[i] = {line_data[i], sd_dat[i]};

         // Check CRC
         foreach (line_data[i])
           assert(crc_dat#(.data_size(1040))::crc(line_data[i]) == 0)
             else $error("CRC error on DAT line", i);

         // Check end bit
         @(negedge sd_clk)
           assert(sd_dat == '1)
             else $error("End bit missing on DAT");

         foreach (line_data_all[i])
           line_data_all[i] = line_data[i&3][i>>2];
         // Reverse the byte order and skip the CRC bits.
         for (int i = 0, j = (size % 4096 == 0 ? 512 : size / 8); j-- != 0; i++)
           data[blki*512+i] = line_data_all[j*8+64+:8];

         // Write response
         @(negedge sd_clk);
         foreach (response[i])
           @(negedge sd_clk) begin
              dat_out <= {3'h7, response[i]};
              writing_dat <= 1'b1;
           end
         @(negedge sd_clk) begin
            writing_dat <= 1'b0;
            dat_out <= '1;
         end
      end : read_block

      dat_low_allowed = dat_low_none;
   endtask : read_data_line

   // The response written on the line
   logic [135:0] resp_written;
   // The command read from the line
   logic [47:0]  cmd_read;

   task automatic read_cmd;
      reading_cmd = 1'b1;
      cmd_read = '1;
      while (cmd_read[47] == 1'b1) begin
         @(negedge sd_clk)
           cmd_read <= {cmd_read, sd_cmd};
      end
      reading_cmd = 1'b0;
   endtask : read_cmd

   virtual class write_resp_raw #(parameter length = 48);
      static task automatic write_resp_raw(input [length-1:0] resp);
         $display($time, , "write resp %H", resp);
         resp_written = resp;
         repeat(8) @(negedge sd_clk);
         writing_resp <= 1'b1;
         cmd_out <= 1'b1;
         foreach (resp[i])
           @(negedge sd_clk)
             cmd_out <= resp[i];
         @(negedge sd_clk)
           cmd_out <= 1'b1;
         @(negedge sd_clk)
           writing_resp <= 1'b0;
         repeat(8) @(negedge sd_clk);
      endtask : write_resp_raw
   endclass // write_resp_raw

   virtual class crc #(parameter width = 7,
                       parameter bit [width-1:0] polynomial = 7'h9,
                       parameter data_size = 40);
      static function automatic [width-1:0] crc(input [data_size-1:0] data);
         crc = 0;
         foreach (data[i])
           crc = (crc << 1) ^ (polynomial * (crc[width-1] != data[i]));
      endfunction : crc
   endclass : crc

   virtual class crc_dat #(parameter data_size = 1024)
      extends crc #(.width(16),
                    .polynomial(16'h1021),
                    .data_size(data_size));
   endclass : crc_dat

   task automatic write_resp(input [5:0] index,
                   input [31:0] arg = 0);
      reg [47:0]                resp_raw;
      reg [6:0]                 checksum;
      integer                   i;
      resp_raw[47:8] = {2'b00, index, arg};
      resp_raw[7:0] = {crc#()::crc(resp_raw[47:8]), 1'b1};
      write_resp_raw#()::write_resp_raw(resp_raw);
   endtask : write_resp

   task automatic send_cmd(input [31:0] index_rest,
                 input [31:0] arg);
      $display($time, , "Send command", , index_rest, , arg);
      fork
         begin
            write_reg(11, arg);
            write_reg(12, index_rest);
         end
         read_cmd();
      join
      assert(cmd_read[47:8] == {2'b01, index_rest[5:0], arg} &&
             cmd_read[7:0] == {crc#()::crc(cmd_read[47:8]), 1'b1})
        else $error("Command read from line does not match expected");
      repeat(8) @(negedge sd_clk);
   endtask : send_cmd

   task automatic write_reg(input int index,
                  input [31:0] data);
      xil_axi_resp_t resp;
      mst_agent_0.AXI4LITE_WRITE_BURST(.addr(index << 2),
                                       .prot(2'b00),
                                       .data(data),
                                       .resp(resp));
      assert(resp == XIL_AXI_RESP_OKAY);
   endtask : write_reg

   task automatic read_reg(output [31:0] data,
                 input int index);
      xil_axi_resp_t resp;
      mst_agent_0.AXI4LITE_READ_BURST(.addr(index << 2),
                                      .prot(2'b00),
                                      .data(data),
                                      .resp(resp));
      assert(resp == XIL_AXI_RESP_OKAY);
   endtask : read_reg

   logic [31:0]            reg_status, reg_resp[4];

   task automatic read_resp_reg(input isr2 = 1'b0);
      time timeout;
      reg [31:0] reg_status_1;

      $display($time, , "Read response from register");

      // Wait until the command done bit is set
      timeout = $time + 1us;
      forever begin
         read_reg(reg_status, 4);
         if (reg_status[0])
           break;
         if ($time > timeout)
           $error("Timed out waiting for command done bit");
      end

      // Check the command done bit is cleared
      read_reg(reg_status_1, 4);
      assert(~reg_status_1[0])
        else $error("Command done bit not cleared on read");

      // Read the response only when the status bits indicate it is
      // renewed.  Else x bits may be read and the AXI protocol checker
      // does not like it.
      if (~reg_status[5]) begin
         for (int i = 0; i < (isr2 ? 4 : 2); i++)
           read_reg(reg_resp[i], i);
         if (!(isr2 ? 128'({>>{reg_resp}}) == resp_written[135:8] :
               {reg_resp[0][7:0], reg_resp[1]} == resp_written[47:8]))
           $error("Response in registers does not match response sent");
      end
   endtask : read_resp_reg

   task automatic verify_dat_status(input done_expected,
                                    input [3:0] error_expected = 4'h0);
      reg [31:0] reg_status_1;

      read_reg(reg_status, 4);
      assert(reg_status[12:9] == error_expected)
        else $error("Got error from the DAT module: ", reg_status[12:9]);
      assert(reg_status[1] == done_expected && reg_status[7] == done_expected)
        else $error("DAT done status differs from expected");

      read_reg(reg_status_1, 4);
      assert(~reg_status_1[1])
        else $error("DAT done status interrupt bit not cleared on read");
   endtask : verify_dat_status

   task automatic test_data_write(input [7:0] data[], input done);
      reg [7:0] data_read[];
      reg [31:0] reg_status_1;

      $write($time, , "Testing data write", );
      foreach (data[i])
        $writeh(data[i]);
      $display();

      fork
         write_data_axis(data);
         read_data_line(data_read, 8 * data.size());
      join

      $write($time, , "Got data", );
      foreach (data_read[i])
        $writeh(data_read[i]);
      $display();

      #0 assert(data_read == data)
        else
          $error("Data written via AXI Stream does not match data read on DAT lines");

      // Add some delay for the DAT unit to settle.
      repeat(64) @(negedge sd_clk);

      verify_dat_status(done);
   endtask : test_data_write

   virtual class write_data_block_line #(parameter data_size = 512);
      static task automatic write(input [7:0] data[data_size],
                                  input inject_error = 1'b0);
         reg [15:0] crc[4];
         reg [0:2*data_size+15] line_data[4];

         check_block_size: assume(data_size <= 512);

         $write($time, , "Write block", );
         foreach (data[i])
           $writeh(data[i]);
         $display();

         for (int i = 0; i < 8 * data_size; i++)
           line_data[i&3][i>>2] = data[i>>3][4^(i&7)];
         for (int i = 0; i < 4; i++) begin : get_crc
            logic [15:0] crc_good, crc_actual;
            crc_good = crc_dat#(.data_size(2*data_size))::
                       crc(line_data[i][0+:2*data_size]);
            if (inject_error)
              assert(std::randomize(crc_actual)
                     with { crc_actual != crc_good; });
            else
              crc_actual = crc_good;
            line_data[i][2*data_size+:16] = crc_actual;
         end : get_crc

         @(negedge sd_clk) begin
            writing_dat <= 1'b1;
            dat_out <= '0;
         end

         for (int i = 0; i < 2 * data_size + 16; i++) @(negedge sd_clk)
           foreach (dat_out[j])
             dat_out[j] <= line_data[j][i];
         @(negedge sd_clk)
           dat_out <= '1;

         @(negedge sd_clk) begin
            writing_dat <= 1'b0;
            dat_out <= '1;
         end

         repeat(2) @(negedge sd_clk);
      endtask : write
   endclass : write_data_block_line

   virtual class test_data_read #(parameter data_size = 512);
      local static task automatic write_data(input [7:0] data[data_size],
                                             input inject_error);
         if (data_size > 512)
           for (int i = 0; i < data_size; i += 512)
             write_data_block_line#(512)::write(data[i+:512], inject_error);
         else
           write_data_block_line#(data_size)::write(data, inject_error);
      endtask : write_data

      static task automatic test_data_read(input [7:0] data[data_size],
                                           input done,
                                           input inject_error = 1'b0);
         reg [7:0] data_read[data_size];
         int data_read_cnt;

         $write($time, , "Testing data read", );
         foreach (data[i])
           $writeh(data[i]);
         $display();

         dat_low_allowed = dat_low_any;

         data_read_cnt = 0;

         repeat(64) @(negedge sd_clk);

         // Drain any transactions in the queue
         begin : drain_transactions
            axi4stream_monitor_transaction trans;
            while (axis_reader.monitor.item_collected_port.get_item_cnt())
              axis_reader.monitor.item_collected_port.get(trans);
         end

         // Read data

         fork
            begin : read
               for (data_read_cnt = 0; data_read_cnt < data_size;
                    data_read_cnt++) begin : read_tran
                  logic [7:0] tran_data[1];
                  axi4stream_monitor_transaction trans;

                  axis_reader.monitor.item_collected_port.get(trans);
                  // Check tlast
                  assert(trans.get_last() == ((data_read_cnt + 1) % 512 == 0 ||
                                              data_read_cnt + 1 == data_size))
                    else $error("TLAST differs from expected");
                  // Read
                  trans.get_data(tran_data);
                  data_read[data_read_cnt] = tran_data[0];
               end : read_tran
            end : read
            forever begin : send_tready
               axi4stream_ready_gen ready_gen;
               ready_gen = axis_reader.driver.create_ready("ready gen");
               ready_gen.set_ready_policy(XIL_AXI4STREAM_READY_GEN_NO_BACKPRESSURE);
               axis_reader.driver.send_tready(ready_gen);
            end : send_tready
         join_none

         // Write data

         write_data(data, inject_error);

         // Wait till no transfer is available before quitting.  64
         // clocks without a data transfer is used as a sign for no more
         // data.

         repeat(64) @(negedge sd_clk);
         forever begin : wait_for_tran
            int cnt1 = data_read_cnt;
            repeat(64) @(posedge clock)
              if (data_read_cnt != cnt1)
                disable wait_for_tran;
            break;
         end : wait_for_tran
         disable fork;

         dat_low_allowed = dat_low_none;

         $write($time, , "Got data", );
         for (int i = 0; i < data_read_cnt; i++)
           $writeh(data_read[i]);
         $display();

         // Check the data
         if (!inject_error) begin : check_data
            assert(data_read_cnt == data_size)
              else $error("Timed out reading data");
            assert(data_read == data)
              else $error("Data read from AXI-Stream does not match data written to SD bus");
         end : check_data

         repeat(64) @(negedge sd_clk);

         verify_dat_status(done, inject_error ? 4'h8 : 4'h0);
      endtask : test_data_read
   endclass : test_data_read

   `BD_WRAPPER DUT(
                   .SD_CARD_cmd(sd_cmd),
                   .SD_CARD_dat(sd_dat),
                   .SD_CARD_clk(sd_clk),
                   .ARESETN(resetn),
                   .ACLK(clock),
                   .interrupt(interrupt)
                   );

   // Set up

   initial begin
      $timeformat (-12, 1, " ps", 1);

      mst_agent_0 = new("master vip agent",DUT.`BD_INST_NAME.master_0.inst.IF);
      mst_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
      mst_agent_0.set_agent_tag("Master VIP");
      mst_agent_0.set_verbosity(agent_verbosity);
      mst_agent_0.start_master();

      axis_writer = new("Data writer",
                        DUT.`BD_INST_NAME.axi4stream_vip_mst.inst.IF);
      axis_writer.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);
      axis_writer.set_agent_tag("Data writer");
      axis_writer.set_verbosity(agent_verbosity);
      axis_writer.start_master();

      axis_reader = new("Data reader",
                        DUT.`BD_INST_NAME.axi4stream_vip_slv.inst.IF);
      axis_reader.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);
      axis_reader.set_agent_tag("Data reader");
      axis_reader.set_verbosity(agent_verbosity);
      axis_reader.start_slave();
   end // initial begin

   initial begin
      resetn <= 1'b0;
      clock <= 1'b0;
      #200ns;
      resetn <= 1'b1;
   end

   always #5 clock <= ~clock;

   initial begin : tests
      repeat(128) @(posedge clock);

      begin : test_clock
         localparam struct {
            time interval_min;
            time interval_max;
         } intervals[] = '{'{1250ns, 5us}, '{20ns, 40ns}};

         $display("Testing clock generation");

         for (int i = 0; i < 3; i++) begin
            $display($time, , "Testing clock speed", i);
            sd_clock_check_en = 1'b0;
            write_reg(8, i << 2);
            #20us;
            if (i == 0) begin
               // Clock is stopped
               #100us;
            end
            else begin
               sd_clock_check_en = 1'b1;
               repeat(16) @(negedge sd_clk);
            end
         end
      end : test_clock

      // Test sending commands and receiving responses

      repeat(16) begin : test_commands
         bit [31:0] resp_arg;
         bit [127:0] resp_r2;
         bit [6:0]   resp_crc;

         $display("Testing commands");

         assert(randomize(resp_arg));

         // Command without response
         send_cmd(0, 0);
         repeat(256) @(negedge sd_clk);
         read_resp_reg();
         assert(reg_status[5])
           else $error("Response timeout bit not set");

         // Command with response
         send_cmd(13, 32'h0000aaaa);
         write_resp(13, resp_arg);
         read_resp_reg();
         assert(reg_status[5:2] == 4'b0000);

         // Invalid CRC
         send_cmd(13, 32'h0000aaaa);
         assert(randomize(resp_crc)
                with { resp_crc != crc#()::crc(resp_arg); });
         write_resp_raw#()::write_resp_raw({2'h0, 6'd13, resp_arg, resp_crc,
                                            1'b1});
         read_resp_reg();
         assert(reg_status[5:2] == 4'b0010);

         // Invalid end bit
         send_cmd(13, 32'h0000aaaa);
         write_resp_raw#()::write_resp_raw({2'h0, 6'd13, resp_arg, resp_crc,
                                            1'b0});
         read_resp_reg();
         assert(reg_status[5:2] ==? 4'b01x0);

         // Invalid index
         send_cmd(13, 32'h0000aaaa);
         write_resp(14, resp_arg);
         read_resp_reg();
         assert(reg_status[5:2] == 4'b0001);

         // R2
         resp_r2[127:120] = 8'h3f;
         assert(randomize(resp_r2[119:0]));

         $display("Testing commands with response R2");

         send_cmd('h100 | 2, 0);
         write_resp_raw#(136)::write_resp_raw
           ({resp_r2, crc#(.data_size(120))::crc(resp_r2[119:0]), 1'b1});
         read_resp_reg(.isr2(1'b1));
         assert(reg_status[5:2] == '0);

         // Invalid CRC
         send_cmd('h100 | 2, 0);
         assert(randomize(resp_crc)
                with { resp_crc !=
                       crc#(.data_size(120))::crc(resp_r2[119:0]); });
         write_resp_raw#(136)::write_resp_raw
           ({resp_r2, resp_crc, 1'b1});
         read_resp_reg(.isr2(1'b1));
         assert(reg_status[5:2] == 4'b0010);

         repeat(64) @(negedge sd_clk);
      end : test_commands

      // Disable clock checking because it may be stopped when the read
      // buffer is full.
      sd_clock_check_en = 1'b0;

      // Test reading and writing data

      repeat(2) begin : test_dat
         logic [7:0] data[2048];

         $display("Testing data write");

         assert(randomize(data));

         // Clear errors
         send_cmd(13, 32'h0000aaaa);
         write_resp(13, 0);
         read_resp_reg();
         assert(reg_status[5:2] == 4'b0000);

         // Write a 32-bit block
         write_reg(9, 32'h35);
         test_data_write(data[0:3], 1'b1);

         // Write 4 blocks
         write_reg(9, 32'h1);
         test_data_write(data, 1'b0);

         // It should stop when the block count is reached
         write_reg(10, 32'd4);
         write_reg(9, 32'h9);
         test_data_write(data, 1'b1);

         // Send no response token, and make sure it's caught
         write_reg(9, 32'h1);
         dat_low_allowed = dat_low_any;
         write_data_axis(data[0:511]);
         repeat(1088) @(negedge sd_clk);
         dat_low_allowed = dat_low_none;
         read_reg(reg_status, 4);
         assert(reg_status[12:9] == 4 && reg_status[7] && reg_status[1])
           else $error("DAT error code is not response timeout");

         $display("Testing data read");

         // Read a 32-bit block
         write_reg(9, 32'h37);
         test_data_read#(4)::test_data_read(data[0:3], 1'b1);

         // Read 4 blocks
         write_reg(9, 32'h3);
         test_data_read#(2048)::test_data_read(data, 1'b0);

         // Test with block count
         write_reg(10, 32'd4);
         write_reg(9, 32'hb);
         test_data_read#(2048)::test_data_read(data, 1'b1);

         // Make sure a CRC error is caught
         write_reg(9, 32'h3);
         test_data_read#(512)::test_data_read(.data(data[0:511]),
                                              .done(1'b1),
                                              .inject_error(1'b1));
      end : test_dat

      repeat(2000) @(negedge sd_clk);

      $finish;
   end : tests

endmodule // axi_sd_host_v1_0_tb
