`timescale 1ns / 1ps
`include "xts_aes_v1_0_tb_include.svh"

import axi_vip_pkg::*;
import axi4stream_vip_pkg::*;
import xts_aes_v1_0_bfm_1_master_0_0_pkg::*;
import xts_aes_v1_0_bfm_1_axi4stream_vip_mst_0_pkg::*;
import xts_aes_v1_0_bfm_1_axi4stream_vip_slv_0_pkg::*;

module xts_aes_v1_0_tb();
`ifdef KEY_SIZE_512
   struct {
      logic [127:0]    key[2];
      logic [31:0]    sequence_number;
      string          file_name;
   } test_vectors[] = '{
                        '{
                          '{
                            128'h2718281828459045235360287471352662497757247093699959574966967627,
                            128'h3141592653589793238462643383279502884197169399375105820974944592
                            },
                          32'hffffff,
                          "tv-256-01"
                          }
                        };
`else
   struct {
      logic [127:0]    key[2];
      logic [31:0]    sequence_number;
      string          file_name;
   } test_vectors[] = '{
                        '{
                          '{
                            128'h00000000000000000000000000000000,
                            128'h00000000000000000000000000000000
                            },
                          32'h0,
                          "tv-128-01"
                          },
                        '{
                          '{
                            128'h27182818284590452353602874713526,
                            128'h31415926535897932384626433832795
                            },
                          32'h0,
                          "tv-128-02"
                          },
                        '{
                          '{
                            128'h27182818284590452353602874713526,
                            128'h31415926535897932384626433832795
                            },
                          32'hfd,
                          "tv-128-03"
                          }
                        };
`endif // !`ifdef KEY_SIZE_512

   virtual class aes_utils_key_size
     extends aes_utils::with_key_size#(
`ifdef KEY_SIZE_512
                                       256
`else
                                       128
