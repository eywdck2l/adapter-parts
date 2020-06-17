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
    parameter bit [3:0] cmd8_vhs = 4'h1,
    parameter bit [23:8] ocr_voltage_window = 16'hff80)
   (input [4:0] resp_pos,

    // the current response byte
    output reg [7:0] resp_byte,
    // don't send crc after response
    output reg resp_no_crc,
    // length of response without crc in bytes
    output reg [4:0] resp_len,
    output reg send_resp_o,

    input [31:0] card_status,
    output reg [4:0] ram_addr,
    input [7:0] ram_data,
    output reg ram_read_en,
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

   enum   logic [2:0] {
                       resp_none = 0,
                       resp_r1 = 1,
                       resp_r2_cid = 2,
                       resp_r2_csd = 3,
                       resp_r3 = 4,
                       resp_r6 = 5,
                       resp_r7 = 6
                       } resp_cur, resp_next;

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
         resp_next = resp_r7;
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

   reg [6:0]    resp_type_out;
   wire         sent_resp_none;
   assign {sent_r7,
           sent_r6,
           sent_r3,
           sent_r2_cid,
           sent_r2_csd,
           sent_r1,
           sent_resp_none} = resp_type_out;

   always @(posedge clk)
     if (!resetn || !send_resp_i) begin
        resp_type_out <= 7'b0;
        send_resp_o <= 1'b0;
     end
     else begin
        resp_type_out <= 'b1 << (resp_next);
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

   // RAM read address.  The first 16 bytes are CID.  The second 16
   // bytes are CSD.

   always @(posedge clk)
     if (~resetn)
       ram_read_en <= 1'b0;
     else
       ram_read_en <= resp_cur == resp_r2_cid ||
                      resp_cur == resp_r2_csd;

   always @(*) begin
      ram_addr[3:0] = resp_pos - 1;
      case (resp_cur)
        resp_r2_cid:
          ram_addr[4] = 1'b0;
        resp_r2_csd:
          ram_addr[4] = 1'b1;
        default:
          ram_addr[4] = 1'bx;
      endcase // case (resp_cur)
   end // always @ (*)

   // Response

   always @(posedge clk)
     if (!resetn)
       resp_byte <= 0;
     else
       case (resp_cur)
         resp_r1:
           resp_byte = content_r1[resp_pos];
         resp_r2_cid, resp_r2_csd:
           if (resp_pos == 0)
             resp_byte = 8'h3f;
           else if (resp_pos < 17)
             resp_byte = ram_data;
           else
             resp_byte = 'x;
         resp_r3:
           resp_byte = content_r3[resp_pos];
         resp_r6:
           resp_byte = content_r6[resp_pos];
         resp_r7:
           resp_byte = content_r7[resp_pos];
         default:
           resp_byte = 'x;
       endcase // case (resp_cur)
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

   input ready_for_data_in,
   // Set by the CPU to indicate when programming is done
   input prog_done_in,
   input dat_done,

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

   reg [31:0] card_status, card_status_read;

   assign card_status_real = card_status_read;

   assign acmd_expected = card_status[csr_app_cmd];

   assign current_state = card_status[csr_current_state_high:
                                      csr_current_state_low];

   wire [31:0] err_resp_masked = errors_response_mode & csr_error_bits_mask;

   assign got_cmd_error_free = got_valid_cmd && !err_resp_masked;

   // Determine the next state

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
            26:
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
            56:
              current_state_next = cmd_arg[0] ? sd_state_data : sd_state_rcv;
            58:
              current_state_next = sd_state_data;
            59:
              current_state_next = sd_state_rcv;
          endcase // case (cmd_index)

        // Change the state when data transfer finishes

        else
          case (current_state)
            sd_state_data:
              if (dat_done)
                current_state_next = sd_state_tran;
            sd_state_rcv:
              // Not listed in the card state transition table in SD
              // Physical Layer Simplified Specification Ver. 6.00, but
              // shown in the diagram and is also reasonable.
              if (dat_done)
                current_state_next = sd_state_prg;
            sd_state_prg:
              if (prog_done_in)
                current_state_next = sd_state_tran;
            sd_state_dis:
              if (prog_done_in)
                current_state_next = sd_state_stby;
            default:
              ;
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

   always @(*) begin
      card_status_read = card_status;
      card_status_read[csr_ready_for_data] = ready_for_data_in;
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
    output reg rca_match,
    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input got_valid_cmd,
    input clk,
    input resetn);

   import sd_defs::*;

   always @(posedge clk)
     if (!resetn)
       rca_match <= 1'b0;
     else
       rca_match <= cmd_arg[31:16] == rca;

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
    parameter bit [63:0] support_cmd, support_acmd,
    parameter bit [3:0] cmd8_vhs = 4'h1)
   (// type of command
    output reg valid, ignored, illegal,
    output reg acmd_defined,
    output done,
    input [5:0] cmd_index,
    input [31:0] cmd_arg,
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

   // Auxiliary information

   reg    cmd8_vhs_match;

   always @(posedge clk)
     if (~resetn)
       cmd8_vhs_match <= 1'b0;
     else
       cmd8_vhs_match <= cmd_arg[11:8] == cmd8_vhs;

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
              if (cmd8_vhs_match)
                valid_c = current_state == sd_state_idle;
              else
                valid_c = 1'b0;
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

   // Output.  2 clock cycles are needed for things to settle.

   reg [1:0] update_phase;

   always @(posedge clk)
     if (~resetn)
       update_phase <= '0;
     else
       update_phase <= (update_phase << 1) | update;

   always @(posedge clk)
     if (~resetn) begin
        valid <= 1'b0;
        ignored <= 1'b0;
        illegal <= 1'b0;
        acmd_defined <= 1'b0;
     end
     else if (update_phase[0]) begin
        valid <= valid_c;
        ignored <= ignored_c;
        illegal <= ~(valid_c | ignored_c);
        acmd_defined <= acmd_defined_c;
     end

   assign done = update_phase[1];
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
   (output reg resetn_out,
    output reg is_inactive,
    output got_reset_cmd,

    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input acmd,
    input got_valid_cmd,
    input got_any_cmd,
    input clk,
    input resetn_in);

   reg [reset_clocks_cmd0-1:0] got_cmd0;
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
        is_inactive <= 1'b0;
        got_acmd41_non_query <= 1'b0;
     end
     else if (got_valid_cmd) begin
        is_inactive <= is_inactive ||
                       (got_valid_cmd && (cmd_index == 15 ||
                                          acmd41_bad_voltage_range));
        got_acmd41_non_query <= got_acmd41_non_query_next;
     end

   always @(posedge clk)
     if (~resetn_in)
       resetn_out <= 1'b0;
     else
       resetn_out <= !(!resetn_in || got_cmd0[reset_clocks_cmd0 - 1] ||
                       is_inactive);
endmodule // inactive_keeper

module dat_controller
  #(parameter word_size = 8)
   (// Signals to control the DAT module
    output reg dev_read_mode,
    output reg dev_resetn,
    output dat_opcode::block_type_t block_type,
    output reg [2:0] block_size_exp,

    input [3:0] csr_current_state,
    // The number of blocks to read or write
    input [31:0] block_limit,
    input block_limit_used,

    input fifo_out_almostfull,

    // Start writing
    input start_write_in,
    // Start reading
    input start_read_in,
    // Whether the start signal is received
    output reg got_start_write, got_start_read,

    // For masking the output FIFO's signals
    output reg fifo_out_tready_masked,
    output reg fifo_out_tvalid_masked,
    input fifo_out_tready_in,
    input fifo_out_tvalid_in,

    output fifo_out_resetn,
    output fifo_in_resetn,

    // Whether the dat line should indicate busy.
    output reg busy_out,
    // The READY_FOR_DATA bit in the CSR
    output reg ready_for_data,

    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input acmd,
    input got_valid_cmd,

    input clk,
    input resetn);

   import sd_defs::*;
   import dat_opcode::*;

   // Block type

   reg [2:0] block_size_exp_next;
   reg [1:0] block_type_next;
   reg       change_block_type;

   always @(*) begin
      block_size_exp_next = 'x;
      block_type_next = 'x;
      change_block_type = 1'b1;

      case ({acmd, cmd_index})
        30, {1'b1, 6'd22}: begin
           block_size_exp_next = 3'h2;
           block_type_next = small_block;
        end
        {1'b1, 6'd51}: begin
           block_size_exp_next = 3'h3;
           block_type_next = small_block;
        end
        26, 27: begin
           block_size_exp_next = 3'h4;
           block_type_next = small_block;
        end
        6, 19, {1'b1, 6'd13}: begin
           block_size_exp_next = 3'h6;
           block_type_next = small_block;
        end
        17, 24, 42, 48, 49, 56:
          block_type_next = single_block;
        18, 25, 58, 59:
          block_type_next = block_limit_used ? multi_block_count :
                            multi_block_no_count;
        default:
          change_block_type = 1'b0;
      endcase // case ({acmd, cmd_index})
   end // always @ (*)

   always @(posedge clk)
     if (~resetn) begin
        block_size_exp <= 0;
        block_type <= small_block;
     end
     else if (got_valid_cmd & change_block_type) begin
        block_size_exp <= block_size_exp_next;
        block_type <= block_type_t'(block_type_next);
     end

   // Control when to read and write

   reg dat_active_next, dev_read_mode_next;

   always_comb
     case (csr_current_state)
       sd_state_data: begin
          dat_active_next = 1'b1;
          dev_read_mode_next = 1'b0;
       end
       sd_state_rcv: begin
          dat_active_next = 1'b1;
          dev_read_mode_next = 1'b1;
       end
       default: begin
          dat_active_next = 1'b0;
          dev_read_mode_next = 1'bx;
       end
     endcase // case (csr_current_state)

   reg writing, reading;

   always_ff @(posedge clk)
     if (~resetn) begin
        writing <= 1'b0;
        reading <= 1'b0;
     end
     else begin
        writing <= 1'b0;
        reading <= 1'b0;

       case (csr_current_state)
         sd_state_data:
           writing <= 1'b1;
         sd_state_rcv, sd_state_prg, sd_state_dis:
           reading <= 1'b1;
         default:
           ;
       endcase // case (csr_current_state)
     end // else: !if(~resetn)

   // Writing should only start when we know the data is for the right
   // command.  It is signaled by `start_write_in' which is masked if
   // the CPU has not read the current command.

   always @(posedge clk)
     if (~resetn)
       got_start_write <= 1'b0;
     else if (~writing)
       got_start_write <= 1'b0;
     else if (start_write_in)
       got_start_write <= 1'b1;

   assign fifo_in_resetn = got_start_write;
   assign fifo_out_resetn = reading;

   always @(posedge clk)
     if (~resetn) begin
        dev_resetn <= 1'b0;
        dev_read_mode <= 1'b0;
     end
     else begin
        dev_resetn <= dat_active_next;
        dev_read_mode <= dev_read_mode_next;
     end

   // The busy out signal is not used in the receive state.  It is set
   // high in the receive state so that the DAT module's state change
   // from RCV to PRG does not have to be slower than that here, and the
   // busy signal don DAT[0] can still be remain low during this change.
   always @(posedge clk)
     if (~resetn)
       busy_out <= 1'b0;
     else
       busy_out <= csr_current_state == sd_state_prg ||
                   (csr_current_state == sd_state_rcv && dev_resetn);

   // Reading likewise requires the CPU to acknowledge the command.  But
   // since the SD specification does not allow indicating busy at the
   // start of a write command, we have to keep the output FIFO out of
   // reset and mask its tvalid.

   always @(posedge clk)
     if (~resetn)
       got_start_read <= 1'b0;
     else if (~reading)
       got_start_read <= 1'b0;
     else if (start_read_in)
       got_start_read <= 1'b1;

   always @(*)
     if (~got_start_read) begin
        fifo_out_tvalid_masked = 1'b0;
        fifo_out_tready_masked = 1'b0;
     end
     else begin
        fifo_out_tvalid_masked = fifo_out_tvalid_in;
        fifo_out_tready_masked = fifo_out_tready_in;
     end

   always @(posedge clk)
     if (~resetn)
       ready_for_data <= 1'b1;
     else
       case (csr_current_state)
         sd_state_prg, sd_state_dis:
           ready_for_data <= 1'b0;
         sd_state_rcv:
           ready_for_data <= ~fifo_out_almostfull;
         default:
           ready_for_data <= 1'b1;
       endcase // case (csr_current_state)
endmodule // dat_controller

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

   reg   out_of_range_1;

   always @(posedge clk)
     if (~resetn)
       out_of_range_1 <= 1'b0;
     else
       out_of_range_1 <= cmd_arg > size;

   always @(posedge clk)
     if (~resetn)
       out_of_range <= 1'b0;
     else
       case ({acmd, cmd_index})
         17, 18, 24, 25:
           out_of_range <= cmd_arg > size;
         default:
           out_of_range <= 1'b0;
       endcase // case ({acmd, cmd_index})
endmodule // range_check

// Save the commands that involve the CPU and the necesary information
// received from the previous commands.  For example if the host sends
// CMD18 READ_MULTIPLE_BLOCK, and right after which CMD13 SEND_STATUS.
// The CPU will get a signal to wake up when the CMD25 is received.  But
// maybe we have already received the CMD13 when the CPU reads the last
// command received.  The CPU knows what data it should write by reading
// the command saved here.  Only one command is saved at a time.  If
// another command arrives that needs to be saved, the previous will be
// overwritten.  The rest of the design ensures that the first command
// can be ignored in that case.

module cmd_info_keeper
  #(parameter bit [63:0] save_cmd = '{
                                      0: 1'b1,
                                      6: 1'b1,
                                      15: 1'b1,
                                      17: 1'b1,
                                      18: 1'b1,
                                      24: 1'b1,
                                      25: 1'b1,
                                      27: 1'b1,
                                      38: 1'b1,
                                      default: 1'b0
                                      },
    parameter bit [63:0] save_acmd = '{
                                       13: 1'b1,
                                       22: 1'b1,
                                       41: 1'b1,
                                       51: 1'b1,
                                       default: 1'b0
                                       })
   (output reg [5:0] saved_cmd_index,
    output reg [31:0] saved_cmd_arg,
    output reg saved_cmd_is_acmd,
    output reg new_cmd_saved,
    // CMD12 can't be treated as another saved command.  Right after a
    // write command is received, busy is not indicated on the DAT line,
    // and the first block can be received without the CPU acknowledging
    // it.  A CMD12 is received before the CPU processes the write
    // command.  If CMD12 is also a saved command, the write command's
    // argument will be lost.  This signal is only high for 1 clock
    // cycle.
    output reg got_new_cmd12,
    output [31:0] erase_start, erase_end,
    output reg erase_seq_error, erase_reset,
    output [31:0] block_limit,
    output block_limit_used,
    output [22:0] pre_erase_count,
    output pre_erase_count_used,
    // High until reset
    output reg got_cmd8,
    output reg dat_width_4,
    output reg invalid_dat_width,

    input [5:0] cmd_index,
    input [31:0] cmd_arg,
    input acmd,
    // A command is received
    input got_valid_cmd,
    // A command is received that has no response mode errors
    input got_cmd_error_free,

    input clk,
    input resetn);

   wire   save_current_cmd;

   // Erase sequence

   localparam bit [5:0] erase_commands[0:2] = '{32, 33, 38};
   reg [1:0]            erase_step, erase_step_next;
   reg                  erase_seq_error_next, erase_reset_next;
   reg [31:0]           erase_vars[0:1];

   generate
      for (genvar i = 0; i < 2; i = i + 1) begin:save_erase_vars
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
         end // else: !if(cmd_index == erase_commands[erase_step])
      end // if (is_erase_cmd)
      else begin
         if (erase_step != 0)
           erase_reset_next = 1'b1;
         erase_step_next = 0;
      end // else: !if(is_erase_cmd)
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

   assign erase_start = erase_vars[0];
   assign erase_end = erase_vars[1];

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

   localparam [6:0] block_limit_cmds[0:1] = '{23, 7'h40 | 23};
   reg [31:0] block_limit_vars[0:1];
   reg        block_limit_vars_used[0:1];
   reg        cmd_discard_block_limit;

   always @(posedge clk)
     if (~resetn)
       cmd_discard_block_limit <= 1'b0;
     else
       case ({acmd, cmd_index})
         13, 18, 23, 25, 55, 7'h40 | 23:
           cmd_discard_block_limit <= 1'b0;
         default:
           cmd_discard_block_limit <= 1'b1;
       endcase // case ({acmd, cmd_index})

   generate
      for (genvar i = 0; i < 2; i = i + 1) begin:save_block_limit_vars
         reg save;

         always @(posedge clk)
           if (~resetn)
             save <= 1'b0;
           else
             save <= {acmd, cmd_index} == block_limit_cmds[i];

         always @(posedge clk)
           if (!resetn)
             block_limit_vars[i] <= '0;
           else if (got_valid_cmd && save)
             block_limit_vars[i] <= cmd_arg;

         always @(posedge clk)
           if (!resetn ||
               (got_valid_cmd && cmd_discard_block_limit))
             block_limit_vars_used[i] <= 1'b0;
           else if (got_valid_cmd && save)
             block_limit_vars_used[i] <= 1'b1;
      end // block: save_block_limit_vars
   endgenerate

   assign block_limit = block_limit_vars[0];
   assign block_limit_used = block_limit_vars_used[0];
   assign pre_erase_count = block_limit_vars[1][22:0];
   assign pre_erase_count_used = block_limit_vars_used[1];

   // CMD8

   always @(posedge clk)
     if (~resetn)
       got_cmd8 <= 1'b0;
     else if (got_valid_cmd && cmd_index == 8)
       got_cmd8 <= 1'b1;

   // DAT width

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
     else if (got_cmd_error_free && cmd_index == 6 && acmd) begin
        dat_width_4 <= dat_width_4_next;
        invalid_dat_width <= invalid_dat_width_next;
     end
     else if (got_valid_cmd)
       invalid_dat_width <= 1'b0;

   // Save everything.  The outputs may change at different times.  The
   // parent module synchronizes the changes to prevent race conditions.

   assign save_current_cmd = got_cmd_error_free &&
                             (acmd ? save_acmd[cmd_index] : save_cmd[cmd_index]);

   always @(posedge clk)
     if (~resetn) begin
        saved_cmd_index <= 0;
        saved_cmd_arg <= 0;
        saved_cmd_is_acmd <= 1'b0;
     end
     else if (save_current_cmd) begin
        saved_cmd_index <= cmd_index;
        saved_cmd_arg <= cmd_arg;
        saved_cmd_is_acmd <= acmd;
     end

   always @(posedge clk)
     if (~resetn) begin
        new_cmd_saved <= 1'b0;
        got_new_cmd12 <= 1'b0;
     end
     else begin
        new_cmd_saved <= save_current_cmd;
        got_new_cmd12 <= got_cmd_error_free && cmd_index == 6'd12;
     end
