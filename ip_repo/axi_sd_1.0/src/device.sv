`timescale 1ns / 1ps

package sd_defs;
   // States of an SD card

   localparam sd_state_idle = 0;
   localparam sd_state_ready = 1;
   localparam sd_state_ident = 2;
   localparam sd_state_stby = 3;
   localparam sd_state_tran = 4;
   localparam sd_state_data = 5;
   localparam sd_state_rcv = 6;
   localparam sd_state_prg = 7;
   localparam sd_state_dis = 8;

   // The bits in the card status

   localparam csr_out_of_range = 31;
   localparam csr_address_error = 30;
   localparam csr_block_len_error = 29;
   localparam csr_erase_seq_error = 28;
   localparam csr_erase_param = 27;
   localparam csr_wp_violation = 26;
   localparam csr_card_is_locked = 25;
   localparam csr_lock_unlock_failed = 24;
   localparam csr_com_crc_error = 23;
   localparam csr_illegal_command = 22;
   localparam csr_card_ecc_failed = 21;
   localparam csr_cc_error = 20;
   localparam csr_error = 19;
   localparam csr_csd_overwrite = 16;
   localparam csr_wp_erase_skip = 15;
   localparam csr_card_ecc_disabled = 14;
   localparam csr_erase_reset = 13;
   localparam csr_current_state_high = 12;
   localparam csr_current_state_low = 9;
   localparam csr_ready_for_data = 8;
   localparam csr_fx_event = 6;
   localparam csr_app_cmd = 5;
   localparam csr_ake_seq_error = 3;

   localparam bit [31:0] csr_current_state_mask =
                         {{(csr_current_state_high - csr_current_state_low + 1)
                           {1'b1}}, {csr_current_state_low{1'b0}}};
   localparam bit [31:0] csr_error_bits_mask = ~((1 << csr_card_is_locked) |
                                                 csr_current_state_mask |
                                                 (1 << csr_ready_for_data) |
                                                 (1 << csr_fx_event) |
                                                 (1 << csr_app_cmd));
endpackage // sd_defs

   // Respond to all commands
module responder
  #(// the expected VHS field of CMD8
    parameter bit [19:16] cmd8_vhs = 4'h1,
    parameter bit [23:8] ocr_voltage_window = 16'hff80)
   (input [4:0] resp_pos,

    // the current response byte
    output reg [7:0] resp_byte,
    // don't send crc after response
    output reg resp_no_crc,
    // length of response without crc in bytes
    output reg [4:0] resp_len,
    output [3:0] resp_delay,
    output reg send_resp_o,

    input [31:0] card_status,
    input write_ram_en,
    input [2:0] write_ram_addr,
    input [31:0] write_ram_data,
    input [31:24] ocr_high_byte,
    input [15:0] rca,

    // cmd_index and cmd_arg should not change when a response is being
    // sent
    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input rca_match,
    // this command is an acmd
    input acmd,
    // to send response
    input send_resp_i,

    // high for one clock when the corresponding type of response is sent
    output sent_r1, sent_r2_cid, sent_r2_csd, sent_r3, sent_r6, sent_r7,

    input clk,
    input resetn);

   // ram[0:3] is CID, and ram[4:7] is CSD

   reg [31:0] ram[0:7];

   always @(posedge clk)
     if (write_ram_en)
       ram[write_ram_addr] <= {<<8{write_ram_data}};

   // Determine what response to send

   typedef enum {
                 resp_none = 0,
                 resp_r1 = 1,
                 resp_r2_cid = 2,
                 resp_r2_csd = 3,
                 resp_r3 = 4,
                 resp_r6 = 5,
                 resp_r7 = 6
                 } resp_types;

   reg [2:0] resp_cur, resp_next;

   always @(*)
     case (cmd_index)
       0, 4:
         resp_next = resp_none;
       7:
         if (rca_match)
           resp_next = resp_r1;
         else
           resp_next = resp_none;
       2, 10:
         resp_next = resp_r2_cid;
       9:
         resp_next = resp_r2_csd;
       3:
         resp_next = resp_r6;
       8:
         if (cmd_arg[11:8] == cmd8_vhs)
           resp_next = resp_r7;
         else
           resp_next = resp_none;
       41:
         if (acmd)
           resp_next = resp_r3;
         else
           resp_next = resp_r1;
       default:
         resp_next = resp_r1;
     endcase // case (cmd_index)

   always @(posedge clk)
     if (~resetn)
       resp_cur <= resp_none;
     else if (send_resp_i)
       resp_cur <= resp_next;

   // For ACMD41 and CMD2, the delay before the response NID has to be
   // 5.  For other commands, 5 also works.  Thus we make it 5 the whole
   // time.  And subtract the 2 z clocks.

   assign resp_delay = 5 - 2;

   reg [5:0]    resp_type_out;
   assign {sent_r7,
           sent_r6,
           sent_r3,
           sent_r2_cid,
           sent_r2_csd,
           sent_r1} = resp_type_out;

   always @(posedge clk)
     if (!resetn || !send_resp_i) begin
        resp_type_out <= 6'b0;
        send_resp_o <= 1'b0;
     end
     else begin
        resp_type_out <= {resp_next == resp_r7,
                          resp_next == resp_r6,
                          resp_next == resp_r3,
                          resp_next == resp_r2_csd,
                          resp_next == resp_r2_cid,
                          resp_next == resp_r1};
        send_resp_o <= resp_next != resp_none;
     end // else: !if(!resetn || !send_resp_i)

   // The length of the response and whether crc is sent

   reg       resp_no_crc_next;
   reg [4:0] resp_len_next;

   always @(*)
     (* parallel_case *)
     case (resp_next)
       resp_r2_cid: begin
          resp_no_crc_next = 1'b1;
          resp_len_next = 17;
       end
       resp_r2_csd: begin
          resp_no_crc_next = 1'b1;
          resp_len_next = 17;
       end
       resp_r3: begin
          resp_no_crc_next = 1'b1;
          resp_len_next = 6;
       end
       default: begin
          resp_no_crc_next = 1'b0;
          resp_len_next = 5;
       end
     endcase // case (resp_next)

   // The response

   wire [7:0] content_r1[0:4], content_r3[0:5], content_r6[0:4],
         content_r7[0:4];

   assign {>>{content_r1}} = {2'b00, cmd_index, card_status};
   assign {>>{content_r3}} = {8'h3f, ocr_high_byte[31:24], ocr_voltage_window,
                              8'h0, 8'hff};
   assign {>>{content_r6}} = {2'b00, cmd_index, rca, card_status[23:22],
                              card_status[19], card_status[12:0]};
   assign {>>{content_r7}} = {2'b00, cmd_index, 20'h00000, cmd8_vhs,
                              cmd_arg[7:0]};

   always @(posedge clk)
     if (!resetn) begin
        resp_no_crc <= 1'b0;
        resp_len <= 0;
     end
     else if (send_resp_i) begin
        resp_no_crc <= resp_no_crc_next;
        resp_len <= resp_len_next;
     end

   reg [7:0]  resp_byte_next;
   reg [4:0]  ram_pos;

   always @(*) begin
      case (resp_cur)
        resp_r2_cid: begin
           ram_pos[4] = 1'b0;
           ram_pos[3:0] = resp_pos - 1;
        end
        resp_r2_csd: begin
           ram_pos[4] = 1'b1;
           ram_pos[3:0] = resp_pos - 1;
        end
        default:
          ram_pos = 'x;
      endcase // case (resp_cur)
   end // always @ (*)

   always @(*)
     case (resp_cur)
       resp_r1:
         resp_byte_next = content_r1[resp_pos];
       resp_r2_cid, resp_r2_csd:
         if (resp_pos == 0)
           resp_byte_next = 8'h3f;
         else if (resp_pos < 17)
           resp_byte_next = ram[ram_pos[4:2]][ram_pos[1:0] * 8 +: 8];
         else
           resp_byte_next = 'x;
       resp_r3:
         resp_byte_next = content_r3[resp_pos];
       resp_r6:
         resp_byte_next = content_r6[resp_pos];
       resp_r7:
         resp_byte_next = content_r7[resp_pos];
       default:
         resp_byte_next = 'x;
     endcase // case (resp_cur)

   always @(posedge clk)
     if (!resetn)
       resp_byte <= 0;
     else
       resp_byte <= resp_byte_next;
endmodule // responder

module card_status_keeper
  (// the card status to send in R1 for the current command
   output reg [31:0] card_status_resp,
   // the card status after the command has been sent
   output [31:0] card_status_real,
   output [3:0] current_state,
   // whether the next command is expected to be an ACMD
   output acmd_expected,

   input got_valid_cmd,
   input got_illegal_cmd,
   input got_ignored_cmd,
   input got_cmd_crc_err,
   // the current command is a defined ACMD
   input acmd_defined,
   input sent_r1,
   input sent_r6,
   input [5:0] cmd_index,
   input [31:0] cmd_arg,
   input rca_match,
   // errors bits to be set in the response to the current command and
   // preventing state change
   input [31:0] errors_response_mode,
   // to change bits externally
   input [31:0] ext_set_bits, ext_clear_bits,

   // status
   input initialization_done,

   input clk,
   input resetn);

   import sd_defs::*;

   reg [31:0] card_status;

   assign card_status_real = card_status;

   assign acmd_expected = card_status[csr_app_cmd];

   assign current_state = card_status[csr_current_state_high:
                                      csr_current_state_low];

   // determine the next state

   reg [3:0]  card_state_next;

   always @(*)
     begin
        card_state_next = current_state;

        case (cmd_index)
          0:
            card_state_next = sd_state_idle;
          2:
            card_state_next = sd_state_ident;
          3:
            card_state_next = sd_state_stby;
          6:
            // ACMD6 does not change the state
            if (!acmd_expected)
              card_state_next = sd_state_data;
          7:
            if (rca_match)
              case (current_state)
                sd_state_stby:
                  card_state_next = sd_state_tran;
                sd_state_dis:
                  card_state_next = sd_state_prg;
              endcase // case (current_state)
            else
              case (current_state)
                sd_state_stby, sd_state_tran, sd_state_data:
                  card_state_next = sd_state_stby;
                sd_state_dis:
                  card_state_next = sd_state_dis;
              endcase // case (current_state)
          12:
            case (current_state)
              sd_state_data:
                card_state_next = sd_state_tran;
              sd_state_rcv:
                card_state_next = sd_state_prg;
            endcase // case (current_state)
          13:
            // CMD13 does not change the state
            if (acmd_expected)
              card_state_next = sd_state_data;
          17:
            card_state_next = sd_state_data;
          18:
            card_state_next = sd_state_data;
          19:
            card_state_next = sd_state_data;
          20:
            card_state_next = sd_state_prg;
          22:
            // CMD22 is undefined
            if (acmd_expected)
              card_state_next = sd_state_data;
          24:
            card_state_next = sd_state_rcv;
          25:
            card_state_next = sd_state_rcv;
          27:
            card_state_next = sd_state_rcv;
          28:
            card_state_next = sd_state_prg;
          29:
            card_state_next = sd_state_prg;
          30:
            card_state_next = sd_state_data;
          38:
            card_state_next = sd_state_prg;
          40:
            card_state_next = sd_state_data;
          41:
            // CMD41 is undefined
            if (acmd_expected)
              if (initialization_done &&
                  cmd_arg[23:8] != 0)
                card_state_next = sd_state_ready;
          42:
            // ACMD42 does not change the state
            if (!acmd_expected)
              card_state_next = sd_state_rcv;
          48:
            card_state_next = sd_state_data;
          49:
            card_state_next = sd_state_rcv;
          51:
            if (acmd_expected)
              card_state_next = sd_state_data;
          58:
            card_state_next = sd_state_data;
          59:
            card_state_next = sd_state_rcv;
        endcase // case (cmd_index)
     end // always @ (*)

   // update the card status

   reg [31:0] card_status_next;

   // The error bits are all implemented as cleared on read, although
   // some are cleared on every command according to the spec.

   wire [31:0] csr_bits_to_set, csr_bits_to_clear;
   assign csr_bits_to_set = ext_set_bits & ~csr_current_state_mask;
   assign csr_bits_to_clear = (ext_clear_bits & ~csr_current_state_mask) |
                              (((sent_r1 ? '1 : 0) |
                                (sent_r6 ? 32'hc801ff : 0)) &
                               csr_error_bits_mask);

   wire [31:0] err_resp_masked = errors_response_mode & csr_error_bits_mask;

   always @(*)
     begin
        card_status_next = card_status;

        (* parallel_case *)
          case (1'b1)
            got_valid_cmd:
              begin
                 card_status_next[csr_app_cmd] = cmd_index == 55;
                 card_status_next |= err_resp_masked;
                 // The state changes only when no response mode errors
                 // have occured.
                 if (!err_resp_masked)
                   card_status_next[csr_current_state_high:
                                    csr_current_state_low] = card_state_next;
              end
            got_illegal_cmd, got_cmd_crc_err, got_ignored_cmd:
              begin
                 card_status_next[csr_com_crc_error] |= got_cmd_crc_err;
                 card_status_next[csr_illegal_command] |= got_illegal_cmd;
                 card_status_next[csr_app_cmd] = 1'b0;
              end
          endcase // case (1'b1)

        card_status_next = (card_status_next | csr_bits_to_set) &
                           ~csr_bits_to_clear;
     end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       card_status <= 0;
     else
       card_status <= card_status_next;

   // the response

   reg [31:0] card_status_resp_next;

   always @(*)
     begin
        card_status_resp_next = card_status;
        card_status_resp_next |= err_resp_masked;
        card_status_resp_next[csr_app_cmd] = cmd_index == 55 || acmd_defined;
     end

   always @(posedge clk)
     if (~resetn)
       card_status_resp <= 0;
     else if (got_valid_cmd)
       card_status_resp <= card_status_resp_next;
endmodule // card_status_keeper

module rca_keeper
  #(parameter bit [15:0] rca_default = 16'haaaa)
   (output reg [15:0] rca,
    output rca_match,
    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input got_valid_cmd,
    input clk,
    input resetn);

   import sd_defs::*;

   assign rca_match = cmd_arg[31:16] == rca;

   // To find the next RCA, we increment the current one.  It is
   // initially 0.

   wire [16:0] rca_next_c = rca + 1;

   always @(posedge clk)
     if (~resetn)
       rca <= '0;
     else if (got_valid_cmd && cmd_index == 3)
       begin
          if (rca == 0)
            rca <= rca_default;
          else if (rca_next_c[16])
            // Avoid an RCA of 0 although the spec says it's the host's
            // responsibility.  To keep us safer from misbehaving hosts.
            rca <= 1;
          else
            rca <= rca_next_c[15:0];
       end
endmodule // rca_keeper

module command_validator
  #(// commands to support
    parameter bit [63:0] support_cmd, support_acmd)
   (// type of command
    output reg valid, ignored, illegal,
    output reg acmd_defined,
    input [5:0] cmd_index,
    input rca_match,
    input acmd_expected,
    input [3:0] current_state,
    // set high to update the output
    input update,
    input clk,
    input resetn);

   import sd_defs::*;

   // determine whether the command is an ACMD

   wire   acmd_defined_c = acmd_expected && support_acmd[cmd_index];

   reg    ignored_c, valid_c;

   // determine whether the command is for us

   always @(*) begin
      // By default, the command is ignored when the card is not in
      // transfer state.
      ignored_c = current_state != sd_state_stby;

      case (cmd_index)
        // broadcast, including CMD7 which also affects cards not
        // addressed
        0, 2, 3, 4, 8, 7:
          ignored_c = 1'b0;

        41:
          if (acmd_expected)
            ignored_c = 1'b0;

        // addressed by rca
        9, 10, 15, 55:
          ignored_c = !rca_match;

        // CMD13 which is different from ACMD13
        13:
          if (acmd_expected)
            ignored_c = current_state != sd_state_stby;
          else
            ignored_c = !rca_match;
      endcase // case (cmd_index)
   end // always @ (*)

   // determine whether the command is valid

   always @(*)
     if (ignored_c)
       valid_c = 1'b0;
     else if (!(support_cmd[cmd_index] ||
                (support_acmd[cmd_index] && acmd_expected)))
       // ensure this command is enabled in the parameters
       valid_c = 1'b0;
     else
       begin
          // default to command valid in transfer state
          valid_c = current_state == sd_state_tran;

          // special cases
          case (cmd_index)
            0:
              valid_c = 1'b1;
            2:
              valid_c = current_state == sd_state_ready;
            3:
              valid_c = current_state == sd_state_ident ||
                        current_state == sd_state_stby;
            4:
              valid_c = current_state == sd_state_stby;
            7:
              if (rca_match)
                valid_c = current_state == sd_state_stby ||
                          current_state == sd_state_dis;
              else
                valid_c = current_state == sd_state_stby ||
                          current_state == sd_state_tran ||
                          current_state == sd_state_data ||
                          current_state == sd_state_prg;
            8:
              valid_c = current_state == sd_state_idle;
            9, 10:
              valid_c = current_state == sd_state_stby;
            11:
              valid_c = current_state == sd_state_ready;
            12:
              valid_c = current_state == sd_state_data ||
                        current_state == sd_state_rcv;
            13, 15:
              // exclude ACMD13
              if (!(cmd_index == 13 && acmd_expected))
                valid_c = current_state == sd_state_stby ||
                               current_state == sd_state_tran ||
                               current_state == sd_state_data ||
                               current_state == sd_state_rcv ||
                               current_state == sd_state_prg ||
                               current_state == sd_state_dis;
            55:
              valid_c = current_state == sd_state_idle ||
                        current_state == sd_state_stby ||
                        current_state == sd_state_tran ||
                        current_state == sd_state_data ||
                        current_state == sd_state_rcv ||
                        current_state == sd_state_prg ||
                        current_state == sd_state_dis;
            41:
              if (acmd_expected)
                valid_c = current_state == sd_state_idle;
          endcase // case (cmd_index)
       end // else: !if(!(support_cmd[cmd_index] ||...

   // output

   always @(posedge clk)
     if (~resetn) begin
        valid <= 1'b0;
        ignored <= 1'b0;
        illegal <= 1'b0;
        acmd_defined <= 1'b0;
     end
     else if (update) begin
        valid <= valid_c;
        ignored <= ignored_c;
        illegal <= ~(valid_c | ignored_c);
        acmd_defined <= acmd_defined_c;
     end

endmodule // command_validator

module set_dat3_pullup
  (output reg sd_dat3_pullup_off,
   input [5:0] cmd_index,
   input [31:0] cmd_arg,
   input acmd_defined,
   input got_valid_cmd,
   input clk,
   input resetn);

   always @(posedge clk)
     if (~resetn)
       sd_dat3_pullup_off <= 1'b0;
     else if (got_valid_cmd && acmd_defined && cmd_index == 42)
       sd_dat3_pullup_off <= !cmd_index[0];
endmodule // set_dat3_pullup

module inactive_keeper
  #(// Voltage range required in ACMD41.  The card goes into inactive
    // state when the first ACMD41 with bits 23:8 of the argument not
    // zero but zero when bitwise anded with acmd41_voltage_range.
    parameter bit [23:8] ocr_voltage_window,
    // The number of clocks resetn_out will be low after a CMD0
    parameter reset_clocks_cmd0 = 1)
   (output resetn_out,
    output is_inactive,
    output device_reset,

    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input acmd,
    input got_valid_cmd,
    input got_any_cmd,
    input clk,
    input resetn_in);

   reg [reset_clocks_cmd0-1:0] got_cmd0;
   reg                         inactive;
   reg                         got_acmd41_non_query;
   reg                         acmd41_bad_voltage_range,
                               got_acmd41_non_query_next;

   always @(posedge clk)
     if (~resetn_in)
       got_cmd0 <= 0;
     else
       got_cmd0 <= (got_cmd0 << 1) | (got_any_cmd && cmd_index == 0);

   assign device_reset = got_cmd0[0];

   always @(*) begin
      got_acmd41_non_query_next = got_acmd41_non_query;
      acmd41_bad_voltage_range = 1'b0;
      // first non-query mode ACMD41
      if (~got_acmd41_non_query && cmd_index == 41 && acmd &&
          cmd_arg[23:8] != 0) begin
         got_acmd41_non_query_next = 1'b1;
         if ((cmd_arg[23:8] & ocr_voltage_window) == 0)
           acmd41_bad_voltage_range = 1'b1;
      end
   end

   always @(posedge clk)
     if (~resetn_in) begin
        inactive <= 1'b0;
        got_acmd41_non_query <= 1'b0;
     end
     else if (got_valid_cmd) begin
        inactive <= inactive || (got_valid_cmd && (cmd_index == 15 ||
                                                   acmd41_bad_voltage_range));
        got_acmd41_non_query <= got_acmd41_non_query_next;
     end

   assign resetn_out = resetn_in & !(inactive || got_cmd0);
   assign is_inactive = inactive;
endmodule // inactive_keeper

module device
  #(// Commands to support
    parameter bit [63:0] support_cmd = ((1 << 0) |
                                        (1 << 2) |
                                        (1 << 3) |
                                        (1 << 4) |
                                        (1 << 6) |
                                        (1 << 7) |
                                        (1 << 8) |
                                        (1 << 9) |
                                        (1 << 12) |
                                        (1 << 13) |
                                        (1 << 15) |
                                        (1 << 16) |
                                        (1 << 17) |
                                        (1 << 18) |
                                        (1 << 55) |
                                        (1 << 56)),
    parameter bit [63:0] support_acmd = ((1 << 6) |
                                         (1 << 13) |
                                         (1 << 41) |
                                         (1 << 42) |
                                         (1 << 51)),
    // Voltage range required in ACMD41
    parameter bit [15:0] ocr_voltage_window = 16'hff80)
   (// To manually set and clear bits in the card status.  Bits 12 to 9
    // current_state cannot be changed this way.  Some error bits which
    // are cleared when a response is sent can be set but not cleared
    // this way.
    input [31:0] csr_set_bits, csr_clr_bits,
    input [31:24] ocr_high_byte,

    // To write to CID and CSD.  Addresses 0 to 3 are CID.  4 to 7 are
    // CSD.  Checksum is computed by the CPU.
    input write_ram_en,
    input [2:0] write_ram_addr,
    input [31:0] write_ram_data,

    output [31:0] card_status_out,
    output reg got_cmd8,
    output device_reset,
    output acmd_expected_out,
    output [5:0] cmd_index,
    output [31:0] cmd_arg,
    output got_new_cmd,
    output is_inactive,

    input sd_clk_i,
    input sd_cmd_i,
    output sd_cmd_o, sd_cmd_t,
    input [3:0] sd_dat_i,
    output [3:0] sd_dat_o, sd_dat_t,
    output sd_dat3_pullup_off,

    input clk,
    input resetn_in);

   enum   {
           idle,
           validating_cmd,
           // 2 clocks are used to update the status because some status
           // changes depend on others
           updating_status_1,
           updating_status_2,
           responding
           } state, state_next;

   wire   acmd_defined, cmd_valid, cmd_ignored, cmd_illegal;
   wire   update_1 = state_next == updating_status_1,
          update_2 = state_next == updating_status_2;

   wire   resetn;

   // Cmd interface

   wire        cmd_received, cmd_read_crc_err;

   wire [4:0]  resp_pos;
   wire        resp_no_crc;
   wire [4:0]  resp_len_bytes;
   wire [3:0]  resp_delay;
   wire        send_resp;
   wire [7:0]  resp_byte;
   reg         send_no_resp;

   always @(posedge clk)
     if (~resetn)
       send_no_resp <= 1'b0;
     else
       send_no_resp <= (state == validating_cmd && !cmd_valid) ||
                       (state == responding && !send_resp);

   cmd_if cmd_if(.read_done(cmd_received),
                 .read_crc_err(cmd_read_crc_err),
                 .cmd_index,
                 .cmd_arg,
                 .write_done(),
                 .write_timeout(),
                 .write_byte_index(resp_pos),
                 .write_byte(resp_byte),
                 .resp_len_bytes(resp_len_bytes),
                 .write_delay(resp_delay),
                 .write_no_crc(resp_no_crc),
                 .write_start(send_resp),
                 .do_not_write(send_no_resp),
                 .sd_clk_i,
                 .sd_cmd_i,
                 .sd_cmd_o,
                 .sd_cmd_t,
                 .clk,
                 .resetn);

   wire        cmd_received_good = cmd_received && !cmd_read_crc_err;

   // Reset the system when in the inactive state or CMD0 is received

   inactive_keeper #(.ocr_voltage_window(ocr_voltage_window))
   inactive_keeper(.resetn_out(resetn),
                   .is_inactive,
                   .device_reset,
                   .cmd_index,
                   .cmd_arg,
                   .acmd(acmd_defined),
                   .got_valid_cmd(update_1),
                   .got_any_cmd(cmd_received_good),
                   .clk,
                   .resetn_in(resetn_in));

   // RCA

   wire [15:0] rca;
   wire        rca_match;

   rca_keeper rca_keeper(.rca,
                         .rca_match,
                         .cmd_index,
                         .cmd_arg,
                         .got_valid_cmd(update_1),
                         .clk,
                         .resetn);

   // CMD8 status

   always @(posedge clk)
     if (~resetn)
       got_cmd8 <= 1'b0;
     else if (update_1)
       got_cmd8 <= 1'b1;

   // Card status

   wire [31:0] card_status_resp, card_status_real;
   wire [3:0]  csr_current_state;
   wire        acmd_expected;

   wire        initialization_done = ocr_high_byte[31];
   wire        sent_r1, sent_r6;
   reg         cmd_crc_err_stb, cmd_illegal_stb, cmd_ignored_stb;

   always @(posedge clk)
     if (~resetn) begin
        cmd_crc_err_stb <= 1'b0;
        cmd_illegal_stb <= 1'b0;
        cmd_ignored_stb <= 1'b0;
     end
     else begin
        cmd_crc_err_stb <= cmd_received && cmd_read_crc_err;
        cmd_illegal_stb <= state == validating_cmd && cmd_illegal;
        cmd_ignored_stb <= state == validating_cmd && cmd_ignored;
     end

   card_status_keeper
     card_status_keeper(.card_status_resp,
                        .card_status_real,
                        .current_state(csr_current_state),
                        .acmd_expected,
                        .got_valid_cmd(update_2),
                        .got_illegal_cmd(cmd_illegal_stb),
                        .got_ignored_cmd(cmd_ignored_stb),
                        .got_cmd_crc_err(cmd_crc_err_stb),
                        .acmd_defined,
                        .sent_r1,
                        .sent_r6,
                        .cmd_index,
                        .cmd_arg,
                        .rca_match,
                        .errors_response_mode(0),
                        .ext_set_bits(csr_set_bits),
                        .ext_clear_bits(csr_clr_bits),
                        .initialization_done,
                        .clk,
                        .resetn);

   // Validate the command

   command_validator #(.support_cmd(support_cmd),
                       .support_acmd(support_acmd))
   command_validator(.valid(cmd_valid),
                     .illegal(cmd_illegal),
                     .ignored(cmd_ignored),
                     .acmd_defined(acmd_defined),
                     .cmd_index,
                     .rca_match,
                     .acmd_expected,
                     .current_state(csr_current_state),
                     .update(cmd_received_good),
                     .clk,
                     .resetn);

   // Generate the response

   responder #(.ocr_voltage_window(ocr_voltage_window))
   responder(.resp_pos,
             .resp_byte,
             .resp_no_crc,
             .resp_len(resp_len_bytes),
             .resp_delay,
             .send_resp_o(send_resp),
             .card_status(card_status_resp),
             .write_ram_en,
             .write_ram_addr,
             .write_ram_data,
             .ocr_high_byte,
             .rca,
             .cmd_index,
             .cmd_arg,
             .rca_match,
             .acmd(acmd_defined),
             .send_resp_i(state_next == responding),
             .sent_r1,
             .sent_r2_cid(),
             .sent_r2_csd(),
             .sent_r3(),
             .sent_r6,
             .sent_r7(),
             .clk,
             .resetn);

   // The pullup on dat3

   set_dat3_pullup set_dat3_pullup(.sd_dat3_pullup_off,
                                   .cmd_index,
                                   .cmd_arg,
                                   .acmd_defined,
                                   .got_valid_cmd(update_1),
                                   .clk,
                                   .resetn);

   // Control the modules

   always @(*) begin
      state_next = state;
      case (state)
        idle:
          if (cmd_received_good)
            state_next = validating_cmd;
        validating_cmd:
          if (cmd_valid)
            state_next = updating_status_1;
          else
            state_next = idle;
        updating_status_1:
          state_next = updating_status_2;
        updating_status_2:
          state_next = responding;
        responding:
          state_next = idle;
        default:
          state_next = idle;
      endcase // case (state)
   end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       state <= idle;
     else
       state <= state_next;

   // Output for the CPU

   assign got_new_cmd = update_2;
   assign acmd_expected_out = acmd_defined;
   assign card_status_out = card_status_real;

   // Whatever uses the dat lines are not implemented yet.

   assign sd_dat_o = '1;
   assign sd_dat_t = '1;
endmodule // device
