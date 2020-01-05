`timescale 1ns / 1ps

`include "axi_sd_card_v1_0_tb_include.svh"

import axi_vip_pkg::*;
import axi4stream_vip_pkg::*;
import axi_sd_card_v1_0_bfm_1_master_0_0_pkg::*;
import axi_sd_card_v1_0_bfm_1_axi4stream_vip_mst_0_pkg::*;
import axi_sd_card_v1_0_bfm_1_axi4stream_vip_slv_0_pkg::*;

module axi_sd_card_v1_0_tb();

   localparam agent_verbosity = 0;

   logic clock;
   logic sd_clk;
   logic resetn;

   axi_sd_card_v1_0_bfm_1_master_0_0_mst_t mst_agent_0;
   axi_sd_card_v1_0_bfm_1_axi4stream_vip_mst_0_mst_t axis_writer;
   axi_sd_card_v1_0_bfm_1_axi4stream_vip_slv_0_slv_t axis_reader;

   wire  sd_cmd;
   wire [3:0] sd_dat;
   wire       sd_dat3_pullup;
   wire       interrupt;

   pullup pullup_cmd(sd_cmd);
   pullup pullup_dat[3:0](sd_dat);

   `BD_WRAPPER DUT(
                   .SD_CARD_cmd(sd_cmd),
                   .SD_CARD_dat(sd_dat),
                   .SD_CARD_clk(sd_clk),
                   .sd_dat3_pullup(sd_dat3_pullup),
                   .ARESETN(resetn),
                   .ACLK(clock),
                   .interrupt(interrupt)
                   );

   // Clock and reset

   bit sd_clock_slow;

   initial begin
      resetn <= 1'b0;
      clock <= 1'b0;
      sd_clk <= 1'b1;
      sd_clock_slow <= 1'b1;
      #200ns;
      resetn <= 1'b1;
   end

   always #5 clock <= ~clock;

   always
      if (sd_clock_slow)
        #1250 sd_clk <= ~sd_clk;
      else
        #20 sd_clk <= ~sd_clk;

   // Verify the DAT pullup works correctly

   bit dat3_pullup_check, dat3_pullup_enabled;

   initial begin
      dat3_pullup_check = 1'b0;
      dat3_pullup_enabled = 1'b1;
   end

   check_dat_pullup:
     assert property(@(negedge sd_clk)
                     (sd_dat3_pullup === 1'b1 &&
                      (!dat3_pullup_check || dat3_pullup_enabled)) ||
                     (sd_dat3_pullup === 1'bz &&
                      (!dat3_pullup_check || !dat3_pullup_enabled)));

   // Write command and read the response written to the line

   bit        writing_cmd, writing_dat, cmd_low_allowed;
   logic      cmd_out;
   logic [3:0] dat_out;

   assign sd_cmd = writing_cmd ? cmd_out : 1'bz;
   assign sd_dat = writing_dat ? dat_out : 'z;

   initial begin
      writing_cmd = 1'b0;
      writing_dat = 1'b0;
      cmd_low_allowed = 1'b0;
   end

   // The cmd line should be high unless when reading a command or
   // writing a response.
   check_sd_cmd_high:
     assert property(@(negedge sd_clk)
                     ~resetn | cmd_low_allowed | sd_cmd);

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

   check_dat_x:
     assert property(@(negedge sd_clk) !$isunknown(sd_dat));

   check_cmd_x:
     assert property(@(negedge sd_clk) !$isunknown(sd_cmd));

   bit    dat_width_4;
   initial
     dat_width_4 = 1'b0;

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
                                 input int size);
      reg [4111:0]                         line_data[0:3];

      assume(size % 4096 == 0 || size < 4096);

      data = new[size/8];

      for (int blki = 0; blki * 4096 < size; blki++) begin : read_block
         line_data = '{default: '0};

         // Look for the start bit
         forever @(negedge sd_clk)
           if (sd_dat != '1) begin
              if (sd_dat != (dat_width_4 ? 4'h0 : 4'he))
                $error("Start bits on DAT lines differ from expected");
              break;
           end

         // Read the block and CRC
         repeat((((size % 4096 == 0) ? 4096 : size) >> (dat_width_4 ? 2 : 0)) +
                16)
           @(negedge sd_clk)
             foreach (line_data[i])
               line_data[i] = {line_data[i], sd_dat[i]};

         // Check CRC
         if (dat_width_4) begin : check_crc_4
            foreach (line_data[i])
              assert(crc_dat#(.data_size(1040))::crc(line_data[i][1039:0]) == 0)
                else $error("CRC error on DAT line", i);
         end
         else begin : check_crc_1
            assert(crc_dat#(.data_size(4112))::crc(line_data[0]) == 0)
              else $error("CRC error on DAT line");
         end

         // Check end bit
         @(negedge sd_clk)
           assert(sd_dat == '1)
             else $error("End bit missing on DAT");

         if (dat_width_4) begin : order_4
            logic [4159:0] line_data_all;
            foreach (line_data_all[i])
              line_data_all[i] = line_data[i&3][i>>2];
            // Reverse the byte order and skip the CRC bits.
            for (int i = 0, j = (size % 4096 == 0 ? 512 : size / 8); j-- != 0;
                 i++)
              data[blki*512+i] = line_data_all[j*8+64+:8];
         end
         else
           foreach (data[i])
             data[blki*512+i] = line_data[0][(size % 4096 == 0 ?
                                              4096 : size) - 8 * i + 8 +: 8];
      end : read_block
   endtask : read_data_line

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

   typedef struct {
      bit         no_response;
      int         delay;
      logic [135:0] data;
   } resp_t;

   resp_t resp;

   task automatic write_cmd_raw(output resp_t resp,
                                input [47:0] cmd,
                                input resp_is_r2);
      $display($time, , "Write cmd %H", cmd);
      repeat(8) @(negedge sd_clk);
      writing_cmd <= 1'b1;
      cmd_out <= 1'b1;
      foreach (cmd[i])
        @(negedge sd_clk)
          cmd_out <= cmd[i];
      @(negedge sd_clk)
        cmd_out <= 1'b1;
      @(negedge sd_clk)
        writing_cmd <= 1'b0;

      resp = '{default: 0};

      begin : wait_for_resp
         for (resp.delay = 1; resp.delay < 128; resp.delay++) @(negedge sd_clk)
           if (sd_cmd == 1'b0)
             disable wait_for_resp;
         resp.no_response = 1'b1;
         return;
      end

      for (int i = resp_is_r2 ? 135 : 47; i--; ) @(negedge sd_clk)
        resp.data[i] = sd_cmd;

      @(negedge sd_clk);
   endtask : write_cmd_raw

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

   logic [31:0]                      reg_status;
   logic [31:0]                      reg_saved[9:16];

   task automatic read_status;
      read_reg(reg_status, 8);
      foreach (reg_saved[i])
        read_reg(reg_saved[i], i);
   endtask : read_status

   logic [15:0] rca;
   initial
     rca = 0;

   localparam bit [31:0] card_size = 32'hebe88701;

   typedef struct {
      bit [31:0]  status_may_change;
      bit [31:0]  status_high;
      bit         reg_may_change[9:16];
   } status_check_spec_t;

   task automatic check_status(input [31:0] reg_status_1,
                               input [31:0] reg_saved_1[9:16],
                               input status_check_spec_t spec);
      reg [31:0]                           reg_status_2;

      read_status();

      #0;

      assert(((reg_status ^ (reg_status_1 & ~32'h022f0000)) &
              ~spec.status_may_change) == 0)
        else begin
           $displayh("Status", , reg_status_1, , reg_status);
           $error("Unexpected change in status");
        end
      assert((reg_status & spec.status_high) == spec.status_high)
        else $error("Bits in status expected to be set are not set");
      foreach (spec.reg_may_change[i])
        if (!spec.reg_may_change[i])
          assert(reg_saved[i] == reg_saved_1[i])
            else $error("Unexpected change in saved status register ", i);

      read_reg(reg_status_2, 8);

      assert((reg_status_2 & 32'h022f0000) == 0)
        else $error("Status bits not cleared on read");
   endtask : check_status

   task automatic test_command(input [5:0] index,
                               input [31:0] arg,
                               input acmd = 1'b0,
                               input saved = 1'b0,
                               input inject_crc_error = 1'b0,
                               input no_response = 1'b0,
                               input resp_is_r2 = 1'b0,
                               input allow_resp_bad_crc = 1'b0,
                               input allow_resp_bad_index = 1'b0,
                               input status_check_spec_t
                               check_spec = '{default: '0},
                               input skip_status_check = 1'b0);

      logic [47:0]                   cmd_raw;
      logic [6:0]                    crc_good;

      logic [31:0]                   reg_status_1, reg_saved_1[9:16];

      check_spec.status_may_change |= 32'h0004ff80;
      check_spec.status_high |= 32'h00040000;
      check_spec.reg_may_change[11] = 1'b1;
      check_spec.reg_may_change[9] = 1'b1;
      if (saved) begin
         check_spec.status_may_change |= 32'h0001007f;
         check_spec.status_high |= 32'h00010000;
         check_spec.reg_may_change[10] = 1'b1;
      end

      if (acmd && index != 55)
        test_command(55, {rca, 16'h0});

      cmd_raw = {2'b01, index, arg, 8'h01};
      crc_good = crc#()::crc(cmd_raw[47:8]);
      if (inject_crc_error)
        assert(randomize(cmd_raw[7:1])
               with { cmd_raw[7:1] != crc_good; });
      else
        cmd_raw[7:1] = crc_good;

      // Clear any latched bits in status

      read_status();
      reg_status_1 = reg_status;
      reg_saved_1 = reg_saved;

      cmd_low_allowed = 1'b1;

      write_cmd_raw(resp, cmd_raw, resp_is_r2);

      cmd_low_allowed = 1'b0;

      if (!no_response) begin
         $write($time, , "Got response", );
         if (resp_is_r2)
           $writeh(resp.data,);
         else
           $writeh(resp.data[47:0], );
         $display("delay", , resp.delay);
      end

      if (no_response) begin : check_no_response
         assert(resp.no_response)
           else $error("Got response when no response is exepected");
      end
      else begin : check_response
         if (resp.no_response)
           $error("Got no response");
         else begin : check_response
            if (!allow_resp_bad_crc)
              assert((resp_is_r2 ?
                      crc#(.data_size(127))::crc(resp.data[127:1]) :
                      crc#(.data_size(47))::crc(resp.data[47:1])) == 0)
                else $error("CRC error in response");
            assert(resp.data[0] == 1'b1)
              else $error("Response end bit is 0");
            if (!allow_resp_bad_index && !resp_is_r2)
              assert(resp.data[45:40] == index)
                else $error("Bad index in response");
            assert(resp.data[(resp_is_r2 ? 134 : 46) +: 2] == 2'b00)
              else $error("Bad response start");
         end // block: check_response
      end // block: check_response

      // Check registers
      if (!skip_status_check)
        check_status(reg_status_1, reg_saved_1, check_spec);

      if (!no_response) begin : check_registers
         assert(reg_status[18] == 1'b1 &&
                reg_status[15:14] == 2'b10 &&
                (index == 55 || reg_status[13] == acmd) &&
                reg_status[12:7] == index &&
                reg_saved[11] == arg)
           else $error("Command status in registers differs from sent");

         if (saved) begin
            assert(reg_status[16] == 1'b1 &&
                   reg_status[6] == acmd &&
                   reg_status[5:0] == index &&
                   reg_saved[10] == arg)
              else $error("Saved command status in registers differs from sent");
         end
      end // block: check_registers
   endtask : test_command

   task automatic test_data_write(input [7:0] data[],
                                  input [28:25] status_expected);
      reg [7:0] data_read[];
      reg [31:0] reg_status_1, reg_saved_1[9:16];

      $write($time, , "Testing data write", );
      foreach (data[i])
        $writeh(data[i]);
      $display();

      read_status();
      reg_status_1 = reg_status;
      reg_saved_1 = reg_saved;

      fork
         write_data_axis(data);

         read_data_line(data_read, 8 * data.size());

         begin : start_write
            // Add some delay so we know writing doesn't start until the
            // start writing signal is received.  We can't wait until
            // the input tvalid is high because before the start writing
            // is received, the data in FIFO is held in reset which
            // prevents tvalid to be high.
            repeat(128) @(posedge clock);
            repeat(64) @(negedge sd_clk);
            dat_low_allowed = dat_width_4 ? dat_low_any : dat_low_dat0;
            read_status();
            write_reg(20, 32'h2);
         end
      join

      dat_low_allowed = dat_low_none;

      $write($time, , "Got data", );
      foreach (data_read[i])
        $writeh(data_read[i]);
      $display();

      check_status(reg_status_1, reg_saved_1,
                   '{
                     status_may_change: 32'h1e000000,
                     reg_may_change: '{9: 1'b1, 16: 1'b1, default: 1'b0},
                     default: '0
                     });

      #0 assert(data_read == data)
        else
          $error("Data written via AXI Stream does not match data read on DAT lines");

      assert(reg_status[28:25] ==? status_expected)
        else $error("DAT module status differs from expected");
   endtask : test_data_write

   virtual class write_data_block_line #(parameter data_size = 512);
      static task automatic write(// The response token is from the
                                  // first bit after the end bit.
                                  // Normally it should be 7'b1100101.
                                  output [6:0] response_token,
                                  input [7:0] data[data_size],
                                  input inject_error = 1'b0);

         check_block_size: assume(data_size <= 512);

         dat_low_allowed = dat_low_dat0;

         $display($time, , "Wait until not busy");
         @(negedge sd_clk iff sd_dat[0]);

         $write($time, , "Write block", );
         foreach (data[i])
           $writeh(data[i]);
         $display();

         // Write start bit

         @(negedge sd_clk) begin
            writing_dat <= 1'b1;
            dat_out <= dat_width_4 ? 4'b0000 : 4'b1110;
         end

         // Write data and CRC

         if (dat_width_4) begin : write_4
            reg [15:0] crc[4];
            reg [0:2*data_size+15] line_data[4];

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

            dat_low_allowed = dat_low_any;

            for (int i = 0; i < 2 * data_size + 16; i++) @(negedge sd_clk)
              foreach (dat_out[j])
                dat_out[j] <= line_data[j][i];
         end : write_4
         else begin : write_1
            reg [8*data_size+15:0] line_data;
            reg [15:0]             crc_good, crc_actual;

            line_data[16+:8*data_size] = {>>{data}};

            crc_good = crc_dat#(.data_size(8*data_size))::
                       crc(line_data[16+:8*data_size]);
            if (inject_error)
              assert(std::randomize(crc_actual)
                     with { crc_actual != crc_good; });
            else
              crc_actual = crc_good;
            line_data[15:0] = crc_actual;

            dat_low_allowed = dat_low_dat0;

            foreach (line_data[i]) @(negedge sd_clk)
              dat_out <= {3'h7, line_data[i]};
         end : write_1

         // Write end bit

         @(negedge sd_clk)
           dat_out <= '1;

         @(negedge sd_clk) begin
            dat_low_allowed = dat_low_dat0;
            writing_dat = 1'b0;
         end

         // Read response token

         foreach (response_token[i]) @(negedge sd_clk)
           response_token[i] = sd_dat[0];
      endtask : write
   endclass : write_data_block_line

   virtual class test_data_read #(parameter data_size = 512);
      local static task automatic write_data(output [6:0] response_tokens[],
                                             input [7:0] data[data_size],
                                             input inject_error);
         if (data_size > 512) begin
            response_tokens = new[data_size/512];
            for (int i = 0; 512 * i < data_size; i++)
              write_data_block_line#(512)::write(response_tokens[i],
                                                 data[512*i+:512],
                                                 inject_error);
         end
         else begin
            response_tokens = new[1];
            write_data_block_line#(data_size)::write(response_tokens[0],
                                                     data,
                                                     inject_error);
         end
      endtask : write_data

      static task automatic test_data_read(input [7:0] data[data_size],
                                           input [28:25] status_expected,
                                           input inject_error = 1'b0,
                                           input interrupt = 1'b0);
         reg [7:0] data_read[data_size];
         reg [6:0] response_tokens[];
         int data_read_cnt;
         reg [31:0] reg_status_1, reg_saved_1[9:16];

         $write($time, , "Testing data read", );
         foreach (data[i])
           $writeh(data[i]);
         $display();

         read_status();
         reg_status_1 = reg_status;
         reg_saved_1 = reg_saved;

         data_read_cnt = 0;

         repeat(64) @(negedge sd_clk);

         // Drain any transactions in the queue
         begin : drain_transactions
            axi4stream_monitor_transaction trans;
            while (axis_reader.monitor.item_collected_port.get_item_cnt())
              axis_reader.monitor.item_collected_port.get(trans);
         end

         read_status();
         write_reg(20, 3'h4);

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

         write_data(response_tokens, data, inject_error);

         repeat(64) @(negedge sd_clk);

         if (interrupt)
           test_command(12, 0, .saved(1'b1),
                        .check_spec('{
                                      status_may_change: 32'h00003f80,
                                      reg_may_change:
                                      '{16: 1'b1, default: 1'b0},
                                      default: '0}));

         // Wait till no transfer is available before quitting.  64
         // clocks without a data transfer is used as a sign for no more
         // data.

         forever begin : wait_for_tran
            int cnt1 = data_read_cnt;
            repeat(64) @(posedge clock)
              if (data_read_cnt != cnt1)
                disable wait_for_tran;
            break;
         end : wait_for_tran
         disable fork;

         read_status();
         write_reg(20, 32'h1);

         // Give it some time to deassert the busy signal
         repeat(16) @(negedge sd_clk);

         dat_low_allowed = dat_low_none;

         $write($time, , "Got data", );
         for (int i = 0; i < data_read_cnt; i++)
           $writeh(data_read[i]);
         $write(, "Response tokens");
         foreach (response_tokens[i])
           $writeh (, response_tokens[i]);
         $display();

         check_status(reg_status_1, reg_saved_1,
                      '{
                        status_may_change: 32'h1e053fff,
                        reg_may_change: '{9: 1'b1, 10: 1'b1, 11: 1'b1, 16: 1'b1,
                                          default: 1'b0},
                        default: '0
                        });

         // Check the data
         if (!inject_error) begin : check_data
            assert(data_read_cnt == data_size)
              else $error("Timed out reading data");
            assert(data_read == data)
              else $error("Data read from AXI-Stream does not match data written to SD bus");
         end : check_data

         // Check the response tokens
         foreach (response_tokens[i])
           if (response_tokens[i] != (inject_error ? 7'b1101011 : 7'b1100101))
             begin
                $error("Bad response token");
                break;
             end

         repeat(64) @(negedge sd_clk);
      endtask : test_data_read
   endclass : test_data_read

   task automatic test_dat(input [7:0] data[2048]);
      localparam status_check_spec_t check_spec = '{
                                                    status_may_change:
                                                    32'h00803f80,
                                                    reg_may_change:
                                                    '{16: 1'b1, default: 1'b0},
                                                    default: '0
                                                    };

      logic [31:0] offset_good, offset_bad;

      assert(randomize(offset_good) with { offset_good <= card_size - 4; });
      assert(randomize(offset_bad) with { offset_bad > card_size; });

      $display("Testing data writes");

      // Clear errors
      test_command(13, {rca, 16'h0}, .check_spec(check_spec));

      // Write a 32-bit block
      test_command(22, 0, .acmd(1'b1), .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h5);
      test_data_write(data[0:3], 4'b0001);

      // Test bad offset
      test_command(17, offset_bad, .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h4);

      // Write a full block
      test_command(17, offset_good, .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h5);
      test_data_write(data[0:511], 4'b0001);

      // Write 4 blocks without using block count
      test_command(18, offset_good, .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h5);
      test_data_write(data, 4'bxxx0);
      test_command(12, 0, .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[16] == 32'd4);

      // Write 4 blocks using block count
      test_command(23, 4,
                   .check_spec('{
                                 status_may_change: 32'h1e800000,
                                 status_high: '{23: 1'b1, default: 1'b0},
                                 reg_may_change: '{14: 1'b1, 16: 1'b1,
                                                   default: 1'b0}
                                 }));
      assert(reg_saved[14] == 32'd4);
      test_command(18, offset_good, .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h5);
      test_data_write(data, 4'b0001);
      assert(reg_saved[16] == 32'd4);

      test_command(13, {rca, 16'h0},
                   .check_spec('{
                                 status_may_change: '{23: 1'b1, default: 1'b0},
                                 status_high: '0,
                                 reg_may_change: '{14: 1'b1, 16: 1'b1,
                                                   default: 1'b0}
                                 }));
      assert(reg_saved[9][12:9] == 4'h4);

      $display("Testing data reads");

      // Test bad offset
      test_command(24, offset_bad, .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h4);

      // Read a block
      test_command(24, offset_good, .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h6);
      test_data_read#(512)::test_data_read(data[0:511], 4'b0001);

      // Read 4 blocks without using block count
      test_command(25, offset_good, .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h6);
      test_data_read#(2048)::test_data_read(data, 4'bxxx0, .interrupt(1'b1));
      assert(reg_saved[16] == 32'd4);

      // Read 3 blocks using block count
      test_command(23, 3,
                   .check_spec('{
                                 status_may_change: '{23: 1'b1, default: 1'b0},
                                 status_high: '{23: 1'b1, default: 1'b0},
                                 reg_may_change: '{14: 1'b1, 16: 1'b1,
                                                   default: 1'b0}
                                 }));
      assert(reg_saved[14] == 32'd3);
      test_command(25, offset_good, .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h6);
      test_data_read#(1536)::test_data_read(data[0:1535], 4'b0001);
      assert(reg_saved[16] == 32'd3);

      // Make sure a CRC error is caught
      test_command(24, offset_good, .saved(1'b1), .check_spec(check_spec));
      assert(reg_saved[9][12:9] == 4'h6);
      test_data_read#(512)::test_data_read(data[0:511], 4'b0011,
                                           .inject_error(1'b1));
   endtask : test_dat

   logic [31:0] cmd8_arg;
   logic [31:0] ram_data[8];
   logic [7:0]  test_data[2048];

   task do_tests;
      repeat(128) @(posedge clock);

      $display($time, , "RAM writes and reads");

      assert(randomize(ram_data));
      ram_data[3][0] = 1'b1;
      ram_data[7][0] = 1'b1;

      foreach (ram_data[i])
        write_reg(i, ram_data[i]);

      foreach (ram_data[i]) begin : read_ram
         logic [31:0] data;
         read_reg(data, i);
         check: assert(data == ram_data[i]);
      end

      $display($time, , "Initialization");

      test_command(0, 0, .no_response(1'b1), .skip_status_check(1'b1));
      read_status();

      // Set card size
      write_reg(18, card_size);

      cmd8_arg[31:8] = 24'h1;
      assert(randomize(cmd8_arg[7:0]));
      check_got_cmd8_low: assert(~reg_status[22]);
      test_command(8, cmd8_arg,
                   .check_spec('{
                                 status_may_change: '{22: 1'b1, default: 1'b0},
                                 status_high: '{22: 1'b1, default: 1'b0},
                                 default: '0
                                 }));
      check_cmd8_arg: assert(resp.data[39:8] == cmd8_arg);

      for (int i = 0; i < 2; i++) begin: test_acmd41
         localparam bit [31:0] arg[2] = '{32'h50000000, 32'h50ff8000};
         localparam logic [31:0] resp_expected[2] = '{
                                                      32'h00ff8000,
                                                      {8'b11x0000x, 24'hff8000}
                                                      };

         test_command(41, arg[i], .acmd(1'b1), .saved(1'b1),
                      .allow_resp_bad_crc(1'b1), .allow_resp_bad_index(1'b1));
         check_nid: assert(resp.delay == 5);
         check_resp: assert(resp.data[47:0] ==? {8'h3f, resp_expected[i],
                                                 8'hff});

         // Write to OCR
         if (i == 0)
           write_reg(17, 32'hc0000000);
      end

      sd_clock_slow = 1'b0;

      // R2

      test_command(2, 0, .resp_is_r2(1'b1), .allow_resp_bad_crc(1'b1),
                   .allow_resp_bad_index(1'b1));
      check_response_cid:
        #0 assert(resp.data == {8'h3f, 128'({>>{ram_data[0:3]}})});

      test_command(3, 0);
      rca = resp.data[39:24];

      test_command(9, {rca, 16'h0}, .resp_is_r2(1'b1),
                   .allow_resp_bad_crc(1'b1), .allow_resp_bad_index(1'b1));
      check_response_csd:
        #0 assert(resp.data == {8'h3f, 128'({>>{ram_data[4:7]}})});

      test_command(7, {rca, 16'h0});

      // Test DAT

      $display("Testing DAT");

      assert(randomize(test_data));

      test_dat(test_data);

      test_command(6, 2, .acmd(1'b1));
      dat_width_4 = 1'b1;

      test_dat(test_data);
   endtask // do_tests

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
      do_tests;

      #200
        $finish;
   end
endmodule // axi_sd_card_v1_0_tb