`timescale 1ns / 1ps

module test_command_responding;
   wire        sd_clk;
   wire        sd_cmd, sd_cmd_o, sd_cmd_t;
   pullup(sd_cmd);
   assign sd_cmd = sd_cmd_t ? 1'bz : sd_cmd_o;
   wire [3:0]  sd_dat, sd_dat_o, sd_dat_t;
   genvar      i;
   generate
      for (i = 0; i < 4; i = i + 1) begin:dat_output
         pullup(sd_dat[i]);
         assign sd_dat[i] = sd_dat_t[i] ? 1'bz : sd_dat_o[i];
      end
   endgenerate

   wire        clk;
   reg         resetn;

   reg [31:0]  write_data;
   reg         data_write_en, no_more_write_data, ack_data_tran,
               start_data_tran, dat_width_4, test_read_en;

   wire [31:0] card_status_out;
   wire        may_write_data, may_read_data;
   wire [31:0] data_out;

   wire [2:0]  ram_addr;
   reg [31:0]  ram_data;

   device dut(.csr_set_bits(0),
              .csr_clr_bits(0),
              .ocr_high_byte_in(8'hc0),
              .size_in(32'h80000),
              .ram_addr,
              .ram_data,
              .card_status_out,
              .may_write_data,
              .may_read_data,
              .data_in(write_data),
              .data_write_en,
              .no_more_write_data,
              .data_read_en(test_read_en),
              .data_out,
              .ack_data_tran,
              .start_data_tran,
              .sd_clk_i(sd_clk),
              .sd_cmd_i(sd_cmd),
              .sd_cmd_o,
              .sd_cmd_t,
              .sd_dat_i(sd_dat),
              .sd_dat_o,
              .sd_dat_t,
              .clk,
              .resetn_in(resetn));

   // Random data for CID and CSD
   localparam bit [255:0] ram_content = 256'h2f6ee8e462fdf88d2964704ba1abf97fd99cb163ef5d3108ba6612fd909660ed;

   always @(posedge clk)
     ram_data <= ram_content[32 * {~ram_addr} +: 32];

   // Random data for SD status
   localparam bit [511:0] sd_status = 512'h28723dfbfb530df8c32e49d48610f107482b145740a63581e85edfc19789b8ba0cb3b7efbcf1b55fad4b8831fa33a26c3dddd5e69109dd6d572a032c1ddd36fa;

   localparam bit [511:0] switch_function_resp = 512'h00c88001800180018001800180010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

   reg [3:0]              clk_div;

   always
     #1 clk_div <= clk_div + 1;

   assign clk = clk_div[0];

   assign sd_clk = clk_div[3];

   reg                    writing_cmd, cmd_out;
   reg                    writing_dat;
   reg [3:0]              dat_out;
   integer                read_word_count;

   always @(posedge clk)
     if (may_read_data && test_read_en)
       read_word_count = read_word_count + 1;

   assign sd_cmd = writing_cmd ? cmd_out : 1'bz;
   assign sd_dat = writing_dat ? dat_out : 'z;

   task write_cmd_raw(input [47:0] cmd);
      $display($time, , "write cmd %06H", cmd);
      repeat(8) @(negedge sd_clk);
      writing_cmd = 1'b1;
      repeat(48) @(negedge sd_clk)
        {cmd_out, cmd} = {cmd, 1'b1};
      @(negedge sd_clk)
        writing_cmd = 1'b0;
      repeat(256) @(negedge sd_clk);
   endtask // write_cmd_raw

   task write_cmd(input [5:0] index,
                            input [31:0] arg = 0);
      reg [47:0]                         cmd_raw;
      reg [6:0]                          checksum;
      integer                            i;
      cmd_raw[47:8] = {2'b01, index, arg};
      // Compute checksum
      checksum = 0;
      for (i = 47; i >=8; i = i - 1)
        checksum = (checksum << 1) ^ (7'h09 * (checksum[6] != cmd_raw[i]));
      cmd_raw[7:0] = {checksum, 1'b1};
      write_cmd_raw(cmd_raw);
   endtask // write_cmd

   function automatic [15:0] crc16(input data []);
      crc16 = 0;
      foreach (data[i])
        crc16 = (crc16 << 1) ^ (16'h1021 * (crc16[15] ^ data[i]));
   endfunction :crc16

   task send_start_data_tran;
      @(posedge clk) ack_data_tran = 1'b1;
      @(posedge clk) ack_data_tran = 1'b0;
      @(posedge clk) start_data_tran = 1'b1;
      @(posedge clk) start_data_tran = 1'b0;
      read_word_count = 0;
   endtask // send_start_data_tran

   task write_dat_raw(input towrite [0:3][], input integer bit_count);
      integer i;
      for (i = 0; i < bit_count; i = i + 1) @(negedge sd_clk)
        foreach (dat_out[j])
          dat_out[j] = towrite[j][i];
      @(negedge sd_clk) begin
         writing_dat = 1'b0;
         dat_out = '1;
      end
      repeat(64) @(negedge sd_clk);
   endtask // write_dat_raw

   task write_block_dat(input [4095:0] data);
      reg towrite[0:3][0:4113];
      reg tmp[0:4095];
      reg [15:0] crctmp;
      integer bit_count;
      integer i;

      if (dat_width_4) begin
         bit_count = 1042;
         // distribute the bits to the lines
         for (i = 0; i < 4096; i = i + 1)
           towrite[i & 3][1024 - (i >> 2)] = data[i];
         // start bit, CRC, and end bit
         for (i = 0; i < 4; i = i + 1) begin
            towrite[i][0] = 1'b0;
            crctmp = crc16(towrite[i][1:1024]);
            foreach (crctmp[j])
              towrite[i][1040 - j] = crctmp[j];
            towrite[i][1041] = 1'b1;
         end
      end // if (dat_width_4)
      else begin
         bit_count = 4114;
         {>>{tmp}} = data;
         {>>{towrite[0]}} = {1'b0, data, crc16(tmp), 1'b1};
         for (i = 1; i < 4; i = i + 1)
           {>>{towrite[i]}} = {4114{1'b1}};
      end // else: !if(dat_width_4)

      // wait for busy to be released
      do
        @(posedge sd_clk);
      while (sd_dat[0] == 1'b0);
      @(negedge sd_clk);
      @(negedge sd_clk)
        writing_dat = 1'b1;
      dat_out <= '1;
      // write
      write_dat_raw(towrite, bit_count);
   endtask // write_block_dat

   task test_dat;
      integer i;

      $display("test dat");

      // SD status
      write_cmd(55, 32'haaab0000);
      write_cmd(13);
      write_cmd(13, 32'haaab0000);

      // Write garbage before sending ack_data_tran and start_data_tran
      repeat(64) @(posedge clk) begin
         data_write_en = 1'b1;
         write_data = 32'hdeadbeef;
      end
      @(posedge clk) data_write_en = 1'b0;
      // Write the SD status
      send_start_data_tran;
      for (i = 0; i < 16; i = i + 1)  @(posedge clk) begin
         data_write_en = 1'b1;
         write_data = sd_status[32 * (15 - i) +: 32];
      end
      @(posedge clk) data_write_en = 1'b0;
      @(posedge clk) no_more_write_data = 1'b1;
      @(posedge clk) no_more_write_data = 1'b0;
      repeat(32768) @(negedge sd_clk);

      // Switch function
      write_cmd(6, 32'h00ffffff);
      repeat(64) @(posedge clk);
      send_start_data_tran;
      for (i = 0; i < 16; i = i + 1)  @(posedge clk) begin
         data_write_en = 1'b1;
         write_data = switch_function_resp[32 * (15 - i) +: 32];
      end
      @(posedge clk) data_write_en = 1'b0;
      @(posedge clk) no_more_write_data = 1'b1;
      @(posedge clk) no_more_write_data = 1'b0;
      repeat(32768) @(negedge sd_clk);

      // Out of range blocks should generate an error

      write_cmd(18, 32'h28116fc6);
      write_cmd(24, 32'hc053e287);

      // Read multiple blocks
      write_cmd(18, 32'h2804);
      // The CPU writes to the device
      send_start_data_tran;
      for (i = 0; i < 1024;) @(posedge clk) begin
         if (!may_write_data) begin
            data_write_en = 1'b0;
            continue;
         end
         data_write_en = 1'b1;
         write_data = i;
         i = i + 1;
      end
      @(posedge clk) data_write_en = 1'b0;
      repeat(32768) @(negedge sd_clk);

      write_cmd(12);

      // Write multiple blocks
      write_cmd(25, 32'h49d1);
      repeat(256) @(negedge sd_clk);
      send_start_data_tran;
      test_read_en = 1'b0;

      fork
         // The host writes to the bus
         for (i = 0; i < 8; i = i + 1) begin:write_test_block
            reg [4095:0] test_data;
            integer      j;
            for (j = 0; j < 128; j = j + 1)
              test_data[32 * (127 - j) +: 32] = (i << 7) | j;
            write_block_dat(test_data);
         end // block: write_test_block
         // The CPU starts reading
         #500000 test_read_en = 1'b1;
      join

      // Write a bad block.
      @(negedge sd_clk) begin
         writing_dat = 1'b1;
         dat_out = 0;
      end
      @(negedge sd_clk) begin
         writing_dat = 1'b0;
         dat_out = '1;
      end
      repeat(4176) @(negedge sd_clk);

      write_cmd(12);

      $display("done testing dat");

      repeat(256) @(negedge sd_clk);
   endtask // test_dat

   initial begin:simulate
      integer i;

      clk_div = 0;
      resetn = 1'b0;
      writing_cmd = 1'b0;
      cmd_out = 1'b1;
      write_data = 0;
      data_write_en = 1'b0;
      no_more_write_data = 1'b0;
      writing_dat = 1'b0;
      dat_out = '1;
      ack_data_tran = 1'b0;
      start_data_tran = 1'b0;
      read_word_count = 0;
      dat_width_4 = 1'b0;
      test_read_en = 1'b0;

      #32 resetn = 1'b1;

      repeat(256) @(negedge sd_clk);

      // Reset and initialize
      write_cmd(0);
      write_cmd(8, 32'h000001aa);
      write_cmd(55);
      write_cmd(41, 32'h50000000);
      write_cmd(55);
      write_cmd(41, 32'h50ff8000);
      write_cmd(2);
      write_cmd(3);
      write_cmd(3);
      // Assume the RCA is aaab from now on
      write_cmd(9, 32'haaab0000);
      write_cmd(7, 32'haaab0000);
      // See whether CMD9 is responded to in the wrong state
      write_cmd(9, 32'haaab0000);
      write_cmd(13, 32'haaab0000);

      // Try bad CRC
      write_cmd_raw(48'h4daaab00001f);
      write_cmd(13, 32'haaab0000);

      // Write and read on DAT
      test_dat;
      // Use 4 dat lines
      write_cmd(55, 32'haaab0000);
      write_cmd(6, 32'h2);
      dat_width_4 = 1'b1;
      test_dat;

      // Set invalid dat width
      write_cmd(55, 32'haaab0000);
      write_cmd(6, 32'h1);

      // CMD15 with non-matching CRC
      write_cmd(15);
      // Go idle
      write_cmd(15, 32'haaab0000);
      // See if there is response in idle state
      write_cmd(13, 32'haaab0000);
      write_cmd(13);

      $finish;
   end // block: simulate
endmodule // test_command_responding
