module xts_aes
  #(// The key size is twice the key size of the corresponding AES
    // instance.
    parameter KEY_SIZE = 256,
    parameter WORKER_COUNT = 1,
    // Width of the data unit counter
    parameter TWEAK_WIDTH = 32,
    // Number of 128-bit blocks in a data unit.  0 means to use external
    // tlast.
    parameter DATA_UNIT_SIZE = 128)
   (// Data out
    output [127:0] out_tdata,
    output out_tlast,
    output out_tvalid,

    // Data in
    input [127:0] in_tdata,
    input in_tlast,
    input in_tvalid,
    output in_tready,

    // Clear all valid signals
    input clear_valid,

    // Key in.  Key expansion is to be done outside of this module.  0
    // to ROUND_COUNT are key1 and 16 to 16+ROUND_COUNT are key2.
    input [127:0] key_in_data,
    input [4:0] key_in_addr,
    input key_in_wren,

    // Tweak
    input [TWEAK_WIDTH-1:0] tweak_in,
    input load_tweak,
    output [TWEAK_WIDTH-1:0] tweak_out,

    // Allow data to be taken.  This should be set after the key is
    // ready.
    input ready_in,

    // To encrypt or decrypt
    input decrypt,

    input clk,
    input resetn);

   // Check parameters

   initial begin
      if (!(DATA_UNIT_SIZE == 0 ||
            (DATA_UNIT_SIZE >= 128 &&
             (DATA_UNIT_SIZE & (DATA_UNIT_SIZE - 1)) == 0)))
        $error("Data size not supported");

      if (TWEAK_WIDTH > 128)
        $error("Invalid tweak width");
   end

   localparam ROUND_COUNT = KEY_SIZE / 64 + 7;

   // Keep count of when a data unit ends

   wire   in_last_1;

   generate
      if (DATA_UNIT_SIZE == 0)
        assign in_last_1 = in_tlast;
      else begin : count_blocks
         reg [$clog2(DATA_UNIT_SIZE)-1:0] block_count;

         wire [$clog2(DATA_UNIT_SIZE):0]  block_count_inc = block_count + 1;

         always @(posedge clk)
           if (~resetn | clear_valid)
             block_count <= '0;
           else if (in_tvalid & in_tready)
             block_count <= block_count_inc;

         assign in_last_1 = block_count_inc[$clog2(DATA_UNIT_SIZE)];
      end // block: count_blocks
   endgenerate

   // Connections for data between stages

   reg [127:0]                            pipe_data[3];
   reg                                    pipe_last[3], pipe_valid[3],
                                          pipe_ready[3];

   // Maintain the tweak

   wire [127:0]                           t_enc;
   wire                                   t_enc_valid, t_enc_valid_new;
   wire                                   incr_i;

   maintain_tweak #(.KEY_SIZE(KEY_SIZE / 2),
                    .I_WIDTH(TWEAK_WIDTH))
   maintain_tweak(.t(t_enc),
                  .t_valid(t_enc_valid),
                  .t_valid_new(t_enc_valid_new),
                  .i_in(tweak_in),
                  .incr_i,
                  .load_i(load_tweak),
                  .i_out(tweak_out),
                  .key_in_data,
                  .key_in_addr(key_in_addr[3:0]),
                  .key_in_wren(key_in_wren & key_in_addr[4]),
                  .clk,
                  .resetn);

   // t is read once t_valid gets asserted.  Then t for the next data
   // unit can be computed

   assign incr_i = t_enc_valid_new | (pipe_valid[2] & pipe_last[2]);

   // Add a stage at the input because the ready signal of the AES
   // module may go low without any transaction, which violates the
   // AXI-Stream specification.

   generate
      if (WORKER_COUNT < ROUND_COUNT) begin : input_buffered
         data_buffer #(.WIDTH(129)) buffer_input
           (.out_data({pipe_last[0], pipe_data[0]}),
            .out_valid(pipe_valid[0]),
            .out_ready(pipe_ready[0]),
            .in_data({in_last_1, in_tdata}),
            .in_valid(in_tvalid),
            .in_ready(in_tready),
            .clk,
            .resetn(~(~resetn | clear_valid)));
      end // block: input_buffered
      else begin : input_direct
         assign pipe_data[0] = in_tdata;
         assign pipe_last[0] = in_last_1;
         assign pipe_valid[0] = in_tvalid;
         assign in_tready = pipe_ready[0];
      end
   endgenerate

   // First xor

   wire         xor_first_in_ready;
   wire         t_loaded;
   wire         may_take_data;

   assign pipe_ready[0] = xor_first_in_ready & may_take_data;

   xor_t xor_first(.out_data(pipe_data[1]),
                   .out_last(pipe_last[1]),
                   .out_valid(pipe_valid[1]),
                   .out_ready(pipe_ready[1]),
                   .in_data(pipe_data[0]),
                   .in_last(pipe_last[0]),
                   .in_valid(pipe_valid[0] & may_take_data),
                   .in_ready(xor_first_in_ready),
                   .t_in(t_enc),
                   .t_loaded,
                   .clk,
                   .resetn(t_enc_valid));

   // Wait till T is loaded to consume data.

   assign may_take_data = ready_in & t_loaded;

   // Encryption or decryption

   // From this stage on, the ready signal is ignored and stages down
   // the pipeline are expected to accept data at any time

   wire [127:0] out_data_enc, out_data_dec;
   wire         out_valid_enc, out_valid_dec, out_last_enc, out_last_dec,
                in_ready_enc, in_ready_dec;

   aes_full #(.DECRYPT(1'b0),
              .KEY_SIZE(KEY_SIZE / 2),
              .WORKER_COUNT(WORKER_COUNT),
              .AUX_T(logic))
   enc_inst(.out_data(out_data_enc),
            .out_aux(out_last_enc),
            .out_valid(out_valid_enc),
            .in_data(pipe_data[1]),
            .in_aux(pipe_last[1]),
            .in_valid(pipe_valid[1]),
            .in_ready(in_ready_enc),
            .clear_valid(clear_valid | decrypt),
            .key_in_data,
            .key_in_addr(key_in_addr[3:0]),
            .key_in_wren(key_in_wren & ~key_in_addr[4]),
            .clk,
            .resetn);

   aes_full #(.DECRYPT(1'b1),
              .KEY_SIZE(KEY_SIZE / 2),
              .WORKER_COUNT(WORKER_COUNT),
              .AUX_T(logic))
   dec_inst(.out_data(out_data_dec),
            .out_aux(out_last_dec),
            .out_valid(out_valid_dec),
            .in_data(pipe_data[1]),
            .in_aux(pipe_last[1]),
            .in_valid(pipe_valid[1]),
            .in_ready(in_ready_dec),
            .clear_valid(clear_valid | ~decrypt),
            .key_in_data,
            .key_in_addr(key_in_addr[3:0]),
            .key_in_wren(key_in_wren & ~key_in_addr[4]),
            .clk,
            .resetn);

   // Add registers

   reg [127:0]  out_data_enc_d, out_data_dec_d;
   reg          out_valid_enc_d, out_valid_dec_d, out_last_enc_d,
                out_last_dec_d;

   generate
      if (WORKER_COUNT < ROUND_COUNT) begin
         always @(posedge clk)
           if (~resetn) begin
              out_valid_enc_d <= 1'b0;
              out_valid_dec_d <= 1'b0;
           end
           else begin
              out_valid_enc_d <= out_valid_enc;
              out_valid_dec_d <= out_valid_dec;
           end

         always @(posedge clk) begin
            out_data_enc_d <= out_data_enc;
            out_last_enc_d <= out_last_enc;
            out_data_dec_d <= out_data_dec;
            out_last_dec_d <= out_last_dec;
         end
      end // if (WORKER_COUNT < ROUND_COUNT)
      else begin
         assign out_valid_enc_d = out_valid_enc;
         assign out_valid_dec_d = out_valid_dec;

         assign out_data_enc_d = out_data_enc;
         assign out_last_enc_d = out_last_enc;
         assign out_data_dec_d = out_data_dec;
         assign out_last_dec_d = out_last_dec;
      end // else: !if(WORKER_COUNT < ROUND_COUNT)
   endgenerate

   // Multiplex from encryption and decryption

   always_comb
     if (decrypt) begin
        pipe_data[2] = out_data_dec_d;
        pipe_last[2] = out_last_dec_d;
        pipe_valid[2] = out_valid_dec_d;
        pipe_ready[1] = in_ready_dec;
     end
     else begin
        pipe_data[2] = out_data_enc_d;
        pipe_last[2] = out_last_enc_d;
        pipe_valid[2] = out_valid_enc_d;
        pipe_ready[1] = in_ready_enc;
     end // else: !if(decrypt)

   // Second xor

   xor_t xor_second(.out_data(out_tdata),
                    .out_last(out_tlast),
                    .out_valid(out_tvalid),
                    .out_ready(1'b1),
                    .in_data(pipe_data[2]),
                    .in_last(pipe_last[2]),
                    .in_valid(pipe_valid[2]),
                    .in_ready(),
                    .t_in(t_enc),
                    .t_loaded(),
                    .clk,
                    .resetn(t_enc_valid));
endmodule // xts_aes

module data_buffer
  #(parameter WIDTH = 8)
   (output reg [WIDTH-1:0] out_data,
    output reg out_valid,
    input out_ready,

    input [WIDTH-1:0] in_data,
    input in_valid,
    output reg in_ready,

    input clk,
    input resetn);

   reg [WIDTH-1:0] saved_data;
   reg             saved_valid;

   reg             out_valid_next, saved_valid_next, in_ready_next;
   reg             saved_load, out_load_saved, out_load_in;

   always @(*) begin
      out_valid_next = out_valid;
      saved_valid_next = saved_valid;

      saved_load = 1'b0;
      out_load_saved = 1'b0;
      out_load_in = 1'b0;

      if (out_valid_next & out_ready)
        out_valid_next = 1'b0;

      if (~out_valid_next & saved_valid_next) begin
         out_valid_next = 1'b1;
         saved_valid_next = 1'b0;
         out_load_saved = 1'b1;
      end

      if (in_valid & in_ready)
        (* full_case *)
        case (1'b0)
          out_valid_next: begin
             out_valid_next = 1'b1;
             out_load_in = 1'b1;
          end
          saved_valid_next: begin
             saved_valid_next = 1'b1;
             saved_load = 1'b1;
          end
        endcase // case (1'b0)

      in_ready_next = ~(saved_valid_next & out_valid_next);
   end // always @ (*)

   always @(posedge clk)
     if (~resetn) begin
        out_valid <= 1'b0;
        saved_valid <= 1'b0;
        in_ready <= 1'b0;
     end
     else begin
        out_valid <= out_valid_next;
        saved_valid <= saved_valid_next;
        in_ready <= in_ready_next;
     end

   always @(posedge clk)
     if (out_load_in)
       out_data <= in_data;
     else if (out_load_saved)
       out_data <= saved_data;

   always @(posedge clk)
     if (saved_load)
       saved_data <= in_data;
endmodule // data_buffer

module maintain_tweak
  #(parameter KEY_SIZE = 128,
    parameter I_WIDTH = 32)
   (output reg [127:0] t,
    output reg t_valid,
    output reg t_valid_new,

    input [I_WIDTH-1:0] i_in,
    input incr_i,
    input load_i,
    output [I_WIDTH-1:0] i_out,

    input [127:0] key_in_data,
    input [3:0] key_in_addr,
    input key_in_wren,

    input clk,
    input resetn);

   // Mark when t is valid after receiving load_i.  After receiving
   // incr_i, no indication of when t is valid and t_valid stays high.
   // When the data unit size is at least 2KiB, t will be valid the next
   // time it is needed.

   wire   enc_out_valid;

   always @(posedge clk)
     if (~resetn | load_i) begin
        t_valid <= 1'b0;
        t_valid_new <= 1'b0;
     end
     else begin
        t_valid <= enc_out_valid | t_valid;
        t_valid_new <= enc_out_valid & ~t_valid;
     end

   // Maintain i

   reg [I_WIDTH-1:0] i;

   always @(posedge clk)
     if (~resetn)
       i <= '0;
     else if (load_i)
       i <= i_in;
     else if (incr_i)
       i <= i + 1;

   assign i_out = i;

   // Compute t

   reg              enc_in_valid;

   always @(posedge clk)
     if (~resetn)
       enc_in_valid <= 1'b0;
     else
       enc_in_valid <= load_i | incr_i;

   wire [127:0]      enc_out_data;

   aes_full #(.KEY_SIZE(KEY_SIZE),
              .WORKER_COUNT(1))
   get_t(.out_data(enc_out_data),
         .out_aux(),
         .out_valid(enc_out_valid),
         .in_data(128'(i)),
         .in_aux('x),
         .in_valid(enc_in_valid),
         .in_ready(),
         .clear_valid(load_i),
         .key_in_data,
         .key_in_addr,
         .key_in_wren,
         .clk,
         .resetn);

   always @(posedge clk)
     if (enc_out_valid)
       t <= enc_out_data;
endmodule // maintain_tweak

module xor_t
  (output [127:0] out_data,
   output out_last,
   output out_valid,
   input out_ready,

   input [127:0] in_data,
   // in_last marks the last block of a data unit
   input in_last,
   input in_valid,
   output in_ready,

   input [127:0] t_in,
   output reg t_loaded,

   input clk,
   input resetn);

   // Load T when reset is released or when the current data unit is
   // done

   always @(posedge clk)
     if (~resetn)
       t_loaded <= 1'b0;
     else
       t_loaded <= 1'b1;

   // As with other ports, t_in is little endian, following the
   // AXI-Stream convention.  In XTS-AES T is also little endian.  No
   // conversion is needed.

   reg [127:0] t;

   always @(posedge clk)
     if ((in_valid & in_last) | ~t_loaded)
       t <= t_in;
     else if (in_valid & in_ready)
       t <= (t << 1) ^ (128'h87 * t[127]);

   assign out_data = t ^ in_data;
   assign out_last = in_last;
   assign out_valid = in_valid;
   assign in_ready = out_ready;
endmodule // xor_t

package aes_functions;
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

   function automatic [7:0] sbox_inv(input [7:0] x);
      case (x)
        8'h63: sbox_inv = 8'h00;
        8'h7c: sbox_inv = 8'h01;
        8'h77: sbox_inv = 8'h02;
        8'h7b: sbox_inv = 8'h03;
        8'hf2: sbox_inv = 8'h04;
        8'h6b: sbox_inv = 8'h05;
        8'h6f: sbox_inv = 8'h06;
        8'hc5: sbox_inv = 8'h07;
        8'h30: sbox_inv = 8'h08;
        8'h01: sbox_inv = 8'h09;
        8'h67: sbox_inv = 8'h0a;
        8'h2b: sbox_inv = 8'h0b;
        8'hfe: sbox_inv = 8'h0c;
        8'hd7: sbox_inv = 8'h0d;
        8'hab: sbox_inv = 8'h0e;
        8'h76: sbox_inv = 8'h0f;
        8'hca: sbox_inv = 8'h10;
        8'h82: sbox_inv = 8'h11;
        8'hc9: sbox_inv = 8'h12;
        8'h7d: sbox_inv = 8'h13;
        8'hfa: sbox_inv = 8'h14;
        8'h59: sbox_inv = 8'h15;
        8'h47: sbox_inv = 8'h16;
        8'hf0: sbox_inv = 8'h17;
        8'had: sbox_inv = 8'h18;
        8'hd4: sbox_inv = 8'h19;
        8'ha2: sbox_inv = 8'h1a;
        8'haf: sbox_inv = 8'h1b;
        8'h9c: sbox_inv = 8'h1c;
        8'ha4: sbox_inv = 8'h1d;
        8'h72: sbox_inv = 8'h1e;
        8'hc0: sbox_inv = 8'h1f;
        8'hb7: sbox_inv = 8'h20;
        8'hfd: sbox_inv = 8'h21;
        8'h93: sbox_inv = 8'h22;
        8'h26: sbox_inv = 8'h23;
        8'h36: sbox_inv = 8'h24;
        8'h3f: sbox_inv = 8'h25;
        8'hf7: sbox_inv = 8'h26;
        8'hcc: sbox_inv = 8'h27;
        8'h34: sbox_inv = 8'h28;
        8'ha5: sbox_inv = 8'h29;
        8'he5: sbox_inv = 8'h2a;
        8'hf1: sbox_inv = 8'h2b;
        8'h71: sbox_inv = 8'h2c;
        8'hd8: sbox_inv = 8'h2d;
        8'h31: sbox_inv = 8'h2e;
        8'h15: sbox_inv = 8'h2f;
        8'h04: sbox_inv = 8'h30;
        8'hc7: sbox_inv = 8'h31;
        8'h23: sbox_inv = 8'h32;
        8'hc3: sbox_inv = 8'h33;
        8'h18: sbox_inv = 8'h34;
        8'h96: sbox_inv = 8'h35;
        8'h05: sbox_inv = 8'h36;
        8'h9a: sbox_inv = 8'h37;
        8'h07: sbox_inv = 8'h38;
        8'h12: sbox_inv = 8'h39;
        8'h80: sbox_inv = 8'h3a;
        8'he2: sbox_inv = 8'h3b;
        8'heb: sbox_inv = 8'h3c;
        8'h27: sbox_inv = 8'h3d;
        8'hb2: sbox_inv = 8'h3e;
        8'h75: sbox_inv = 8'h3f;
        8'h09: sbox_inv = 8'h40;
        8'h83: sbox_inv = 8'h41;
        8'h2c: sbox_inv = 8'h42;
        8'h1a: sbox_inv = 8'h43;
        8'h1b: sbox_inv = 8'h44;
        8'h6e: sbox_inv = 8'h45;
        8'h5a: sbox_inv = 8'h46;
        8'ha0: sbox_inv = 8'h47;
        8'h52: sbox_inv = 8'h48;
        8'h3b: sbox_inv = 8'h49;
        8'hd6: sbox_inv = 8'h4a;
        8'hb3: sbox_inv = 8'h4b;
        8'h29: sbox_inv = 8'h4c;
        8'he3: sbox_inv = 8'h4d;
        8'h2f: sbox_inv = 8'h4e;
        8'h84: sbox_inv = 8'h4f;
        8'h53: sbox_inv = 8'h50;
        8'hd1: sbox_inv = 8'h51;
        8'h00: sbox_inv = 8'h52;
        8'hed: sbox_inv = 8'h53;
        8'h20: sbox_inv = 8'h54;
        8'hfc: sbox_inv = 8'h55;
        8'hb1: sbox_inv = 8'h56;
        8'h5b: sbox_inv = 8'h57;
        8'h6a: sbox_inv = 8'h58;
        8'hcb: sbox_inv = 8'h59;
        8'hbe: sbox_inv = 8'h5a;
        8'h39: sbox_inv = 8'h5b;
        8'h4a: sbox_inv = 8'h5c;
        8'h4c: sbox_inv = 8'h5d;
        8'h58: sbox_inv = 8'h5e;
        8'hcf: sbox_inv = 8'h5f;
        8'hd0: sbox_inv = 8'h60;
        8'hef: sbox_inv = 8'h61;
        8'haa: sbox_inv = 8'h62;
        8'hfb: sbox_inv = 8'h63;
        8'h43: sbox_inv = 8'h64;
        8'h4d: sbox_inv = 8'h65;
        8'h33: sbox_inv = 8'h66;
        8'h85: sbox_inv = 8'h67;
        8'h45: sbox_inv = 8'h68;
        8'hf9: sbox_inv = 8'h69;
        8'h02: sbox_inv = 8'h6a;
        8'h7f: sbox_inv = 8'h6b;
        8'h50: sbox_inv = 8'h6c;
        8'h3c: sbox_inv = 8'h6d;
        8'h9f: sbox_inv = 8'h6e;
        8'ha8: sbox_inv = 8'h6f;
        8'h51: sbox_inv = 8'h70;
        8'ha3: sbox_inv = 8'h71;
        8'h40: sbox_inv = 8'h72;
        8'h8f: sbox_inv = 8'h73;
        8'h92: sbox_inv = 8'h74;
        8'h9d: sbox_inv = 8'h75;
        8'h38: sbox_inv = 8'h76;
        8'hf5: sbox_inv = 8'h77;
        8'hbc: sbox_inv = 8'h78;
        8'hb6: sbox_inv = 8'h79;
        8'hda: sbox_inv = 8'h7a;
        8'h21: sbox_inv = 8'h7b;
        8'h10: sbox_inv = 8'h7c;
        8'hff: sbox_inv = 8'h7d;
        8'hf3: sbox_inv = 8'h7e;
        8'hd2: sbox_inv = 8'h7f;
        8'hcd: sbox_inv = 8'h80;
        8'h0c: sbox_inv = 8'h81;
        8'h13: sbox_inv = 8'h82;
        8'hec: sbox_inv = 8'h83;
        8'h5f: sbox_inv = 8'h84;
        8'h97: sbox_inv = 8'h85;
        8'h44: sbox_inv = 8'h86;
        8'h17: sbox_inv = 8'h87;
        8'hc4: sbox_inv = 8'h88;
        8'ha7: sbox_inv = 8'h89;
        8'h7e: sbox_inv = 8'h8a;
        8'h3d: sbox_inv = 8'h8b;
        8'h64: sbox_inv = 8'h8c;
        8'h5d: sbox_inv = 8'h8d;
        8'h19: sbox_inv = 8'h8e;
        8'h73: sbox_inv = 8'h8f;
        8'h60: sbox_inv = 8'h90;
        8'h81: sbox_inv = 8'h91;
        8'h4f: sbox_inv = 8'h92;
        8'hdc: sbox_inv = 8'h93;
        8'h22: sbox_inv = 8'h94;
        8'h2a: sbox_inv = 8'h95;
        8'h90: sbox_inv = 8'h96;
        8'h88: sbox_inv = 8'h97;
        8'h46: sbox_inv = 8'h98;
        8'hee: sbox_inv = 8'h99;
        8'hb8: sbox_inv = 8'h9a;
        8'h14: sbox_inv = 8'h9b;
        8'hde: sbox_inv = 8'h9c;
        8'h5e: sbox_inv = 8'h9d;
        8'h0b: sbox_inv = 8'h9e;
        8'hdb: sbox_inv = 8'h9f;
        8'he0: sbox_inv = 8'ha0;
        8'h32: sbox_inv = 8'ha1;
        8'h3a: sbox_inv = 8'ha2;
        8'h0a: sbox_inv = 8'ha3;
        8'h49: sbox_inv = 8'ha4;
        8'h06: sbox_inv = 8'ha5;
        8'h24: sbox_inv = 8'ha6;
        8'h5c: sbox_inv = 8'ha7;
        8'hc2: sbox_inv = 8'ha8;
        8'hd3: sbox_inv = 8'ha9;
        8'hac: sbox_inv = 8'haa;
        8'h62: sbox_inv = 8'hab;
        8'h91: sbox_inv = 8'hac;
        8'h95: sbox_inv = 8'had;
        8'he4: sbox_inv = 8'hae;
        8'h79: sbox_inv = 8'haf;
        8'he7: sbox_inv = 8'hb0;
        8'hc8: sbox_inv = 8'hb1;
        8'h37: sbox_inv = 8'hb2;
        8'h6d: sbox_inv = 8'hb3;
        8'h8d: sbox_inv = 8'hb4;
        8'hd5: sbox_inv = 8'hb5;
        8'h4e: sbox_inv = 8'hb6;
        8'ha9: sbox_inv = 8'hb7;
        8'h6c: sbox_inv = 8'hb8;
        8'h56: sbox_inv = 8'hb9;
        8'hf4: sbox_inv = 8'hba;
        8'hea: sbox_inv = 8'hbb;
        8'h65: sbox_inv = 8'hbc;
        8'h7a: sbox_inv = 8'hbd;
        8'hae: sbox_inv = 8'hbe;
        8'h08: sbox_inv = 8'hbf;
        8'hba: sbox_inv = 8'hc0;
        8'h78: sbox_inv = 8'hc1;
        8'h25: sbox_inv = 8'hc2;
        8'h2e: sbox_inv = 8'hc3;
        8'h1c: sbox_inv = 8'hc4;
        8'ha6: sbox_inv = 8'hc5;
        8'hb4: sbox_inv = 8'hc6;
        8'hc6: sbox_inv = 8'hc7;
        8'he8: sbox_inv = 8'hc8;
        8'hdd: sbox_inv = 8'hc9;
        8'h74: sbox_inv = 8'hca;
        8'h1f: sbox_inv = 8'hcb;
        8'h4b: sbox_inv = 8'hcc;
        8'hbd: sbox_inv = 8'hcd;
        8'h8b: sbox_inv = 8'hce;
        8'h8a: sbox_inv = 8'hcf;
        8'h70: sbox_inv = 8'hd0;
        8'h3e: sbox_inv = 8'hd1;
        8'hb5: sbox_inv = 8'hd2;
        8'h66: sbox_inv = 8'hd3;
        8'h48: sbox_inv = 8'hd4;
        8'h03: sbox_inv = 8'hd5;
        8'hf6: sbox_inv = 8'hd6;
        8'h0e: sbox_inv = 8'hd7;
        8'h61: sbox_inv = 8'hd8;
        8'h35: sbox_inv = 8'hd9;
        8'h57: sbox_inv = 8'hda;
        8'hb9: sbox_inv = 8'hdb;
        8'h86: sbox_inv = 8'hdc;
        8'hc1: sbox_inv = 8'hdd;
        8'h1d: sbox_inv = 8'hde;
        8'h9e: sbox_inv = 8'hdf;
        8'he1: sbox_inv = 8'he0;
        8'hf8: sbox_inv = 8'he1;
        8'h98: sbox_inv = 8'he2;
        8'h11: sbox_inv = 8'he3;
        8'h69: sbox_inv = 8'he4;
        8'hd9: sbox_inv = 8'he5;
        8'h8e: sbox_inv = 8'he6;
        8'h94: sbox_inv = 8'he7;
        8'h9b: sbox_inv = 8'he8;
        8'h1e: sbox_inv = 8'he9;
        8'h87: sbox_inv = 8'hea;
        8'he9: sbox_inv = 8'heb;
        8'hce: sbox_inv = 8'hec;
        8'h55: sbox_inv = 8'hed;
        8'h28: sbox_inv = 8'hee;
        8'hdf: sbox_inv = 8'hef;
        8'h8c: sbox_inv = 8'hf0;
        8'ha1: sbox_inv = 8'hf1;
        8'h89: sbox_inv = 8'hf2;
        8'h0d: sbox_inv = 8'hf3;
        8'hbf: sbox_inv = 8'hf4;
        8'he6: sbox_inv = 8'hf5;
        8'h42: sbox_inv = 8'hf6;
        8'h68: sbox_inv = 8'hf7;
        8'h41: sbox_inv = 8'hf8;
        8'h99: sbox_inv = 8'hf9;
        8'h2d: sbox_inv = 8'hfa;
        8'h0f: sbox_inv = 8'hfb;
        8'hb0: sbox_inv = 8'hfc;
        8'h54: sbox_inv = 8'hfd;
        8'hbb: sbox_inv = 8'hfe;
        8'h16: sbox_inv = 8'hff;
      endcase // case (x)
   endfunction : sbox_inv

   function automatic [127:0] subbytes(input [127:0] x);
      for (int i = 0; i < 16; i++)
        subbytes[8*i +: 8] = sbox(x[8*i +: 8]);
   endfunction : subbytes

   function automatic [127:0] subbytes_inv(input [127:0] x);
      for (int i = 0; i < 16; i++)
        subbytes_inv[8*i +: 8] = sbox_inv(x[8*i +: 8]);
   endfunction : subbytes_inv

   function automatic [127:0] shiftrows_coef(input [127:0] x,
                                             input [3:0] coef);
      for (int i = 0; i < 16; i++)
        shiftrows_coef[8*i +: 8] = x[8*4'(coef*i) +: 8];
   endfunction : shiftrows_coef

   function automatic [127:0] shiftrows(input [127:0] x);
      return shiftrows_coef(x, 4'h5);
   endfunction : shiftrows

   function automatic [127:0] shiftrows_inv(input [127:0] x);
      return shiftrows_coef(x, 4'hd);
   endfunction : shiftrows_inv

   function automatic [7:0] mul_gf256(input [7:0] a, b);
      logic [14:0]                                       y;
      y = '0;
      foreach (a[i])
        if (a[i])
          y[i+:8] ^= b;
      for (int i = 14; i >= 8; i--)
        if (y[i])
          y[i-1 -: 8] ^= 8'h1b;
      return y[7:0];
   endfunction : mul_gf256

   function automatic [127:0] mixcolumns_coef(input [127:0] x,
                                              input [7:0] coef[4]);
      mixcolumns_coef = '0;

      for (int i = 0; i < 16; i++) begin : dobyte
         logic [7:0] b;
         b = 8'h0;
         foreach (coef[j])
           b ^= mul_gf256(coef[j], x[8 * {i[3:2], 2'(i[1:0] + j)} +: 8]);
         mixcolumns_coef[8*i +: 8] = b;
      end
   endfunction : mixcolumns_coef

   function automatic [127:0] mixcolumns(input [127:0] x);
      return mixcolumns_coef(x, '{8'h2, 8'h3, 8'h1, 8'h1});
   endfunction : mixcolumns

   function automatic [127:0] mixcolumns_inv(input [127:0] x);
      return mixcolumns_coef(x, '{8'he, 8'hb, 8'hd, 8'h9});
   endfunction : mixcolumns_inv
endpackage // aes_functions

module aes_full
  #(parameter bit DECRYPT = 1'b0,
    parameter KEY_SIZE = 128,
    parameter WORKER_COUNT = 1,
    parameter type AUX_T = logic)
   (// Data out
    // out_data is not registered
    output [127:0] out_data,
    output AUX_T out_aux,
    output out_valid,

    // Data in
    // Data is read when both in_valid and in_ready are high.
    input [127:0] in_data,
    // Auxiliary data passed unchanged
    input AUX_T in_aux,
    input in_valid,
    output in_ready,

    // Optional signal to clear all valid signals
    input clear_valid = 1'b0,

    // Key in
    input [127:0] key_in_data,
    input [3:0] key_in_addr,
    input key_in_wren,

    input clk,
    input resetn);

   import aes_functions::*;

   // The number of rounds here is the number of round keys.  It is 1
   // more than the round count described in some other places.

   localparam ROUND_COUNT = KEY_SIZE / 32 + 7;

   // Check parameters

   initial begin
      if (!(WORKER_COUNT >= 1 && WORKER_COUNT <= ROUND_COUNT))
        $error("Worker count invalid");
      if (!(KEY_SIZE >= 128 && KEY_SIZE % 32 == 0))
        $error("Key size invalid");
   end

   // Round key preprocessed for decryption

   wire [127:0] key_in_data_dec = mixcolumns_inv(key_in_data);

   // Generate workers.  Workers are connected in series.  If the number
   // of workers is less than the total rounds, data from the last
   // worker is fed back to the first worker.  worker_*[i] is the input
   // to worker i.

   // A counter marks how many rounds a piece of data has been processed

   localparam PASS_COUNT = (ROUND_COUNT + WORKER_COUNT - 1) / WORKER_COUNT;

   reg [$clog2(PASS_COUNT)-1:0] worker_cnt[WORKER_COUNT+1], last_worker_cnt;

   reg [127:0]                  worker_data[WORKER_COUNT+1], last_worker_data;
   AUX_T worker_aux[WORKER_COUNT+1], last_worker_aux;
   reg                          worker_valid[WORKER_COUNT+1], last_worker_valid;

   generate
      for (genvar i = 0; i < WORKER_COUNT; i++) begin : worker
         localparam bit stage_is_output = (ROUND_COUNT - 1 - i) %
                        WORKER_COUNT == 0;

         localparam PASS_COUNT_WORKER = (ROUND_COUNT + WORKER_COUNT - i - 1) /
                                        WORKER_COUNT;

         typedef struct {
            AUX_T aux;
            logic [$clog2(PASS_COUNT)-1:0] cnt;
         } worker_aux_t;

         reg [127:0]                       round_key;
         wire [3:0]                        key_in_addr_1;

         assign key_in_addr_1 = DECRYPT ? ROUND_COUNT - 1 - key_in_addr :
                                key_in_addr;

         wire [127:0]                      worker_out_data;
         worker_aux_t worker_out_aux;
         wire                              worker_out_valid,
                                           worker_out_valid_masked,
                                           worker_out_last_round;

         wire                              in_first_round, in_last_round;

         aes_round #(.DECRYPT(DECRYPT),
                     .AUX_T(worker_aux_t),
                     .ALWAYS_FIRST_ROUND(PASS_COUNT == 1 && i == 0))
         worker(.out_data(worker_out_data),
                .out_valid(worker_out_valid),
                .out_last_round(worker_out_last_round),
                .out_first_round(),
                .out_aux(worker_out_aux),
                .in_data(worker_data[i]),
                .in_valid(worker_valid[i]),
                .in_last_round,
                .in_first_round,
                .in_aux('{aux: worker_aux[i], cnt: worker_cnt[i]}),
                .round_key,
                .clk,
                .resetn);

         // Assign inputs.  Inputs can be simpler if this worker always
         // does the same round.

         if (PASS_COUNT_WORKER > 1) begin : inputs_multiple_rounds
            wire [$clog2(PASS_COUNT)-1:0] cnt = worker_cnt[i];

            reg [127:0]                   round_keys[PASS_COUNT_WORKER];
            reg                           use_key_dec;

            // Whether the key needs preprocessing
            always_comb begin
               if (!DECRYPT)
                 use_key_dec = 1'b0;
               else if (i != 0 && i != (ROUND_COUNT - 1) % WORKER_COUNT)
                 use_key_dec = 1'b1;
               else if (key_in_addr == 0 || key_in_addr == ROUND_COUNT - 1)
                 use_key_dec = 1'b0;
               else if (key_in_addr < ROUND_COUNT)
                 use_key_dec = 1'b1;
               else
                 use_key_dec = 1'bx;
            end // always_comb

            // Save keys.  For decryption, keys are used in reverse
            // order.
            always @(posedge clk)
              if (key_in_wren && key_in_addr_1 < ROUND_COUNT &&
                  key_in_addr_1 % WORKER_COUNT == i)
                round_keys[key_in_addr_1/WORKER_COUNT] <= use_key_dec ?
                                              key_in_data_dec :
                                              key_in_data;

            always @(posedge clk)
              if (worker_valid[i])
                round_key <= round_keys[cnt];

            assign in_first_round = i == 0 && cnt == 0;

            if (stage_is_output) begin : out_stage
               assign in_last_round = WORKER_COUNT * cnt + i + 1 >= ROUND_COUNT;

               assign worker_out_valid_masked = worker_out_valid &
                                                ~worker_out_last_round;

               assign out_valid = worker_out_valid & worker_out_last_round;
            end
            else begin : internal_stage
               assign in_last_round = 1'b0;

               assign worker_out_valid_masked = worker_out_valid;
            end
         end // block: inputs_multiple_rounds
         else begin : inputs_same_round
            always @(posedge clk)
              if (key_in_wren && key_in_addr_1 == i)
                round_key <= DECRYPT && i > 0 && i < ROUND_COUNT - 1 ?
                                                key_in_data_dec : key_in_data;

            assign in_first_round = i == 0;

            if (stage_is_output) begin : out_stage
               assign in_last_round = 1'b1;

               assign worker_out_valid_masked = 1'b0;
               assign out_valid = worker_out_valid;
            end
            else begin : internal_stage
               assign in_last_round = 1'b0;

               assign worker_out_valid_masked = worker_out_valid;
            end
         end // block: inputs_same_round

         // Register outputs

         always @(posedge clk)
           if (~resetn | clear_valid)
             worker_valid[i+1] <= 1'b0;
           else
             worker_valid[i+1] <= worker_out_valid_masked;

         always @(posedge clk) begin
            worker_data[i+1] <= worker_out_data;
            worker_aux[i+1] <= worker_out_aux.aux;
            worker_cnt[i+1] <= worker_out_aux.cnt;
         end

         // Outputs to be looped back

         if (i + 1 == WORKER_COUNT) begin
            assign last_worker_cnt = worker_out_aux.cnt;
            assign last_worker_aux = worker_out_aux.aux;
            assign last_worker_data = worker_out_data;
            assign last_worker_valid = worker_out_valid_masked;
         end

         // Outputs to outside the module

         if (stage_is_output) begin
            assign out_data = worker_out_data;
            assign out_aux = worker_out_aux.aux;
         end
      end : worker
   endgenerate

   // Input to the first stage

   always @(posedge clk)
     if (~resetn | clear_valid)
       worker_valid[0] <= 1'b0;
     else
       worker_valid[0] <= last_worker_valid | in_valid;

   always @(posedge clk)
     if (last_worker_valid) begin
        worker_cnt[0] <= PASS_COUNT > 2 ? last_worker_cnt + 1 : 1;
        worker_data[0] <= last_worker_data;
        worker_aux[0] <= last_worker_aux;
     end
     else if (in_valid) begin
        worker_cnt[0] <= 0;
        worker_data[0] <= in_data;
        worker_aux[0] <= in_aux;
     end

   assign in_ready = ~last_worker_valid;
endmodule // aes_full

module aes_round
  #(parameter bit DECRYPT = 1'b0,
    parameter type AUX_T = logic,
    // If this instance is only used for the first round.  In that case,
    // the extra stage of registers are omitted.
    parameter bit ALWAYS_FIRST_ROUND = 1'b0)
   (// Output data is not registered
    output reg [127:0] out_data,
    output reg out_valid,
    output reg out_last_round,
    output reg out_first_round,
    output AUX_T out_aux,
    input [127:0] in_data,
    input in_valid,
    // The first-round and last-round indicators are used to skip
    // certain steps.
    // Whether this is the last round.  It causes MixColumns to be
    // skipped.
    input in_last_round,
    // Whether this is the first round.  It causes SubBytes and
    // ShiftRows and MixColumns to be skipped.
    input in_first_round,
    // Auxiliary data passed unchanged
    input AUX_T in_aux,
    input [127:0] round_key,
    input clk,
    input resetn);

   import aes_functions::*;

   reg [127:0] stage1_data, stage1_data_nosubbytes;

   generate
      if (ALWAYS_FIRST_ROUND) begin
         // The extra stage is omitted when SubBytes is not used.

         assign stage1_data = 'x;
         assign stage1_data_nosubbytes = in_data;
         assign out_valid = in_valid;
         assign out_last_round = in_last_round;
         assign out_first_round = in_first_round;
         assign out_aux = in_aux;
      end

      else begin
         // The round is done in 2 clock cycles.  The first is SubBytes
         // and ShiftRows.  The second is MixColumns, and AddRoundKey.
         // When decrypting, the order is kept the same, which means
         // ShiftRows and SubBytes of the previous round followed by
         // AddRoundKey, and MixColumns of this round.  When decrypting,
         // the round key is preprocessed through MixColumns to save
         // logic.

         // Do SubBytes

         always @(posedge clk) begin
            stage1_data <= DECRYPT ? subbytes_inv(shiftrows_inv(in_data)) :
                           shiftrows(subbytes(in_data));
            stage1_data_nosubbytes <= in_data;
         end

         // Signals passed unchanged

         always @(posedge clk)
           if (~resetn)
             out_valid <= 1'b0;
           else
             out_valid <= in_valid;

         always @(posedge clk) begin
            out_last_round <= in_last_round;
            out_first_round <= in_first_round;
            out_aux <= in_aux;
         end
      end // else: !if(ALWAYS_FIRST_ROUND)
   endgenerate

   // Output data

   always_comb begin
      // Skip SubBytes and ShiftRows in the first round
      if (out_first_round)
        out_data = stage1_data_nosubbytes;
      else
        out_data = stage1_data;

      // Skip MixColumns in the first and last rounds
      if (~(out_last_round | out_first_round))
        out_data = DECRYPT ? mixcolumns_inv(out_data) : mixcolumns(out_data);

      // AddKey
      out_data ^= round_key;
   end // always_comb
endmodule // aes_round