`endif
);
   endclass : aes_utils_key_size

   localparam agent_verbosity = 0;

   logic             clock;
   logic             resetn;

   default clocking default_clocking @(posedge clock);
   endclocking : default_clocking

   xts_aes_v1_0_bfm_1_master_0_0_mst_t mst_agent_0;
   xts_aes_v1_0_bfm_1_axi4stream_vip_mst_0_mst_t axis_writer;
   xts_aes_v1_0_bfm_1_axi4stream_vip_slv_0_slv_t axis_reader;

   task automatic read_reg(input int index,
                           output [31:0] data);
      xil_axi_resp_t resp;
      mst_agent_0.AXI4LITE_READ_BURST(.addr(index),
                                      .prot(2'b00),
                                      .data(data),
                                      .resp(resp));
      assert(resp == XIL_AXI_RESP_OKAY);
   endtask : read_reg

   task automatic write_reg(input int index,
                            input [31:0] data);
      xil_axi_resp_t resp;
      mst_agent_0.AXI4LITE_WRITE_BURST(.addr(index),
                                       .prot(2'b00),
                                       .data(data),
                                       .resp(resp));
      assert(resp == XIL_AXI_RESP_OKAY);
   endtask : write_reg

   task automatic write_data(input [7:0] data[]);
      $write($time, , "Writing data size ", $size(data), );
      foreach (data[i])
        $writeh(data[i]);
      $display();

      for (int i = 0; i < $size(data); i += 16) begin : transaction
         logic [7:0] trans_data[16];
         axi4stream_transaction trans;
         foreach (trans_data[j])
           trans_data[j] = data[i+j];
         trans = axis_writer.driver.create_transaction();
         trans.set_data(trans_data);
         trans.set_delay(0);
         axis_writer.driver.send(trans);
      end : transaction
   endtask : write_data

   task automatic read_data(output [7:0] data[$]);
      fork
         begin: read_all
            forever begin: read_trans
               logic [7:0] trans_data[16];
               axi4stream_monitor_transaction trans;

               axis_reader.monitor.item_collected_port.get(trans);
               trans.get_data(trans_data);
               data = {data, trans_data};

               disable timeout_once;
            end
         end

         forever begin: timeout_once
            ##256 disable read_all;
            break;
         end
      join

      $write($time, , "Got data size", $size(data), );
      foreach (data[i])
        $writeh(data[i]);
      $display();
   endtask : read_data

   task automatic test_data(input [7:0] data_in[], data_out_exp[],
                            input [31:0] tweak,
                            input decrypt);
      logic [7:0] data_out[$];

      // Set tweak
      write_reg(0, tweak);
      // Set mode and enable
      write_reg(16, '{1: 1'b1, 2: decrypt, default: 1'b0});

      fork
         write_data(data_in);
         read_data(data_out);
      join

      data_out_matches_expected: assert(data_out == data_out_exp)
        else $error("Data read does not match expected");
   endtask : test_data

   `BD_WRAPPER DUT(
                   .ARESETN(resetn),
                   .ACLK(clock)
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
      foreach (test_vectors[i]) begin : test_single_vector
         logic [31:0] status;
         logic [7:0]  ptx[], ctx[];

         // Read data

         $readmemh(string'({test_vectors[i].file_name, "-ptx.mem"}), ptx);
         $readmemh(string'({test_vectors[i].file_name, "-ctx.mem"}), ctx);

         // Update key

         for (int j = 0; j < 2; j++) begin : key
            logic [0:aes_utils_key_size::EXPANDED_KEY_WORDS-1][31:0] key;

            key = aes_utils_key_size::key_schedule(test_vectors[i].key[j]);

            $displayh("Key", , key);

            for (int k = 0; k < aes_utils_key_size::EXPANDED_KEY_WORDS; k++)
              write_reg(512 + 256 * j + 4 * k, key[k]);
         end

         read_reg(16, status);
         check_got_key: assert(status[0])
           else $error("Got key bit is low after key is updated");

         // Encrypt
         test_data(ptx, ctx, test_vectors[i].sequence_number, 1'b0);

         // Decrypt
         test_data(ctx, ptx, test_vectors[i].sequence_number, 1'b1);
      end // block: test_single_vector

      #1000 $finish;
   end : tests
endmodule // xts_aes_v1_0_tb

package aes_utils;
   function automatic [7:0] sbox(input [7:0] x);
      case (x)
        8'h00: sbox = 8'h63;
        8'h01: sbox = 8'h7c;
        8'h02: sbox = 8'h77;
        8'h03: sbox = 8'h7b;
        8'h04: sbox = 8'hf2;
        8'h05: sbox = 8'h6b;
        8'h06: sbox = 8'h6f;
        8'h07: sbox = 8'hc5;
        8'h08: sbox = 8'h30;
        8'h09: sbox = 8'h01;
        8'h0a: sbox = 8'h67;
        8'h0b: sbox = 8'h2b;
        8'h0c: sbox = 8'hfe;
        8'h0d: sbox = 8'hd7;
        8'h0e: sbox = 8'hab;
        8'h0f: sbox = 8'h76;
        8'h10: sbox = 8'hca;
        8'h11: sbox = 8'h82;
        8'h12: sbox = 8'hc9;
        8'h13: sbox = 8'h7d;
        8'h14: sbox = 8'hfa;
        8'h15: sbox = 8'h59;
        8'h16: sbox = 8'h47;
        8'h17: sbox = 8'hf0;
        8'h18: sbox = 8'had;
        8'h19: sbox = 8'hd4;
        8'h1a: sbox = 8'ha2;
        8'h1b: sbox = 8'haf;
        8'h1c: sbox = 8'h9c;
        8'h1d: sbox = 8'ha4;
        8'h1e: sbox = 8'h72;
        8'h1f: sbox = 8'hc0;
        8'h20: sbox = 8'hb7;
        8'h21: sbox = 8'hfd;
        8'h22: sbox = 8'h93;
        8'h23: sbox = 8'h26;
        8'h24: sbox = 8'h36;
        8'h25: sbox = 8'h3f;
        8'h26: sbox = 8'hf7;
        8'h27: sbox = 8'hcc;
        8'h28: sbox = 8'h34;
        8'h29: sbox = 8'ha5;
        8'h2a: sbox = 8'he5;
        8'h2b: sbox = 8'hf1;
        8'h2c: sbox = 8'h71;
        8'h2d: sbox = 8'hd8;
        8'h2e: sbox = 8'h31;
        8'h2f: sbox = 8'h15;
        8'h30: sbox = 8'h04;
        8'h31: sbox = 8'hc7;
        8'h32: sbox = 8'h23;
        8'h33: sbox = 8'hc3;
        8'h34: sbox = 8'h18;
        8'h35: sbox = 8'h96;
        8'h36: sbox = 8'h05;
        8'h37: sbox = 8'h9a;
        8'h38: sbox = 8'h07;
        8'h39: sbox = 8'h12;
        8'h3a: sbox = 8'h80;
        8'h3b: sbox = 8'he2;
        8'h3c: sbox = 8'heb;
        8'h3d: sbox = 8'h27;
        8'h3e: sbox = 8'hb2;
        8'h3f: sbox = 8'h75;
        8'h40: sbox = 8'h09;
        8'h41: sbox = 8'h83;
        8'h42: sbox = 8'h2c;
        8'h43: sbox = 8'h1a;
        8'h44: sbox = 8'h1b;
        8'h45: sbox = 8'h6e;
        8'h46: sbox = 8'h5a;
        8'h47: sbox = 8'ha0;
        8'h48: sbox = 8'h52;
        8'h49: sbox = 8'h3b;
        8'h4a: sbox = 8'hd6;
        8'h4b: sbox = 8'hb3;
        8'h4c: sbox = 8'h29;
        8'h4d: sbox = 8'he3;
        8'h4e: sbox = 8'h2f;
        8'h4f: sbox = 8'h84;
        8'h50: sbox = 8'h53;
        8'h51: sbox = 8'hd1;
        8'h52: sbox = 8'h00;
        8'h53: sbox = 8'hed;
        8'h54: sbox = 8'h20;
        8'h55: sbox = 8'hfc;
        8'h56: sbox = 8'hb1;
        8'h57: sbox = 8'h5b;
        8'h58: sbox = 8'h6a;
        8'h59: sbox = 8'hcb;
        8'h5a: sbox = 8'hbe;
        8'h5b: sbox = 8'h39;
        8'h5c: sbox = 8'h4a;
        8'h5d: sbox = 8'h4c;
        8'h5e: sbox = 8'h58;
        8'h5f: sbox = 8'hcf;
        8'h60: sbox = 8'hd0;
        8'h61: sbox = 8'hef;
        8'h62: sbox = 8'haa;
        8'h63: sbox = 8'hfb;
        8'h64: sbox = 8'h43;
        8'h65: sbox = 8'h4d;
        8'h66: sbox = 8'h33;
        8'h67: sbox = 8'h85;
        8'h68: sbox = 8'h45;
        8'h69: sbox = 8'hf9;
        8'h6a: sbox = 8'h02;
        8'h6b: sbox = 8'h7f;
        8'h6c: sbox = 8'h50;
        8'h6d: sbox = 8'h3c;
        8'h6e: sbox = 8'h9f;
        8'h6f: sbox = 8'ha8;
        8'h70: sbox = 8'h51;
        8'h71: sbox = 8'ha3;
        8'h72: sbox = 8'h40;
        8'h73: sbox = 8'h8f;
        8'h74: sbox = 8'h92;
        8'h75: sbox = 8'h9d;
        8'h76: sbox = 8'h38;
        8'h77: sbox = 8'hf5;
        8'h78: sbox = 8'hbc;
        8'h79: sbox = 8'hb6;
        8'h7a: sbox = 8'hda;
        8'h7b: sbox = 8'h21;
        8'h7c: sbox = 8'h10;
        8'h7d: sbox = 8'hff;
        8'h7e: sbox = 8'hf3;
        8'h7f: sbox = 8'hd2;
        8'h80: sbox = 8'hcd;
        8'h81: sbox = 8'h0c;
        8'h82: sbox = 8'h13;
        8'h83: sbox = 8'hec;
        8'h84: sbox = 8'h5f;
        8'h85: sbox = 8'h97;
        8'h86: sbox = 8'h44;
        8'h87: sbox = 8'h17;
        8'h88: sbox = 8'hc4;
        8'h89: sbox = 8'ha7;
        8'h8a: sbox = 8'h7e;
        8'h8b: sbox = 8'h3d;
        8'h8c: sbox = 8'h64;
        8'h8d: sbox = 8'h5d;
        8'h8e: sbox = 8'h19;
        8'h8f: sbox = 8'h73;
        8'h90: sbox = 8'h60;
        8'h91: sbox = 8'h81;
        8'h92: sbox = 8'h4f;
        8'h93: sbox = 8'hdc;
        8'h94: sbox = 8'h22;
        8'h95: sbox = 8'h2a;
        8'h96: sbox = 8'h90;
        8'h97: sbox = 8'h88;
        8'h98: sbox = 8'h46;
        8'h99: sbox = 8'hee;
        8'h9a: sbox = 8'hb8;
        8'h9b: sbox = 8'h14;
        8'h9c: sbox = 8'hde;
        8'h9d: sbox = 8'h5e;
        8'h9e: sbox = 8'h0b;
        8'h9f: sbox = 8'hdb;
        8'ha0: sbox = 8'he0;
        8'ha1: sbox = 8'h32;
        8'ha2: sbox = 8'h3a;
        8'ha3: sbox = 8'h0a;
        8'ha4: sbox = 8'h49;
        8'ha5: sbox = 8'h06;
        8'ha6: sbox = 8'h24;
        8'ha7: sbox = 8'h5c;
        8'ha8: sbox = 8'hc2;
        8'ha9: sbox = 8'hd3;
        8'haa: sbox = 8'hac;
        8'hab: sbox = 8'h62;
        8'hac: sbox = 8'h91;
        8'had: sbox = 8'h95;
        8'hae: sbox = 8'he4;
        8'haf: sbox = 8'h79;
        8'hb0: sbox = 8'he7;
        8'hb1: sbox = 8'hc8;
        8'hb2: sbox = 8'h37;
        8'hb3: sbox = 8'h6d;
        8'hb4: sbox = 8'h8d;
        8'hb5: sbox = 8'hd5;
        8'hb6: sbox = 8'h4e;
        8'hb7: sbox = 8'ha9;
        8'hb8: sbox = 8'h6c;
        8'hb9: sbox = 8'h56;
        8'hba: sbox = 8'hf4;
        8'hbb: sbox = 8'hea;
        8'hbc: sbox = 8'h65;
        8'hbd: sbox = 8'h7a;
        8'hbe: sbox = 8'hae;
        8'hbf: sbox = 8'h08;
        8'hc0: sbox = 8'hba;
        8'hc1: sbox = 8'h78;
        8'hc2: sbox = 8'h25;
        8'hc3: sbox = 8'h2e;
        8'hc4: sbox = 8'h1c;
        8'hc5: sbox = 8'ha6;
        8'hc6: sbox = 8'hb4;
        8'hc7: sbox = 8'hc6;
        8'hc8: sbox = 8'he8;
        8'hc9: sbox = 8'hdd;
        8'hca: sbox = 8'h74;
        8'hcb: sbox = 8'h1f;
        8'hcc: sbox = 8'h4b;
        8'hcd: sbox = 8'hbd;
        8'hce: sbox = 8'h8b;
        8'hcf: sbox = 8'h8a;
        8'hd0: sbox = 8'h70;
        8'hd1: sbox = 8'h3e;
        8'hd2: sbox = 8'hb5;
        8'hd3: sbox = 8'h66;
        8'hd4: sbox = 8'h48;
        8'hd5: sbox = 8'h03;
        8'hd6: sbox = 8'hf6;
        8'hd7: sbox = 8'h0e;
        8'hd8: sbox = 8'h61;
        8'hd9: sbox = 8'h35;
        8'hda: sbox = 8'h57;
        8'hdb: sbox = 8'hb9;
        8'hdc: sbox = 8'h86;
        8'hdd: sbox = 8'hc1;
        8'hde: sbox = 8'h1d;
        8'hdf: sbox = 8'h9e;
        8'he0: sbox = 8'he1;
        8'he1: sbox = 8'hf8;
        8'he2: sbox = 8'h98;
        8'he3: sbox = 8'h11;
        8'he4: sbox = 8'h69;
        8'he5: sbox = 8'hd9;
        8'he6: sbox = 8'h8e;
        8'he7: sbox = 8'h94;
        8'he8: sbox = 8'h9b;
        8'he9: sbox = 8'h1e;
        8'hea: sbox = 8'h87;
        8'heb: sbox = 8'he9;
        8'hec: sbox = 8'hce;
        8'hed: sbox = 8'h55;
        8'hee: sbox = 8'h28;
        8'hef: sbox = 8'hdf;
        8'hf0: sbox = 8'h8c;
        8'hf1: sbox = 8'ha1;
        8'hf2: sbox = 8'h89;
        8'hf3: sbox = 8'h0d;
        8'hf4: sbox = 8'hbf;
        8'hf5: sbox = 8'he6;
        8'hf6: sbox = 8'h42;
        8'hf7: sbox = 8'h68;
        8'hf8: sbox = 8'h41;
        8'hf9: sbox = 8'h99;
        8'hfa: sbox = 8'h2d;
        8'hfb: sbox = 8'h0f;
        8'hfc: sbox = 8'hb0;
        8'hfd: sbox = 8'h54;
        8'hfe: sbox = 8'hbb;
        8'hff: sbox = 8'h16;
      endcase // case (x)
   endfunction : sbox

   function automatic [7:0] mul_gf256(input [7:0] a, b);
      logic [14:0] y;
      y = '0;
      foreach (a[i])
        if (a[i])
          y[i+:8] ^= b;
      for (int i = 14; i >= 8; i--)
        if (y[i])
          y[i-1 -: 8] ^= 8'h1b;
      return y[7:0];
   endfunction : mul_gf256

   function automatic [31:0] rotword(input [31:0] x);
      rotword[24+:8] = x[0+:8];
      rotword[0+:24] = x[8+:24];
   endfunction : rotword

   function automatic [31:0] subword(input [31:0] x);
      for (int i = 0; i < 4; i++)
        subword[8*i+:8] = sbox(x[8*i+:8]);
   endfunction : subword

   virtual class with_key_size #(parameter KEY_SIZE = 128);
      localparam NK = KEY_SIZE >> 5;
      localparam NR = NK + 6;
      localparam EXPANDED_KEY_WORDS = (NR + 1) * 4;

      static function automatic bit [0:EXPANDED_KEY_WORDS-1][31:0] key_schedule
        (input [KEY_SIZE-1:0] key);
         logic [7:0] rci;
         logic [31:0] temp;

         {<<8{{<<32{key_schedule[0+:KEY_SIZE/32]}}}} = key;
         rci = 8'h1;

         for (int i = NK; i < EXPANDED_KEY_WORDS; i++)
           begin
              temp = key_schedule[i-1];
              if (i % NK == 0) begin
                 temp = subword(rotword(temp)) ^ rci;
                 rci = mul_gf256(8'h2, rci);
              end
              else if (NK > 6 && i % NK == 4)
                temp = subword(temp);
              key_schedule[i] = key_schedule[i-NK] ^ temp;
           end // for (int i = NK; i < EXPANDED_KEY_WORDS; i++)
      endfunction : key_schedule
   endclass : with_key_size
endpackage : aes_utils
