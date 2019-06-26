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
    output [2:0] ram_addr,
    input [31:0] ram_data,
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

   // The length of the response and whether crc is sent

   reg       resp_no_crc_next;
   reg [4:0] resp_len_next;

   always @(*)
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

   always @(posedge clk)
     if (!resetn) begin
        resp_no_crc <= 1'b0;
        resp_len <= 0;
        resp_cur <= resp_none;
     end
     else if (send_resp_i) begin
        resp_no_crc <= resp_no_crc_next;
        resp_len <= resp_len_next;
        resp_cur <= resp_next;
     end

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

   reg [7:0]  resp_byte_next;
   reg [4:0]  ram_byte_pos;

   always @(*) begin
      case (resp_cur)
        resp_r2_cid: begin
           ram_byte_pos[4] = 1'b0;
           ram_byte_pos[3:0] = resp_pos - 1;
        end
        resp_r2_csd: begin
           ram_byte_pos[4] = 1'b1;
           ram_byte_pos[3:0] = resp_pos - 1;
        end
        default:
          ram_byte_pos = 'x;
      endcase // case (resp_cur)
   end // always @ (*)

   assign ram_addr = ram_byte_pos[4:2];

   always @(*)
     case (resp_cur)
       resp_r1:
         resp_byte_next = content_r1[resp_pos];
       resp_r2_cid, resp_r2_csd:
         if (resp_pos == 0)
           resp_byte_next = 8'h3f;
         else if (resp_pos < 17)
           resp_byte_next = ram_data[{~ram_byte_pos[1:0]} * 8 +: 8];
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
   output got_cmd_error_free,

   input got_valid_cmd,
   input got_illegal_cmd,
   input got_ignored_cmd,
   input got_cmd_crc_err,
   // the current command is a defined ACMD
   input acmd_defined,
   input sent_r1,
   input sent_r6,
   input dat_start_read_block,
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

   // data transfer finished
   input data_reading_half_closed,
   input data_reading_closed,
   input data_writing_closed,

   // The dat line should indicate busy.  It is low when we're reading
   // and the buffer is full.  The other parts take care of it.
   output dat_busy_out,

   input clk,
   input resetn);

   import sd_defs::*;

   reg [31:0] card_status, card_status_read;

   assign card_status_real = card_status_read;

   assign acmd_expected = card_status[csr_app_cmd];

   assign current_state = card_status[csr_current_state_high:
                                      csr_current_state_low];

   wire [31:0] err_resp_masked = errors_response_mode & csr_error_bits_mask;

   assign got_cmd_error_free = got_valid_cmd && !err_resp_masked;

   assign dat_busy_out = current_state == sd_state_prg;

   // determine the next state

   reg [3:0]  current_state_next;

   always @(*)
     begin
        current_state_next = current_state;

        // Change the current state when a command is received

        if (got_cmd_error_free)
          case (cmd_index)
            0:
              current_state_next = sd_state_idle;
            2:
              current_state_next = sd_state_ident;
            3:
              current_state_next = sd_state_stby;
            6:
              // ACMD6 does not change the state
              if (!acmd_expected)
                current_state_next = sd_state_data;
            7:
              if (rca_match)
                case (current_state)
                  sd_state_stby:
                    current_state_next = sd_state_tran;
                  sd_state_dis:
                    current_state_next = sd_state_prg;
                endcase // case (current_state)
              else
                case (current_state)
                  sd_state_stby, sd_state_tran, sd_state_data:
                    current_state_next = sd_state_stby;
                  sd_state_dis:
                    current_state_next = sd_state_dis;
                endcase // case (current_state)
            12:
              case (current_state)
                sd_state_data:
                  current_state_next = sd_state_tran;
                sd_state_rcv:
                  current_state_next = sd_state_prg;
              endcase // case (current_state)
            13:
              // CMD13 does not change the state
              if (acmd_expected)
                current_state_next = sd_state_data;
            17:
              current_state_next = sd_state_data;
            18:
              current_state_next = sd_state_data;
            19:
              current_state_next = sd_state_data;
            20:
              current_state_next = sd_state_prg;
            22:
              // CMD22 is undefined
              if (acmd_expected)
                current_state_next = sd_state_data;
            24:
              current_state_next = sd_state_rcv;
            25:
              current_state_next = sd_state_rcv;
            27:
              current_state_next = sd_state_rcv;
            28:
              current_state_next = sd_state_prg;
            29:
              current_state_next = sd_state_prg;
            30:
              current_state_next = sd_state_data;
            38:
              current_state_next = sd_state_prg;
            40:
              current_state_next = sd_state_data;
            41:
              // CMD41 is undefined
              if (acmd_expected)
                if (initialization_done &&
                    cmd_arg[23:8] != 0)
                  current_state_next = sd_state_ready;
            42:
              // ACMD42 does not change the state
              if (!acmd_expected)
                current_state_next = sd_state_rcv;
            48:
              current_state_next = sd_state_data;
            49:
              current_state_next = sd_state_rcv;
            51:
              if (acmd_expected)
                current_state_next = sd_state_data;
            58:
              current_state_next = sd_state_data;
            59:
              current_state_next = sd_state_rcv;
          endcase // case (cmd_index)

        // Change the state when data transfer finishes

        else
          case (current_state)
            sd_state_data:
              if (data_writing_closed)
                current_state_next = sd_state_tran;
            sd_state_rcv:
              // Not listed in the card state transition table in SD
              // Physical Layer Simplified Specification Ver. 6.00, but
              // shown in the diagram and is also reasonable.
              if (data_reading_half_closed)
                current_state_next = sd_state_prg;
            sd_state_prg:
              if (data_reading_closed)
                current_state_next = sd_state_tran;
            sd_state_dis:
              if (data_reading_closed)
                current_state_next = sd_state_stby;
          endcase // case (current_state)
     end // always @ (*)

   // update the card status

   reg [31:0] card_status_next;

   // The error bits are all implemented as cleared on read, although
   // some are cleared on every command according to the SD spec.

   wire [31:0] csr_bits_to_set, csr_bits_to_clear;
   assign csr_bits_to_set = ext_set_bits & ~csr_current_state_mask &
                            ~(32'h1 << csr_ready_for_data);
   assign csr_bits_to_clear = (ext_clear_bits & ~csr_current_state_mask) |
                              (((sent_r1 ? '1 : 0) |
                                (sent_r6 ? 32'hc801ff : 0)) &
                               csr_error_bits_mask);

   always @(*)
     begin
        card_status_next = card_status;

        (* parallel_case *)
          case (1'b1)
            got_valid_cmd:
              begin
                 card_status_next[csr_app_cmd] = cmd_index == 55;
                 card_status_next |= err_resp_masked;
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

        // Change the current state
        card_status_next[csr_current_state_high:
                         csr_current_state_low] = current_state_next;
     end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       card_status <= 0;
     else
       card_status <= card_status_next;

   // the response

   reg [31:0] card_status_resp_next;
   reg        ready_for_data_next;

   always @(*)
     case (current_state)
       sd_state_rcv:
         ready_for_data_next = dat_start_read_block;
       sd_state_prg, sd_state_dis:
         ready_for_data_next = 1'b0;
       default:
         ready_for_data_next = 1'b1;
     endcase // case (current_state)

   always @(*) begin
      card_status_read = card_status;
      card_status_read[csr_ready_for_data] = ready_for_data_next;
   end

   always @(*) begin
      card_status_resp_next = card_status_read;
      card_status_resp_next |= err_resp_masked;
      card_status_resp_next[csr_app_cmd] = cmd_index == 55 || acmd_defined;
   end

   always @(posedge clk)
     if (~resetn)
       card_status_resp <= 32'h1 << csr_ready_for_data;
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
      // By default, the command is ignored when the card is not selected.
      ignored_c = !(current_state == sd_state_stby ||
                    current_state == sd_state_tran ||
                    current_state == sd_state_data ||
                    current_state == sd_state_rcv ||
                    current_state == sd_state_prg);

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
          if (!acmd_expected)
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
    output got_reset_cmd,

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
     else if (got_any_cmd && cmd_index == 0)
       got_cmd0 <= '1;
     else
       got_cmd0 <= got_cmd0 << 1;

   assign got_reset_cmd = got_cmd0[0];

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

   assign resetn_out = resetn_in && !got_cmd0[reset_clocks_cmd0 - 1] &&
                       !inactive;
   assign is_inactive = inactive;
endmodule // inactive_keeper

module dat_controller
  #(parameter word_size = 32,
    parameter block_size_max = 4096 / word_size)
   (// Data out
    output [word_size - 1:0] data_out,

    // Writing or reading data may require the CPU.  It is possible that
    // a read or write operation is interrupted by a command received on
    // the SD bus, and then another one is started.  If the interval is
    // too short, the CPU may still be writing or expecting data for the
    // closed operation.  To prevent erronous data being written or data
    // read being discarded in this case, this controller first goes
    // into a half open state when a command to transfer data is
    // received.  In the half open states, data written by the CPU is
    // discarded, and no data will be read by the CPU.  sys_ack is high
    // when the CPU reads the information about the data transfer.  Then
    // the CPU terminates any ongoing data transfer to or from this
    // module.  Then it sets sys_start.

    input sys_ack,
    input sys_start,

    // Data input from the system
    input [word_size - 1:0] data_in_sys,
    // The data is new
    input sys_write_en,
    // The system may write data
    output reg sys_may_write,
    // The system has written all the data
    input sys_no_more_data,
    // The system wants to read data
    input sys_read_not_full,
    // The system may read more data
    output reg sys_may_read,
    output reading_half_closed,
    output reading_closed,
    output writing_closed,

    // The device may start writing a new block
    output reg dev_start_write,
    input dev_wrote_new_word,
    input dev_wrote_all,
    // The device may start reading a new block
    output reg dev_start_read,
    // The device has read a new block, asserted after the last time
    // data_in_dev_is_new was high in when a block is read
    input dev_got_new_block,
    input dev_read_crc_err,
    // The device read a new word
    input dev_read_new_word,
    // Data input from the device
    input [word_size - 1:0] data_in_dev,

    output reg [31:0] dev_blocks_read,
    input [3:0] csr_current_state,
    // The number of blocks to read or write
    input [31:0] block_limit,
    input block_limit_used,

    output reg dat_width_4,
    output reg invalid_dat_width,
    output dev_read_mode,
    output dev_write_mode,
    output dat_en,
    output reg [$clog2(block_size_max * word_size + 1) - 1:0] block_size,

    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input acmd,
    input got_valid_cmd,

    input clk,
    input resetn);

   import sd_defs::*;

   // The states

   enum   {
           state_idle,
           state_reading,
           state_reading_half_closed,
           state_reading_closed,
           state_writing,
           state_writing_half_closed,
           state_writing_closed
           } state, state_next;

   enum   {
           sys_state_closed,
           sys_state_acknowledged,
           sys_state_ready
           } sys_state, sys_state_next;

   wire   sys_ready = sys_state == sys_state_ready;

   always @(*) begin
      sys_state_next = sys_state;
      case (sys_state)
        sys_state_closed:
          if (sys_ack)
            sys_state_next = sys_state_acknowledged;
        sys_state_acknowledged:
          if (sys_start)
            sys_state_next = sys_state_ready;
        sys_state_ready:
          ;
        default:
          sys_state_next = sys_state_closed;
      endcase // case (sys_state)
   end // always @ (*)

   always @(posedge clk)
     if (!resetn || !(state_next == state_reading ||
                      state_next == state_reading_half_closed ||
                      state_next == state_writing))
       sys_state <= sys_state_closed;
     else
       sys_state <= sys_state_next;

   // The FIFO

   localparam fifo_addr_high = 9;
   localparam block_addr_low = $clog2(block_size_max);

   wire [word_size - 1:0]  fifo_data_out;
   wire                    fifo_empty, fifo_full, fifo_resetn;
   wire [fifo_addr_high:0] fifo_rdaddr_cur, fifo_rdaddr_next, fifo_wraddr;
   reg [word_size - 1:0]   fifo_data_in;
   reg                     fifo_read_en, fifo_write_en;

   assign data_out = fifo_data_out;

   fifo_fwft
     #(.word_size(word_size),
       .logdepth(fifo_addr_high))
   fifo
     (.data_out(fifo_data_out),
      .addr_out_cur(fifo_rdaddr_cur),
      .addr_out_next(fifo_rdaddr_next),
      .empty(fifo_empty),
      .read_en(fifo_read_en),
      .data_in(fifo_data_in),
      .addr_write(fifo_wraddr),
      .full(fifo_full),
      .write_en(fifo_write_en),
      .clk(clk),
      .resetn(fifo_resetn));

   // Keep track of where the last good block ends.  Because while a
   // block is being read on the dat lines, we don't know whether it's
   // valid until we get the CRC.  Also keep track of how many blocks
   // we've read for ACMD22.

   reg [fifo_addr_high:block_addr_low] dev_last_block;

   always @(posedge clk)
     if (!resetn || !(state_next == state_reading ||
                      state_next == state_reading_half_closed)) begin
        dev_last_block <= 0;
        dev_blocks_read <= 0;
     end
     else if (state == state_reading && dev_got_new_block &&
              !dev_read_crc_err) begin
        dev_last_block <= fifo_wraddr[fifo_addr_high:block_addr_low];
        dev_blocks_read <= dev_blocks_read + 1;
     end

   // When to reset the fifo

   assign fifo_resetn = !(!resetn ||
                          !(state == state_reading ||
                            state == state_reading_half_closed ||
                            state == state_writing ||
                            state == state_writing_half_closed));

   // FIFO input

   wire                   write_ok;
   reg                    sys_may_write_next;

   assign write_ok = !(!fifo_resetn || fifo_wraddr - fifo_rdaddr_next >
                       (1 << fifo_addr_high) - block_size_max);

   always @(*) begin
      fifo_data_in = 'x;
      fifo_write_en = 1'b0;
      sys_may_write_next = 1'b0;
      dev_start_read = 1'b0;
      case (state)
        state_writing: begin
           fifo_data_in = data_in_sys;
           fifo_write_en = sys_ready && sys_write_en;
           sys_may_write_next = sys_ready && write_ok;
        end
        state_reading: begin
           fifo_data_in = data_in_dev;
           fifo_write_en = dev_read_new_word;
           dev_start_read = write_ok;
        end
      endcase // case (state)
   end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       sys_may_write <= 1'b0;
     else
       sys_may_write <= sys_may_write_next;

   // When data is read

   reg                                  read_available_next, sys_may_read_next;
   wire                                 sys_fifo_read_en;

   assign sys_fifo_read_en = sys_ready && sys_read_not_full && sys_may_read;

   always @(*) begin
      sys_may_read_next = 1'b0;
      fifo_read_en = 1'b0;
      dev_start_write = 1'b0;

      if (sys_fifo_read_en)
        read_available_next = (fifo_rdaddr_next >> block_addr_low) !=
                              dev_last_block;
      else
        read_available_next = (fifo_rdaddr_cur >> block_addr_low) !=
                              dev_last_block;

      case (state)
        state_reading, state_reading_half_closed: begin
           sys_may_read_next = sys_ready && read_available_next;
           fifo_read_en = sys_fifo_read_en;
        end
        state_writing: begin
           fifo_read_en = dev_wrote_new_word;
           dev_start_write = fifo_wraddr - fifo_rdaddr_next >= block_size_max;
        end
           state_writing_half_closed: begin
              fifo_read_en = dev_wrote_new_word;
              // When less than 4096 bits are to be written on the dat line,
              // almostempty will always be 1.
              dev_start_write = !fifo_empty;
           end
      endcase // case (state)
   end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       sys_may_read <= 1'b0;
     else
       sys_may_read <= sys_may_read_next;

   // Tell the system when to stop

   assign reading_half_closed = state == state_reading_half_closed ||
                                state == state_reading_closed;
   assign reading_closed = state == state_reading_closed;
   assign writing_closed = state == state_writing_closed;

   // Tell the bus interface when to send or receive

   assign dev_read_mode = state == state_reading;
   assign dev_write_mode = state == state_writing ||
                           state == state_writing_half_closed;
   assign dat_en = !(!fifo_resetn) && (dev_read_mode || dev_write_mode);

   // State changes

   wire sd_state_writing, sd_state_reading;
   assign sd_state_writing = csr_current_state == sd_state_data;
   assign sd_state_reading = csr_current_state == sd_state_rcv;
   reg  multi_block_mode;

   always @(*) begin
      state_next = state;
      case (state)
        state_idle:
          if (sd_state_reading)
            state_next = state_reading;
          else if (sd_state_writing)
            state_next = state_writing;
        state_reading:
          if (!sd_state_reading || (dev_got_new_block && dev_read_crc_err) ||
              (multi_block_mode ?
               (block_limit_used && dev_blocks_read >= block_limit) :
               dev_blocks_read >= 1))
            state_next = state_reading_half_closed;
        state_reading_half_closed:
          if (sys_ready && !read_available_next)
            state_next = state_reading_closed;
        state_reading_closed:
          if (!(csr_current_state == sd_state_rcv ||
                csr_current_state == sd_state_prg ||
                csr_current_state == sd_state_dis))
            state_next = state_idle;
        state_writing:
          if (!sd_state_writing)
            state_next = state_idle;
          else if (sys_ready && sys_no_more_data)
            state_next = state_writing_half_closed;
        state_writing_half_closed:
          if (!sd_state_writing)
            state_next = state_idle;
          else if (dev_wrote_all && fifo_empty)
            state_next = state_writing_closed;
        state_writing_closed:
          if (!sd_state_writing)
            state_next = state_idle;
        default:
          state_next = state_idle;
      endcase // case (state)
   end // always @ (*)

   always @(posedge clk)
     if (~resetn)
       state <= state_idle;
     else
       state <= state_next;

   // Width

   reg dat_width_4_next, invalid_dat_width_next;

   always @(*) begin
      invalid_dat_width_next = 1'b0;
      case (cmd_arg[1:0])
        2'b00:
          dat_width_4_next = 1'b0;
        2'b10:
          dat_width_4_next = 1'b1;
        default: begin
           dat_width_4_next = dat_width_4;
           invalid_dat_width_next = 1'b1;
        end
      endcase // case (cmd_arg[1:0])
   end // always @ (*)

   always @(posedge clk)
     if (~resetn) begin
        dat_width_4 <= 1'b0;
        invalid_dat_width <= 1'b0;
     end
     else if (got_valid_cmd && cmd_index == 6 && acmd) begin
        dat_width_4 <= dat_width_4_next;
        invalid_dat_width <= invalid_dat_width_next;
     end
     else if (got_valid_cmd)
       invalid_dat_width <= 1'b0;

   // Block size

   reg                                                multi_block_mode_next;
   reg [$clog2(block_size_max * word_size + 1) - 1:0] block_size_next;

   always @(*) begin
      block_size_next = 'x;
      multi_block_mode_next = 1'bx;

      case (cmd_index)
        17, 18, 24, 25, 56:
          block_size_next = 4096;
        19:
          block_size_next = 512;
        27:
          block_size_next = 128;
        13:
          if (acmd)
            block_size_next = 512;
        22:
          if (acmd)
            block_size_next = 32;
        51:
          if (acmd)
            block_size_next = 64;
        default:
          ;
      endcase // case (cmd_index)

      case (cmd_index)
        18, 25:
          multi_block_mode_next = 1'b1;
        default:
          multi_block_mode_next = 1'b0;
      endcase // case (cmd_index)
   end // always @ (*)

   always @(posedge clk)
     if (~resetn) begin
        block_size <= 4096;
        multi_block_mode <= 1'b0;
     end
     else if (state == state_idle && state_next != state_idle) begin
        block_size <= block_size_next;
        multi_block_mode <= multi_block_mode_next;
     end
endmodule // dat_controller

module fifo_fwft
  #(parameter word_size = 1,
    parameter logdepth = 1)
   (output reg [word_size - 1:0] data_out,
    // The address of the current output
    output reg [logdepth:0] addr_out_cur,
    // The address of the next output
    output [logdepth:0] addr_out_next,
    output reg empty,
    input read_en,

    input [word_size - 1:0] data_in,
    output reg [logdepth:0] addr_write,
    output full,
    input write_en,

    input clk,
    input resetn);

   reg [word_size - 1:0] ram[0:(1 << logdepth) - 1];

   // An extra bit is used in the addresses to differentiate between
   // full and empty.
   reg [logdepth:0]      addr_read, addr_write;

   // Whether the ram is empty.  It does not imply the entire FIFO is
   // empty because there may be data in the output register.
   wire                  ram_empty = addr_read == addr_write;
   wire                  ram_full = (addr_read ^ (1 << logdepth)) == addr_write;
   assign full = ram_full;

   // Read

   always @(posedge clk)
     if (~resetn) begin
        data_out <= 0;
        addr_read <= 0;
        addr_out_cur <= 0;
        empty <= 1'b1;
     end
     else if (!ram_empty && (empty || read_en)) begin
        data_out <= ram[addr_read[logdepth - 1:0]];
        addr_read <= addr_read + 1;
        addr_out_cur <= addr_read;
        empty <= 1'b0;
     end
     else if (ram_empty && read_en)
       empty <= 1'b1;

   assign addr_out_next = addr_read;

   // Write

   always @(posedge clk)
     if (~resetn)
       addr_write <= 0;
     else if (!ram_full && write_en) begin
        addr_write <= addr_write + 1;
        ram[addr_write[logdepth - 1:0]] <= data_in;
     end
endmodule // fifo_fwft

// Check that the argument is within its range for some commands

module range_check
  (output reg out_of_range,
   input [31:0] size,
   input [5:0] cmd_index,
   input [31:0] cmd_arg,
   input acmd,
   input got_valid_cmd,
   input clk,
   input resetn);

   reg   out_of_range_next;

   always @(*)
     if (!acmd)
       case (cmd_index)
         17, 18, 24, 25:
           out_of_range_next = cmd_arg > size;
         default:
           out_of_range_next = 1'b0;
       endcase // case (cmd_index)
     else
       out_of_range_next = 1'b0;

   always @(posedge clk)
     if (~resetn)
       out_of_range <= 1'b0;
     else if (got_valid_cmd)
       out_of_range <= out_of_range_next;
endmodule // range_check

// Save the commands that involve the CPU and the necesary information
// received from the previous commands.  For example if the host sends
// CMD18 READ_MULTIPLE_BLOCK, and right after which CMD13 SEND_STATUS.
// The CPU will get a signal to wake up when the CMD25 is received.  But
// maybe we have already received the CMD13 when the CPU reads the last
// command received.  The CPU knows what data it should write by reading
// the command saved here.  Only one command is saved at a time.

module cmd_info_keeper
  #(parameter bit [63:0] save_cmd = ((1 << 0) |
                                     (1 << 6) |
                                     (1 << 12) |
                                     (1 << 17) |
                                     (1 << 18) |
                                     (1 << 23) |
                                     (1 << 24) |
                                     (1 << 25) |
                                     (1 << 27) |
                                     (1 << 38)),
    parameter bit [63:0] save_acmd = ((1 << 13) |
                                      (1 << 22) |
                                      (1 << 23) |
                                      (1 << 41) |
                                      (1 << 51)))
   (output reg [5:0] saved_cmd_index,
    output reg [31:0] saved_cmd_arg,
    output reg saved_cmd_is_acmd,
    output reg new_cmd_saved,
    output reg [31:0] erase_start, erase_end,
    output reg erase_seq_error, erase_reset,
    output reg [31:0] block_count,
    output reg block_count_used,
    output reg [22:0] pre_erase_count,
    output reg pre_erase_count_used,
    output reg got_cmd8,

    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input acmd,
    // A command is received
    input got_valid_cmd,
    // A command is received that has no response mode errors
    input got_cmd_error_free,

    input clk,
    input resetn);

   genvar i;

   wire   save_current_cmd;

   // Erase sequence

   localparam bit [5:0] erase_commands[0:2] = '{32, 33, 38};
   reg [1:0]            erase_step, erase_step_next;
   reg                  erase_seq_error_next, erase_reset_next;
   reg [31:0]           erase_vars[0:1];

   generate
      for (i = 0; i < 2; i = i + 1) begin:save_erase_vars
         always @(posedge clk)
           if (~resetn)
             erase_vars[i] <= 0;
           else if (got_valid_cmd && cmd_index == erase_commands[i])
             erase_vars[i] <= cmd_arg;
      end
   endgenerate

   always @(*) begin:erase_seq
      bit     is_erase_cmd;
      erase_seq_error_next = 1'b0;
      erase_reset_next = 1'b0;

      // determine whether this command is in the erase sequence
      is_erase_cmd = 1'b0;
      foreach (erase_commands[i])
        if (cmd_index == erase_commands[i])
          is_erase_cmd = 1'b1;

      // CMD13 is the only command that can be inserted into the erase
      // sequence
      if (cmd_index == 13 && !acmd)
        erase_step_next = erase_step;
      else if (is_erase_cmd) begin
         if (cmd_index == erase_commands[erase_step]) begin
            if (erase_step < 2)
              erase_step_next = erase_step + 1;
            else
              // The erase sequence is done
              erase_step_next = 0;
         end
         else begin
            erase_seq_error_next = 1'b1;
            erase_step_next = 0;
         end
      end
      else begin
         if (erase_step != 0)
           erase_reset_next = 1'b1;
         erase_step_next = 0;
      end
   end // block: erase_seq

   always @(posedge clk)
     if (~resetn) begin
        erase_step <= 0;
        erase_seq_error <= 1'b0;
        erase_reset <= 1'b0;
     end
     else if (got_valid_cmd) begin
        erase_step <= erase_step_next;
        erase_seq_error <= erase_seq_error_next;
        erase_reset <= erase_reset_next;
     end

   // Block count

   // The spec does not specify the lifetime of a block count.  This
   // implemention resets the block count status when any command other
   // than one of the following is received:
   //
   //    CMD13
   //    CMD23
   //    CMD18
   //    CMD25
   //    CMD55
   //    ACMD23

   localparam [6:0] block_count_cmds[0:1] = '{22, 7'h40 | 22};
   reg [31:0] block_count_vars[0:1];
   reg        block_count_vars_used[0:1];
   reg        cmd_discard_block_count;

   always @(*)
     case ({acmd, cmd_index})
       13, 18, 23, 25, 55, 7'h40 | 23:
         cmd_discard_block_count = 1'b0;
       default:
         cmd_discard_block_count = 1'b1;
     endcase // case ({acmd, cmd_index})

   generate
      for (i = 0; i < 2; i = i + 1) begin:save_block_count_vars
         always @(posedge clk)
           if (!resetn || save_current_cmd ||
               (got_valid_cmd && cmd_discard_block_count)) begin
              block_count_vars[i] <= 0;
              block_count_vars_used[i] <= 1'b0;
           end
           else if (got_valid_cmd &&
                    {acmd, cmd_index} == block_count_cmds[i]) begin
              block_count_vars[i] <= cmd_arg;
              block_count_vars_used[i] <= 1'b1;
           end
      end // block: save_block_count_vars
   endgenerate

   // CMD8

   reg        got_cmd8_1;

   always @(posedge clk)
     if (~resetn)
       got_cmd8_1 <= 1'b0;
     else if (got_valid_cmd && cmd_index == 8)
       got_cmd8_1 <= 1'b1;

   // Save everything.  All outputs read by the CPU should change at the
   // same time to prevent race conditions.

   assign save_current_cmd = got_cmd_error_free &&
                             (acmd ? save_acmd[cmd_index] : save_cmd[cmd_index]);

   always @(posedge clk)
     if (~resetn) begin
        saved_cmd_index <= 0;
        saved_cmd_arg <= 0;
        saved_cmd_is_acmd <= 1'b0;
        new_cmd_saved <= 1'b0;
        erase_start <= 0;
        erase_end <= 0;
        got_cmd8 <= 1'b0;
        block_count <= 0;
        block_count_used <= 1'b0;
        pre_erase_count <= 0;
        pre_erase_count_used <= 1'b0;
     end // if (~resetn)
     else if (save_current_cmd) begin
        saved_cmd_index <= cmd_index;
        saved_cmd_arg <= cmd_arg;
        saved_cmd_is_acmd <= acmd;
        new_cmd_saved <= 1'b1;
        erase_start <= erase_vars[0];
        erase_end <= erase_vars[1];
        got_cmd8 <= got_cmd8_1;
        block_count <= block_count_vars[0];
        block_count_used <= block_count_vars_used[0];
        pre_erase_count <= block_count_vars[1][22:0];
        pre_erase_count_used <= block_count_vars_used[1];
     end
     else
       new_cmd_saved <= 1'b0;
