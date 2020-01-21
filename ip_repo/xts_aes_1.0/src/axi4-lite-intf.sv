module axi4_lite_intf #
  (
   // Width of data bus
   parameter integer DATA_WIDTH = 32,
   // Width of address bus
   parameter integer ADDR_WIDTH = 4
   )
   (// Registers written by the master
    output reg [7:0] reg_written[1<<ADDR_WIDTH],
    // Registers written by the master, only high when being written
    output reg [7:0] reg_written_cleared[1<<ADDR_WIDTH],

    // Data to be read by the master
    input [7:0] reg_to_read[1<<ADDR_WIDTH],

    // Saved incoming data
    output reg [DATA_WIDTH-1:0] wdata_saved,
    output reg [ADDR_WIDTH-1:0] waddr_saved, raddr_saved,
    output reg [DATA_WIDTH/8-1:0] wstrb_saved,

    // When there is a transaction
    output reg wr_tran, rd_tran,

    // When a specific register is written to
    output reg onwrite[1<<ADDR_WIDTH],

    // AXI4-Lite
    input awvalid,
    output reg awready,
    input [ADDR_WIDTH-1 : 0] awaddr,
    input wvalid,
    output reg wready,
    input [DATA_WIDTH-1 : 0] wdata,
    input [DATA_WIDTH/8-1:0] wstrb,
    output reg bvalid,
    input bready,
    output [1 : 0] bresp,
    input arvalid,
    output reg arready,
    input [ADDR_WIDTH-1 : 0] araddr,
    output reg rvalid,
    input rready,
    output [DATA_WIDTH-1 : 0] rdata,
    output [1 : 0] rresp,

    input clk,
    input resetn
    );

   initial
     if (!(DATA_WIDTH >= 8 && (DATA_WIDTH & (DATA_WIDTH - 1)) == 0))
       $error("Data width not supported");

   localparam ADDR_BITS_WORD = $clog2(DATA_WIDTH / 8);

   // Save data written

   generate
      for (genvar i = 0; i < (1 << ADDR_WIDTH) / (DATA_WIDTH / 8); i++)
        begin : write_reg
           for (genvar j = 0; j < DATA_WIDTH / 8; j++)
             begin : write_reg
                localparam ij = DATA_WIDTH / 8 * i + j;

                wire onwrite_ij;

                assign onwrite_ij = wr_tran &&
                                    (waddr_saved >> ADDR_BITS_WORD) == i &&
                                    wstrb_saved[j];

                always @(posedge clk)
                  if (~resetn)
                    reg_written[ij] <= '0;
                  else if (onwrite_ij)
                    reg_written[ij] <= wdata_saved[8*j+:8];

                always @(posedge clk)
                  if (~resetn | ~onwrite_ij)
                    reg_written_cleared[ij] <= '0;
                  else
                    reg_written_cleared[ij] <= wdata_saved[8*j+:8];

                always @(posedge clk)
                  if (~resetn)
                    onwrite[ij] <= 1'b0;
                  else
                    onwrite[ij] <= onwrite_ij;
             end // block: write_reg
        end // block: write_reg
   endgenerate

   // Save write signals

   always @(posedge clk)
     if (~resetn) begin
        wdata_saved <= '0;
        wstrb_saved <= '0;
     end
     else if (wvalid & wready) begin
        wdata_saved <= wdata;
        wstrb_saved <= wstrb;
     end

   always @(posedge clk)
     if (~resetn)
       waddr_saved <= '0;
     else if (awvalid & awready)
       waddr_saved <= awaddr;

   // Write handshake

   reg         write_got_data, write_got_addr, write_got_data_next,
               write_got_addr_next, wr_tran_next;

   always_comb begin
      wr_tran_next = 1'b0;
      write_got_data_next = write_got_data;
      write_got_addr_next = write_got_addr;

      if (wvalid & wready)
        write_got_data_next = 1'b1;
      if (awvalid & awready)
        write_got_addr_next = 1'b1;

      if (write_got_data_next & write_got_addr_next & ~(bvalid & ~bready)) begin
         wr_tran_next = 1'b1;
         write_got_data_next = 1'b0;
         write_got_addr_next = 1'b0;
      end
   end // always_comb

   always @(posedge clk)
     if (~resetn) begin
        write_got_data <= 1'b0;
        write_got_addr <= 1'b0;
        wr_tran <= 1'b0;
        wready <= 1'b0;
        awready <= 1'b0;
     end
     else begin
        write_got_data <= write_got_data_next;
        write_got_addr <= write_got_addr_next;
        wr_tran <= wr_tran_next;
        wready <= ~write_got_data_next;
        awready <= ~write_got_addr_next;
     end // else: !if(~resetn)

   always @(posedge clk)
     if (~resetn)
       bvalid <= 1'b0;
     else if (wr_tran_next)
       bvalid <= 1'b1;
     else if (bvalid)
       bvalid <= 1'b0;

   assign bresp = 2'b00;

   // Read handshake

   reg read_got_addr, read_got_addr_next, rd_tran_next;

   always_comb begin
      rd_tran_next = 1'b0;
      read_got_addr_next = read_got_addr;

      if (arvalid & arready)
        read_got_addr_next = 1'b1;

      if (read_got_addr_next & ~(rvalid & ~rready)) begin
         rd_tran_next = 1'b1;
         read_got_addr_next = 1'b0;
      end
   end // always_comb

   assign rresp = 2'b00;

   always @(posedge clk)
     if (arvalid & arready)
       raddr_saved <= araddr;

   always @(posedge clk)
     if (~resetn) begin
        read_got_addr <= 1'b0;
        rd_tran <= 1'b0;
        arready <= 1'b0;
     end
     else begin
        read_got_addr <= read_got_addr_next;
        rd_tran <= rd_tran_next;
        arready <= ~read_got_addr_next;
     end

   always @(posedge clk)
     if (~resetn)
       rvalid <= 1'b0;
     else if (rd_tran_next)
       rvalid <= 1'b1;
     else if (rready)
       rvalid <= 1'b0;

   generate
      for (genvar i = 0; i < DATA_WIDTH / 8; i++)
        assign rdata[8*i +: 8] = reg_to_read[(raddr_saved &
                                              ~(DATA_WIDTH / 8 - 1)) | i];
   endgenerate
endmodule // axi4_lite_intf
