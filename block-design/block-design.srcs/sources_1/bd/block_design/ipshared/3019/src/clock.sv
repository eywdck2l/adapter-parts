module clock_divider
  #(parameter divisor)
   (output clk_divided,
    // div_en for the next stage
    output div_en_cascade,
    input clk_in,
    input div_en = 1'b1,
    input resetn);

   // The divisor for flipping
   localparam div_flip = divisor / 2;

   // This module can only divide by an even number
   initial
     if (divisor & 1)
       $error("Can't divide clock by odd number", , divisor);

   reg    clk_divided_d;

   assign div_en_cascade = {clk_divided_d, clk_divided} == 2'b01;

   always @(posedge clk_in)
     if (~resetn)
       clk_divided_d <= 1'b0;
     else
       clk_divided_d <= clk_divided;

   generate
      // The power of 2 divisors are treated differently.
      // It looks like Vivado does not support $onehot.
      if ((div_flip & (div_flip - 1)) == 0) begin : divide
         reg [$clog2(div_flip):0] ctr;

         assign clk_divided = ctr[$clog2(div_flip)];

         always @(posedge clk_in)
           if (~resetn)
             ctr <= 0;
           else if (div_en)
             ctr <= ctr + 1;
      end : divide

      else begin : divide
         reg [$clog2(div_flip)-1:0] ctr;
         reg                        clk_out_r;

         assign clk_divided = clk_out_r;

         always @(posedge clk_in)
           if (~resetn) begin
              ctr <= 0;
              clk_out_r <= 1'b0;
           end
           else if (div_en) begin
              if ((ctr & (div_flip - 1)) == (div_flip - 1)) begin
                 ctr <= 0;
                 clk_out_r <= ~clk_out_r;
              end
              else
                ctr <= ctr + 1;
           end
      end : divide
   endgenerate
endmodule // clock_divider

module clock_divider_cascaded
  #(parameter taps = 1,
    parameter real out_freq[taps],
    parameter bit div_pow2[taps] = '{default: 0},
    parameter real in_freq = 0)
   (output [taps-1:0] clk_divided,
    input clk_in,
    input div_en = 1'b1,
    input resetn);

   wire   first_stage_en_out;

   generate
      // The divisor should be an even number.
      localparam divisor = div_pow2[taps-1] ?
                           1 << $clog2(int'($ceil(in_freq / out_freq[taps-1]))) :
                           int'($ceil(in_freq / out_freq[taps-1] / 2)) * 2;

      if (divisor < 2)
        initial
          $error("Output clock too fast", , out_freq[taps-1], , in_freq);

      localparam real first_stage_freq = in_freq / divisor;

      initial
        $info("Clock requested", , out_freq[taps-1], , "actual", ,
              first_stage_freq);

      // The first divider
      clock_divider
        #(.divisor(divisor)
          ) first_divider
          (.clk_divided(clk_divided[taps-1]),
           .div_en_cascade(first_stage_en_out),
           .clk_in(clk_in),
           .div_en(div_en),
           .resetn(resetn));

      // The other dividers
      if (taps > 1)
        clock_divider_cascaded
          #(.taps(taps - 1),
            .out_freq(out_freq[0:taps-2]),
            .div_pow2(div_pow2[0:taps-2]),
            .in_freq(first_stage_freq)
            ) rest_dividers
            (.clk_divided(clk_divided[0:taps-2]),
             .clk_in(clk_in),
             .div_en(first_stage_en_out),
             .resetn(resetn));
   endgenerate
endmodule // clock_divider_cascaded

module clock_divider_selector
  #(parameter clk_cnt = 1,
    // Frequencies from fastest to slowest
    parameter real out_freq[clk_cnt],
    // Whether to use power of 2 divisors instead of the number that is
    // most accurate
    parameter bit div_pow2[clk_cnt] = '{default: 0},
    parameter real in_freq = 0)
   (output reg clk_out,
    // 0 is for 0 output.  1 is slowest.  taps is fastest.
    input [$clog2(clk_cnt+1)-1:0] select_in,
    input clk_in,
    input div_en = 1'b1,
    input resetn);

   // Generate the wanted frequencies.
   wire [clk_cnt-1:0] clk_divided;
   clock_divider_cascaded
     #(.taps(clk_cnt),
       .out_freq(out_freq),
       .div_pow2(div_pow2),
       .in_freq(in_freq)) divider
       (.clk_divided,
        .clk_in,
        .div_en,
        .resetn);

   // The taps.  taps[0] is constant 0.
   wire [clk_cnt:0]   taps = {clk_divided, 1'b0};

   // To prevent glitches on the output clock when changing the
   // frequency, we wait until the new clock is at the same level as the
   // old before switching.  Since two clocks generated here always have
   // different frequencies, it is impossible that two clocks never
   // reach the same level.

   reg [$clog2(clk_cnt+1)-1:0] select_cur;

   always @(posedge clk_in)
     if (~resetn)
       select_cur <= 0;
     else if (taps[select_cur] == taps[select_in])
       select_cur <= select_in;

   always @(posedge clk_in)
     if (~resetn)
       clk_out <= 1'b0;
     else
       clk_out <= taps[select_cur];
endmodule // clock_divider_selector