endmodule // cmd_info_keeper

module device
  #(// Commands to support
    parameter bit [63:0] support_cmd = '{
                                         0: 1'b1,
                                         2: 1'b1,
                                         3: 1'b1,
                                         4: 1'b1,
                                         6: 1'b1,
                                         7: 1'b1,
                                         8: 1'b1,
                                         9: 1'b1,
                                         10: 1'b1,
                                         12: 1'b1,
                                         13: 1'b1,
                                         15: 1'b1,
                                         16: 1'b1,
                                         17: 1'b1,
                                         18: 1'b1,
                                         23: 1'b1,
                                         24: 1'b1,
                                         25: 1'b1,
                                         27: 1'b1,
                                         32: 1'b1,
                                         33: 1'b1,
                                         38: 1'b1,
                                         55: 1'b1,
                                         56: 1'b1,
                                         default: 1'b0
                                         },
    parameter bit [63:0] support_acmd = '{
                                          6: 1'b1,
                                          13: 1'b1,
                                          22: 1'b1,
                                          23: 1'b1,
                                          41: 1'b1,
                                          42: 1'b1,
                                          51: 1'b1,
                                          default: 1'b0
                                          },
    // Voltage range required in ACMD41
    parameter bit [15:0] ocr_voltage_window = 16'hff80,
    parameter dat_word_size = 8)
   (// To manually set and clear bits in the card status.  Bits 12 to 9
    // current_state cannot be changed this way.  Some error bits which
    // are cleared when a response is sent can be set but not cleared
    // this way.
    input [31:0] csr_set_bits, csr_clr_bits,
    input [31:24] ocr_high_byte_in,
    // The actual number of blocks the device can hold is size_in + 1 to
    // allow 4294967296 blocks.
    input [31:0] size_in,

    // Connection to a ram.  Addresses 0 to 15 are CID.  16 to 31 are
    // CSD.  Checksum is computed by the CPU.
    output [4:0] ram_addr,
    input [7:0] ram_data,
    output ram_read_en,

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
    output got_new_cmd12,
    output is_inactive,
    output [31:0] erase_start, erase_end,
    output [31:0] block_limit, block_count_done,
    output block_limit_used,
    output [22:0] pre_erase_count,
    output pre_erase_count_used,
    output got_cmd8,
    output [dat_error_codes::width-1:0] dat_error_code,
    output dat_done_new,
    output dat_block_done,

    // Data
    input fifo_out_almostfull,
    output [dat_word_size-1:0] out_tdata,
    output out_tlast,
    output out_tvalid,
    input out_tready,
    input [dat_word_size-1:0] in_tdata,
    input in_tlast,
    input in_tvalid,
    output in_tready,
    input prog_done_in,
    input start_write_in,
    input start_read_in,
    output got_start_read, got_start_write,
    output fifo_out_tready_masked,
    output fifo_out_tvalid_masked,
    input fifo_out_tready_in,
    input fifo_out_tvalid_in,
    output fifo_out_resetn,
    output fifo_in_resetn,

    input sd_clk_i,
    input sd_cmd_i,
    output sd_cmd_o, sd_cmd_t,
    input [3:0] sd_dat_i,
    output [3:0] sd_dat_o, sd_dat_t,
    output sd_dat3_pullup_off,

    input clk,
    input resetn_in);

   import sd_defs::*;

   wire   resetn;

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

   wire   cmd_received_good, validator_done;
   wire [5:0] cmd_index;
   wire [31:0] cmd_arg;
   wire        acmd_defined, cmd_valid, cmd_ignored, cmd_illegal;
   wire        update_1 = state_next == updating_status_1,
               update_2 = state_next == updating_status_2;

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

   // SD bus interface

   wire        cmd_received, cmd_read_crc_err, resp_no_crc, send_resp, dat_done;
   wire [4:0]  resp_pos;
   wire [4:0]  resp_len_bytes;
   wire [7:0]  resp_byte;
   reg         send_no_resp;

   wire [2:0]  dat_block_size_exp;
   dat_opcode::block_type_t dat_block_type;
   wire        dat_resetn, dat_read_mode, dat_busy_out, dat_width_4, cc_error;

   always @(posedge clk)
     if (~resetn)
       send_no_resp <= 1'b0;
     else
       send_no_resp <= (state == validating_cmd && validator_done &&
                        !cmd_valid) ||
                       (state == responding && !send_resp);

   sd_bus_interface #(.dat_word_size(dat_word_size))
   sd_bus_interface(.got_new_cmd(cmd_received),
                    .cmd_crc_err(cmd_read_crc_err),
                    .cmd_index,
                    .cmd_arg,
                    .cmd_resp_done(),
                    .cmd_resp_timeout(),
                    .cmd_resp_pos(resp_pos),
                    .cmd_resp_byte(resp_byte),
                    .cmd_resp_len(resp_len_bytes),
                    .resp_no_crc(resp_no_crc),
                    .resp_start(send_resp),
                    .resp_none(send_no_resp),
                    .fifo_out_almostfull,
                    .out_tdata,
                    .out_tlast,
                    .out_tvalid,
                    .out_tready,
                    .in_tdata,
                    .in_tlast,
                    .in_tvalid,
                    .in_tready,
                    .dat_block_size_exp,
                    .dat_block_type,
                    .dat_block_limit(block_limit),
                    .dat_block_count_done(block_count_done),
                    .dat_read_mode,
                    .busy_in(dat_busy_out),
                    .dat_width_4,
                    .cc_error_out(cc_error),
                    .dat_error_code,
                    .dat_done,
                    .dat_done_new,
                    .dat_block_done,
                    .dat_resetn,
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
   reg          cmd_crc_err_stb, cmd_illegal_stb, cmd_ignored_stb;
   wire         invalid_dat_width;
   wire         ready_for_data;
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
        .ready_for_data_in(ready_for_data),
        .prog_done_in,
        .dat_done,
        .cmd_index,
        .cmd_arg,
        .rca_match,
        .errors_response_mode('{
                                csr_out_of_range: invalid_dat_width |
                                out_of_range,
                                csr_erase_seq_error: erase_seq_error,
                                csr_erase_reset : erase_reset,
                                csr_cc_error: cc_error,
                                default: 0
                                }),
        .ext_set_bits(csr_set_bits),
        .ext_clear_bits(csr_clr_bits),
        .initialization_done,
        .clk,
        .resetn);

   // Keep the information from some commands

   cmd_info_keeper cmd_info_keeper(.saved_cmd_index,
                                   .saved_cmd_arg,
                                   .saved_cmd_is_acmd,
                                   .new_cmd_saved,
                                   .got_new_cmd12,
                                   .erase_start,
                                   .erase_end,
                                   .erase_seq_error,
                                   .erase_reset,
                                   .block_limit,
                                   .block_limit_used,
                                   .pre_erase_count,
                                   .pre_erase_count_used,
                                   .got_cmd8,
                                   .dat_width_4,
                                   .invalid_dat_width,
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
                     .done(validator_done),
                     .cmd_index,
                     .cmd_arg,
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
             .send_resp_o(send_resp),
             .card_status(card_status_resp),
             .ram_addr,
             .ram_data,
             .ram_read_en,
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

   dat_controller #(.word_size(dat_word_size))
   dat_controller(.dev_read_mode(dat_read_mode),
                  .dev_resetn(dat_resetn),
                  .block_type(dat_block_type),
                  .block_size_exp(dat_block_size_exp),
                  .csr_current_state,
                  .block_limit,
                  .block_limit_used,
                  .fifo_out_almostfull,
                  .start_write_in,
                  .start_read_in,
                  .got_start_write,
                  .got_start_read,
                  .fifo_out_tready_masked,
                  .fifo_out_tvalid_masked,
                  .fifo_out_tready_in,
                  .fifo_out_tvalid_in,
                  .fifo_out_resetn,
                  .fifo_in_resetn,
                  .busy_out(dat_busy_out),
                  .ready_for_data,
                  .cmd_index,
                  .cmd_arg,
                  .acmd(acmd_defined),
                  .got_valid_cmd(update_2),
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
          if (validator_done) begin
             if (cmd_valid)
               state_next = updating_status_1;
             else
               state_next = idle;
          end
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
   assign last_cmd_ignored = cmd_ignored;
   assign last_cmd_valid = cmd_valid;

   always @(posedge clk)
     if (~resetn)
       got_new_cmd_out <= 1'b0;
     else
       got_new_cmd_out <= update_2;
endmodule // device