endmodule // cmd_info_keeper

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
                                        (1 << 10) |
                                        (1 << 12) |
                                        (1 << 13) |
                                        (1 << 15) |
                                        (1 << 16) |
                                        (1 << 17) |
                                        (1 << 18) |
                                        (1 << 23) |
                                        (1 << 24) |
                                        (1 << 25) |
                                        (1 << 27) |
                                        (1 << 32) |
                                        (1 << 33) |
                                        (1 << 38) |
                                        (1 << 55) |
                                        (1 << 56)),
    parameter bit [63:0] support_acmd = ((1 << 6) |
                                         (1 << 13) |
                                         (1 << 22) |
                                         (1 << 23) |
                                         (1 << 41) |
                                         (1 << 42) |
                                         (1 << 51)),
    // Voltage range required in ACMD41
    parameter bit [15:0] ocr_voltage_window = 16'hff80,
    parameter dat_word_size = 32,
    parameter dat_block_size_max = 4096 / dat_word_size)
   (// To manually set and clear bits in the card status.  Bits 12 to 9
    // current_state cannot be changed this way.  Some error bits which
    // are cleared when a response is sent can be set but not cleared
    // this way.
    input [31:0] csr_set_bits, csr_clr_bits,
    input [31:24] ocr_high_byte_in,
    // The actual number of blocks the device can hold is size_in + 1 to
    // allow 4294967296 blocks.
    input [31:0] size_in,

    // Connection to a ram.  Addresses 0 to 3 are CID.  4 to 7 are CSD.
    // Checksum is computed by the CPU.
    output [2:0] ram_addr,
    input [31:0] ram_data,

    // The most recently received command
    output last_cmd_is_acmd,
    output [5:0] last_cmd_index,
    output [31:0] last_cmd_arg,
    output last_cmd_ignored,
    output last_cmd_valid,
    output reg got_new_cmd_out,

    // The most recently saved command
    output saved_cmd_is_acmd,
    output [5:0] saved_cmd_index,
    output [31:0] saved_cmd_arg,
    output new_cmd_saved,

    // Status
    output [31:0] card_status_out,
    output got_reset_cmd,
    output is_inactive,
    output [31:0] erase_start, erase_end,
    output [31:0] block_limit,
    output block_limit_used,
    output [22:0] pre_erase_count,
    output pre_erase_count_used,
    output got_cmd8,

    input ack_data_tran,
    input start_data_tran,
    input [dat_word_size - 1:0] data_in,
    input data_write_en,
    input no_more_write_data,
    input data_read_en,
    output [dat_word_size - 1:0] data_out,
    output may_write_data,
    output may_read_data,
    output [31:0] dat_blocks_read,

    input sd_clk_i,
    input sd_cmd_i,
    output sd_cmd_o, sd_cmd_t,
    input [3:0] sd_dat_i,
    output [3:0] sd_dat_o, sd_dat_t,
    output sd_dat3_pullup_off,

    input clk,
    input resetn_in);

   import sd_defs::*;

   wire   cmd_received_good;

   // Save the input from the CPU to ensure it doesn't change while a
   // command is being responded to.  Otherwise, for example, the OCR
   // may be changed by the CPU after the status is updated, but before
   // the response is sent.  Then the host will think we're in the Ready
   // State while we think we're in the Idle State.  The case for CID
   // and CSD is different, because they are not supposed to change
   // after the CPU sets the busy bit in the OCR, and they are not used
   // until the CPU sets the busy bit.

   reg [31:24] ocr_high_byte;
   reg [31:0]  size;

   always @(posedge clk)
     if (~resetn) begin
        ocr_high_byte = 0;
        size = 0;
     end
     else if (cmd_received_good) begin
        ocr_high_byte <= ocr_high_byte_in;
        size <= size_in;
     end

   // States

   enum   {
           idle,
           validating_cmd,
           // 2 clocks are used to update the status because some status
           // changes depend on others
           updating_status_1,
           updating_status_2,
           responding
           } state, state_next;

   wire [5:0] cmd_index;
   wire [31:0] cmd_arg;
   wire        acmd_defined, cmd_valid, cmd_ignored, cmd_illegal;
   wire        update_1 = state_next == updating_status_1,
               update_2 = state_next == updating_status_2;

   wire   resetn;

   // SD bus interface

   wire        cmd_received, cmd_read_crc_err, resp_no_crc, send_resp;
   wire [4:0]  resp_pos;
   wire [4:0]  resp_len_bytes;
   wire [3:0]  resp_delay;
   wire [7:0]  resp_byte;
   reg         send_no_resp;
   wire        dat_got_word, dat_got_block, dat_crc_err, dat_start_read_block,
               dat_wrote_new_word, dat_wrote_all, dat_width_4,
               dat_start_write_block, dat_read_mode, dat_write_mode, dat_en,
               dat_busy_out;
   wire [dat_word_size - 1:0]              dat_read_data, controller_data_out;
   wire [$clog2(dat_block_size_max * dat_word_size + 1) - 1:0] dat_block_size;

   always @(posedge clk)
     if (~resetn)
       send_no_resp <= 1'b0;
     else
       send_no_resp <= (state == validating_cmd && !cmd_valid) ||
                       (state == responding && !send_resp);

   sd_bus_interface #(.dat_word_size(dat_word_size),
                      .dat_block_size_max(dat_block_size_max))
   sd_bus_interface(.got_new_cmd(cmd_received),
                    .cmd_crc_err(cmd_read_crc_err),
                    .cmd_index,
                    .cmd_arg,
                    .cmd_resp_done(),
                    .cmd_resp_timeout(),
                    .cmd_resp_pos(resp_pos),
                    .cmd_resp_byte(resp_byte),
                    .cmd_resp_len(resp_len_bytes),
                    .cmd_resp_delay(resp_delay),
                    .resp_no_crc(resp_no_crc),
                    .resp_start(send_resp),
                    .resp_none(send_no_resp),
                    .dat_got_word,
                    .dat_got_block,
                    .dat_crc_err,
                    .dat_read_data,
                    .dat_start_read_block,
                    .dat_write_data(controller_data_out),
                    .dat_block_size,
                    .dat_wrote_new_word,
                    .dat_wrote_all,
                    .dat_width_4,
                    .dat_start_write_block,
                    .dat_read_mode,
                    .dat_write_mode,
                    .dat_en,
                    .busy_in(dat_busy_out),
                    .sd_clk_i,
                    .sd_cmd_i,
                    .sd_cmd_o,
                    .sd_cmd_t,
                    .sd_dat_i,
                    .sd_dat_o,
                    .sd_dat_t,
                    .clk,
                    .resetn);

   assign cmd_received_good = cmd_received && !cmd_read_crc_err;

   // Reset the system when in the inactive state or CMD0 is received

   inactive_keeper #(.ocr_voltage_window(ocr_voltage_window))
   inactive_keeper(.resetn_out(resetn),
                   .is_inactive,
                   .got_reset_cmd,
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

   // Card status

   wire [31:0]  card_status_resp, card_status_real;
   wire [3:0]   csr_current_state;
   wire         acmd_expected;
   wire         got_cmd_error_free;

   wire         initialization_done = ocr_high_byte[31];
   wire         sent_r1, sent_r6;
   wire         data_reading_half_closed, data_reading_closed,
                data_writing_closed;
   reg          cmd_crc_err_stb, cmd_illegal_stb, cmd_ignored_stb;
   wire         invalid_dat_width;
   wire         erase_seq_error, erase_reset, out_of_range;

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
     card_status_keeper
       (.card_status_resp,
        .card_status_real,
        .current_state(csr_current_state),
        .acmd_expected,
        .got_valid_cmd(update_2),
        .got_illegal_cmd(cmd_illegal_stb),
        .got_ignored_cmd(cmd_ignored_stb),
        .got_cmd_crc_err(cmd_crc_err_stb),
        .acmd_defined,
        .got_cmd_error_free,
        .sent_r1,
        .sent_r6,
        .dat_start_read_block,
        .cmd_index,
        .cmd_arg,
        .rca_match,
        .errors_response_mode(32'b0 |
                              ((invalid_dat_width || out_of_range) <<
                               csr_out_of_range) |
                              (erase_seq_error << csr_erase_seq_error) |
                              (erase_reset << csr_erase_reset)),
        .ext_set_bits(csr_set_bits),
        .ext_clear_bits(csr_clr_bits),
        .initialization_done,
        .data_reading_half_closed,
        .data_reading_closed,
        .data_writing_closed,
        .dat_busy_out,
        .clk,
        .resetn);

   // Keep the information from some commands

   cmd_info_keeper cmd_info_keeper(.saved_cmd_index,
                                   .saved_cmd_arg,
                                   .saved_cmd_is_acmd,
                                   .new_cmd_saved,
                                   .erase_start,
                                   .erase_end,
                                   .erase_seq_error,
                                   .erase_reset,
                                   .block_count(block_limit),
                                   .block_count_used(block_limit_used),
                                   .pre_erase_count,
                                   .pre_erase_count_used,
                                   .got_cmd8,
                                   .cmd_index,
                                   .cmd_arg,
                                   .acmd(acmd_defined),
                                   .got_valid_cmd(update_1),
                                   .got_cmd_error_free,
                                   .clk,
                                   .resetn);

   // Range check

   range_check range_check(.out_of_range,
                           .size,
                           .cmd_index,
                           .cmd_arg,
                           .acmd(acmd_defined),
                           .got_valid_cmd(update_1),
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
             .ram_addr,
             .ram_data,
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

   // Data

   dat_controller #(.word_size(dat_word_size),
                    .block_size_max(dat_block_size_max))
   dat_controller(.data_out(controller_data_out),
                  .sys_ack(ack_data_tran),
                  .sys_start(start_data_tran),
                  .data_in_sys(data_in),
                  .sys_write_en(data_write_en),
                  .sys_may_write(may_write_data),
                  .sys_no_more_data(no_more_write_data),
                  .sys_read_not_full(data_read_en),
                  .sys_may_read(may_read_data),
                  .reading_half_closed(data_reading_half_closed),
                  .reading_closed(data_reading_closed),
                  .writing_closed(data_writing_closed),
                  .dev_start_write(dat_start_write_block),
                  .dev_wrote_new_word(dat_wrote_new_word),
                  .dev_wrote_all(dat_wrote_all),
                  .dev_start_read(dat_start_read_block),
                  .dev_got_new_block(dat_got_block),
                  .dev_read_crc_err(dat_crc_err),
                  .dev_read_new_word(dat_got_word),
                  .data_in_dev(dat_read_data),
                  .dev_blocks_read(dat_blocks_read),
                  .csr_current_state,
                  .block_limit,
                  .block_limit_used,
                  .dat_width_4,
                  .invalid_dat_width,
                  .dev_read_mode(dat_read_mode),
                  .dev_write_mode(dat_write_mode),
                  .dat_en,
                  .block_size(dat_block_size),
                  .cmd_index,
                  .cmd_arg,
                  .acmd(acmd_defined),
                  .got_valid_cmd(update_1),
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

   assign card_status_out = card_status_real;
   assign last_cmd_is_acmd = acmd_defined;
   assign last_cmd_index = cmd_index;
   assign last_cmd_arg = cmd_arg;
   assign data_out = controller_data_out;
   assign last_cmd_ignored = cmd_ignored;
   assign last_cmd_valid = cmd_valid;

   always @(posedge clk)
     if (~resetn)
       got_new_cmd_out = 1'b0;
     else
       got_new_cmd_out = state == validating_cmd;
endmodule // device
