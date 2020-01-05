`timescale 1 ns / 1 ps

module axi4_lite_intf #
  (
   // Width of data bus
   parameter integer DATA_WIDTH = 32,
   // Width of address bus
   parameter integer ADDR_WIDTH = 4,

   // Different types of registers.  Lower bounds are inclusive.  Upper
   // bounds are exclusive.  Set both to 0 for empty ranges.  Registers
   // not covered by these ranges give 0 when read by the master.

   // Normal memory.  Reads return what was previously written.
   parameter read_written_start = 0,
   parameter read_written_end = 0,

   // Registers that give other data when being read.  Output data is
   // read from reg_in.
   parameter read_special_start = 0,
   parameter read_special_end = 0,

   // The bits that can be set in each register
   parameter bit [DATA_WIDTH-1:0]
   write_mask[1<<(ADDR_WIDTH-ADDR_LSB)] = '{default: '1}
   )
   (
    output reg [DATA_WIDTH-1:0] reg_written[1<<(ADDR_WIDTH-ADDR_LSB)],
    // Data to be read by the master.  Used when the address is between
    // read_special_start and read_special_end.
    input [DATA_WIDTH-1:0] reg_in,

    // Reads and writes can be delayed.  Write transactions are delayed
    // until write_busy_in goes low.  Read transactions that depend on
    // reg_in are delayed until read_busy_in goes low.
    input read_busy_in = 1'b0,
    input write_busy_in = 1'b0,

    // Per-register reset signals
    input [(1<<(ADDR_WIDTH-ADDR_LSB))-1:0] reg_resetn = '1,

    // Lines indicating when the registers are being read or written to.
    // onwrite is high when the register is being updated.  onread is
    // high when data from reg_in is latched.  onwrite_pre and
    // onread_pre are high as soon as we know the register is going to
    // be read or written to.  onwrite always follows onwrite_pre with a
    // 1 clock cycle latency.  onread follows onread_pre with a 1 clock
    // cycle latency when read_busy_in is low.
    output reg [(1<<(ADDR_WIDTH-ADDR_LSB))-1:0] onwrite,
    output [(1<<(ADDR_WIDTH-ADDR_LSB))-1:0] onwrite_pre, onread, onread_pre,

    // Saved incoming data
    output reg [DATA_WIDTH-1:0] wdata_saved,
    output reg [ADDR_WIDTH-1:0] waddr_saved, raddr_saved,

    // AXI4-Lite
    input awvalid,
    output reg awready,
    input [ADDR_WIDTH-1 : 0] awaddr,
    input wvalid,
    output reg wready,
    input [DATA_WIDTH-1 : 0] wdata,
    output reg bvalid,
    input bready,
    output [1 : 0] bresp,
    input arvalid,
    output reg arready,
    input [ADDR_WIDTH-1 : 0] araddr,
    output reg rvalid,
    input rready,
    output reg [DATA_WIDTH-1 : 0] rdata,
    output [1 : 0] rresp,

    input wire clk,
    input wire resetn
    );

   localparam ADDR_LSB = $clog2(DATA_WIDTH) - 3;

   // Validate the parameters

   initial begin:validate
      localparam int ranges[2][2] = '{'{read_written_start, read_written_end},
                                      '{read_special_start, read_special_end}};
      foreach (ranges[i]) begin
         if (ranges[i][0] == 0 && ranges[i][1] == 0)
           continue;
         if (ranges[i][0] >= ranges[i][1])
           $error("range is empty", ranges[i]);
         foreach (ranges[, j])
           if (ranges[i][j] > (1 << (ADDR_WIDTH - ADDR_LSB)))
             $error("range out of bounds of addr width", ranges[i]);
         foreach (ranges[j])
           if (i != j && ranges[i][0] < ranges[j][1] &&
               ranges[j][0] < ranges[i][1])
             $error("ranges overlap", ranges[i], ranges[j]);
      end // foreach (ranges[i])
   end:validate

   // Ignore the low bits of the addresses.

   wire [ADDR_WIDTH-ADDR_LSB-1:0] raddr_high_bits, waddr_high_bits;

   assign raddr_high_bits = araddr[ADDR_WIDTH-1:ADDR_LSB];
   assign waddr_high_bits = awaddr[ADDR_WIDTH-1:ADDR_LSB];

   // Read handshake

   reg [DATA_WIDTH-1 : 0] rdata_next;
   reg                    read_delay_needed;

   reg                    set_arready, set_rdata;

   enum                   {
                           read_idle,
                           read_got_req,
                           read_done
                           } read_state, read_state_next;

   always_comb begin
      read_state_next = read_state;
      set_arready = 1'b0;
      set_rdata = 1'b0;

      case (read_state)
        read_idle:
          if (arvalid) begin
             read_state_next = read_got_req;
             set_arready = 1'b1;
          end
        read_got_req:
          if (~(read_delay_needed & read_busy_in)) begin
             read_state_next = read_done;
             set_rdata = 1'b1;
          end
        read_done:
          if (rready)
            read_state_next = read_idle;
      endcase // case (read_state)
   end // always_comb

   always @(posedge clk)
     if (~resetn)
       read_state <= read_idle;
     else
       read_state <= read_state_next;

   always @(posedge clk)
     if (~resetn) begin
        arready <= 1'b0;
        rvalid <= 1'b0;
     end
     else begin
        arready <= set_arready;
        rvalid <= read_state_next == read_done;
     end

   always @(posedge clk)
     if (~resetn)
       rdata <= '0;
     else if (set_rdata)
       rdata <= rdata_next;

   assign rresp = 2'b00;

   always @(posedge clk)
     if (~resetn)
       read_delay_needed <= 1'b0;
     else if (set_arready)
       read_delay_needed <= raddr_high_bits >= read_special_start &&
                            raddr_high_bits < read_special_end;

   // Write handshake

   reg set_wready;

   enum {
         write_idle,
         write_got_req,
         write_done
         } write_state, write_state_next;

   always_comb begin
      write_state_next = write_state;
      set_wready = 1'b0;

      case (write_state)
        write_idle:
          if (awvalid & wvalid) begin
             write_state_next = write_got_req;
             set_wready = 1'b1;
          end
        write_got_req:
          if (~write_busy_in)
            write_state_next = write_done;
        write_done:
          if (bready)
            write_state_next = write_idle;
      endcase // case (write_state)
   end // always_comb

   always @(posedge clk)
     if (~resetn)
       write_state <= write_idle;
     else
       write_state <= write_state_next;

   always @(posedge clk)
     if (~resetn) begin
        awready <= 1'b0;
        wready <= 1'b0;
        bvalid <= 1'b0;
     end
     else begin
        awready <= set_wready;
        wready <= set_wready;
        bvalid <= write_state_next == write_done;
     end

   assign bresp = 2'b00;

   // Save the incoming data

   always @(posedge clk)
     if (~resetn)
       raddr_saved <= '0;
     else if (set_arready)
       raddr_saved <= araddr;
   always @(posedge clk)
     if (~resetn) begin
        waddr_saved <= '0;
        wdata_saved <= '0;
     end
     else if (set_wready) begin
        waddr_saved <= awaddr;
        wdata_saved <= wdata;
     end

   wire [ADDR_WIDTH-ADDR_LSB-1:0] raddr_saved_high_bits;

   assign raddr_saved_high_bits = raddr_saved[ADDR_WIDTH-1:ADDR_LSB];

   // Handle writes.  All writes are registered including writes to
   // unassigned locations.  However since those registers will not be
   // read, they will be discarded in synthesis.

   generate
      for (genvar i = 0; i < (1 << (ADDR_WIDTH - ADDR_LSB)); i = i + 1)
        begin:set_reg
           always @(posedge clk)
             if (!resetn || !reg_resetn[i])
               reg_written[i] <= '0;
             else if (set_wready && waddr_high_bits == i)
               reg_written[i] <= wdata & write_mask[i];
        end:set_reg
   endgenerate

   // Registers read by the master

   always_comb
     if (raddr_saved_high_bits >= read_written_start &&
         raddr_saved_high_bits < read_written_end)
       rdata_next = reg_written[raddr_saved_high_bits];
     else if (raddr_saved_high_bits >= read_special_start &&
              raddr_saved_high_bits < read_special_end)
       rdata_next = reg_in;
     else
       rdata_next = '0;

   // Read indicators and write indicators

   generate
      for (genvar i = 0; i < (1 << (ADDR_WIDTH - ADDR_LSB)); i = i + 1)
        begin:set_indicators
           assign onread_pre[i] = set_arready && raddr_high_bits == i;

           if (i >= read_special_start && i < read_special_end) begin:delayed
              reg read_addr_match;
              always @(posedge clk)
                if (~resetn)
                  read_addr_match <= 1'b0;
                else if (set_arready)
                  read_addr_match <= onread_pre[i];
              assign onread[i] = set_rdata && read_addr_match;
           end:delayed
           else begin:not_delayed
              reg saved;
              always @(posedge clk)
                if (~resetn)
                  saved <= 1'b0;
                else
                  saved <= onread_pre[i];
              assign onread[i] = saved;
           end:not_delayed

           assign onwrite_pre[i] = set_wready && waddr_high_bits == i;

           always @(posedge clk)
             if (~resetn)
               onwrite[i] <= 1'b0;
             else
               onwrite[i] <= onwrite_pre[i];
        end:set_indicators
   endgenerate
endmodule // axi4_lite_intf
