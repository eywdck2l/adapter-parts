`timescale 1 ns / 1 ps

module axi_sd_v1_0_S_AXI #
  (
   // Users to add parameters here

   // User parameters ends

   // Width of S_AXI data bus
   parameter integer C_S_AXI_DATA_WIDTH = 32,
   // Width of S_AXI address bus
   parameter integer C_S_AXI_ADDR_WIDTH = 7
   )
   (
    // Users to add ports here
    input wire sd_clk,
    inout tri sd_cmd,
    inout tri [3:0] sd_dat,
    output tri sd_dat3_pullup,
    // User ports ends

    // interrupt with the rising edge being active
    (* X_INTERFACE_PARAMETER = "SENSITIVITY EDGE_RISING" *)
    output interrupt,

    // Do not modify the ports beyond this line

    // Global Clock Signal
    input wire  S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input wire  S_AXI_ARESETN,
    // Write address (issued by master, acceped by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    // Write channel Protection type. This signal indicates the
    // privilege and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    input wire [2 : 0] S_AXI_AWPROT,
    // Write address valid. This signal indicates that the master signaling
    // valid write address and control information.
    input wire  S_AXI_AWVALID,
    // Write address ready. This signal indicates that the slave is ready
    // to accept an address and associated control signals.
    output wire  S_AXI_AWREADY,
    // Write data (issued by master, acceped by Slave)
    input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    // This implementation ignores the write strobes and treats all
    // write accesses as being the full data bus width.
    // Write strobes. This signal indicates which byte lanes hold
    // valid data. There is one write strobe bit for each eight
    // bits of the write data bus.
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid. This signal indicates that valid write
    // data and strobes are available.
    input wire  S_AXI_WVALID,
    // Write ready. This signal indicates that the slave
    // can accept the write data.
    output wire  S_AXI_WREADY,
    // Write response. This signal indicates the status
    // of the write transaction.
    output wire [1 : 0] S_AXI_BRESP,
    // Write response valid. This signal indicates that the channel
    // is signaling a valid write response.
    output wire  S_AXI_BVALID,
    // Response ready. This signal indicates that the master
    // can accept a write response.
    input wire  S_AXI_BREADY,
    // Read address (issued by master, acceped by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether the
    // transaction is a data access or an instruction access.
    input wire [2 : 0] S_AXI_ARPROT,
    // Read address valid. This signal indicates that the channel
    // is signaling valid read address and control information.
    input wire  S_AXI_ARVALID,
    // Read address ready. This signal indicates that the slave is
    // ready to accept an address and associated control signals.
    output wire  S_AXI_ARREADY,
    // Read data (issued by slave)
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    // Read response. This signal indicates the status of the
    // read transfer.
    output wire [1 : 0] S_AXI_RRESP,
    // Read valid. This signal indicates that the channel is
    // signaling the required read data.
    output wire  S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
    // accept the read data and response information.
    input wire  S_AXI_RREADY
    );

   // AXI4LITE signals
   reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_awaddr;
   reg                            axi_awready;
   reg                            axi_wready;
   reg [1 : 0]                    axi_bresp;
   reg                            axi_bvalid;
   reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_araddr;
   reg                            axi_arready;
   reg [C_S_AXI_DATA_WIDTH-1 : 0] axi_rdata;
   reg [1 : 0]                    axi_rresp;
   reg                            axi_rvalid;

   // Example-specific design signals
   // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
   // ADDR_LSB is used for addressing 32/64 bit registers/memories
   // ADDR_LSB = 2 for 32 bits (n downto 2)
   // ADDR_LSB = 3 for 64 bits (n downto 3)
   localparam integer             ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;

   wire                           slv_reg_rden;
   wire                           slv_reg_wren;
   reg [C_S_AXI_DATA_WIDTH-1:0]   reg_data_out;
   integer                        byte_index;
   reg                            aw_en;

   // I/O Connections assignments

   assign S_AXI_AWREADY = axi_awready;
   assign S_AXI_WREADY  = axi_wready;
   assign S_AXI_BRESP   = axi_bresp;
   assign S_AXI_BVALID  = axi_bvalid;
   assign S_AXI_ARREADY = axi_arready;
   assign S_AXI_RDATA   = axi_rdata;
   assign S_AXI_RRESP   = axi_rresp;
   assign S_AXI_RVALID  = axi_rvalid;
   // Implement axi_awready generation
   // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
   // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
   // de-asserted when reset is low.

   always @( posedge S_AXI_ACLK )
     begin
        if ( S_AXI_ARESETN == 1'b0 )
          begin
             axi_awready <= 1'b0;
             aw_en <= 1'b1;
          end
        else
          begin
             if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
               begin
                  // slave is ready to accept write address when
                  // there is a valid write address and write data
                  // on the write address and data bus. This design
                  // expects no outstanding transactions.
                  axi_awready <= 1'b1;
                  aw_en <= 1'b0;
               end
             else if (S_AXI_BREADY && axi_bvalid)
               begin
                  aw_en <= 1'b1;
                  axi_awready <= 1'b0;
               end
             else
               begin
                  axi_awready <= 1'b0;
               end
          end
     end

   // Implement axi_awaddr latching
   // This process is used to latch the address when both
   // S_AXI_AWVALID and S_AXI_WVALID are valid.

   always @( posedge S_AXI_ACLK )
     begin
        if ( S_AXI_ARESETN == 1'b0 )
          begin
             axi_awaddr <= 0;
          end
        else
          begin
             if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
               begin
                  // Write Address latching
                  axi_awaddr <= S_AXI_AWADDR;
               end
          end
     end

   // Implement axi_wready generation
   // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
   // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
   // de-asserted when reset is low.

   always @( posedge S_AXI_ACLK )
     begin
        if ( S_AXI_ARESETN == 1'b0 )
          begin
             axi_wready <= 1'b0;
          end
        else
          begin
             if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
               begin
                  // slave is ready to accept write data when
                  // there is a valid write address and write data
                  // on the write address and data bus. This design
                  // expects no outstanding transactions.
                  axi_wready <= 1'b1;
               end
             else
               begin
                  axi_wready <= 1'b0;
               end
          end
     end

   // Implement memory mapped register select and write logic generation
   // The write data is accepted and written to memory mapped registers when
   // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
   // select byte enables of slave registers while writing.
   // These registers are cleared when reset (active low) is applied.
   // Slave register write enable is asserted when valid address and data are available
   // and the slave is ready to accept the write address and write data.
   assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

   // Implement write response logic generation
   // The write response and response valid signals are asserted by the slave
   // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
   // This marks the acceptance of address and indicates the status of
   // write transaction.

   always @( posedge S_AXI_ACLK )
     begin
        if ( S_AXI_ARESETN == 1'b0 )
          begin
             axi_bvalid  <= 0;
             axi_bresp   <= 2'b0;
          end
        else
          begin
             if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
               begin
                  // indicates a valid write response is available
                  axi_bvalid <= 1'b1;
                  axi_bresp  <= 2'b0; // 'OKAY' response
               end                   // work error responses in future
             else
               begin
                  if (S_AXI_BREADY && axi_bvalid)
                    //check if bready is asserted while bvalid is high)
                    //(there is a possibility that bready is always asserted high)
                    begin
                       axi_bvalid <= 1'b0;
                    end
               end
          end
     end

   // Implement axi_arready generation
   // axi_arready is asserted for one S_AXI_ACLK clock cycle when
   // S_AXI_ARVALID is asserted. axi_awready is
   // de-asserted when reset (active low) is asserted.
   // The read address is also latched when S_AXI_ARVALID is
   // asserted. axi_araddr is reset to zero on reset assertion.

   always @( posedge S_AXI_ACLK )
     begin
        if ( S_AXI_ARESETN == 1'b0 )
          begin
             axi_arready <= 1'b0;
             axi_araddr  <= 32'b0;
          end
        else
          begin
             if (~axi_arready && S_AXI_ARVALID)
               begin
                  // indicates that the slave has acceped the valid read address
                  axi_arready <= 1'b1;
                  // Read address latching
                  axi_araddr  <= S_AXI_ARADDR;
               end
             else
               begin
                  axi_arready <= 1'b0;
               end
          end
     end

   // Implement axi_arvalid generation
   // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both
   // S_AXI_ARVALID and axi_arready are asserted. The slave registers
   // data are available on the axi_rdata bus at this instance. The
   // assertion of axi_rvalid marks the validity of read data on the
   // bus and axi_rresp indicates the status of read transaction.axi_rvalid
   // is deasserted on reset (active low). axi_rresp and axi_rdata are
   // cleared to zero on reset (active low).
   always @( posedge S_AXI_ACLK )
     begin
        if ( S_AXI_ARESETN == 1'b0 )
          begin
             axi_rvalid <= 0;
             axi_rresp  <= 0;
          end
        else
          begin
             if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
               begin
                  // Valid read data is available at the read data bus
                  axi_rvalid <= 1'b1;
                  axi_rresp  <= 2'b0; // 'OKAY' response
               end
             else if (axi_rvalid && S_AXI_RREADY)
               begin
                  // Read data is accepted by the master
                  axi_rvalid <= 1'b0;
               end
          end
     end

   // Implement memory mapped register select and read logic generation
   // Slave register read enable is asserted when valid address is available
   // and the slave is ready to accept the read address.
   assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

   // Output register or memory read data
   always @( posedge S_AXI_ACLK )
     begin
        if ( S_AXI_ARESETN == 1'b0 )
          begin
             axi_rdata  <= 0;
          end
        else
          begin
             // When there is a valid read address (S_AXI_ARVALID) with
             // acceptance of read address by the slave (axi_arready),
             // output the read dada
             if (slv_reg_rden)
               begin
                  axi_rdata <= reg_data_out;     // register read data
               end
          end
     end

   // user logic

   localparam reg_clear_never_start = 0;
   localparam reg_clear_never_end = 8;
   localparam offset_cid = 0;
   localparam offset_csd = 4;

   localparam reg_clear_reset_start = 8;
   localparam reg_clear_reset_end = 9;
   localparam offset_ocr = 8;
   localparam bit [31:0] reg_clear_reset_mask [reg_clear_reset_start:
                                               reg_clear_reset_end-1] =
                         '{32'hff000000};

   localparam reg_clear_always_start = 12;
   localparam reg_clear_always_end = 14;
   localparam offset_csr_set_bits = 12;
   localparam offset_csr_clr_bits = 13;

   localparam reg_read_only_start  = 16;
   localparam reg_read_only_end = 19;
   localparam offset_status = 16;
   localparam offset_cmd_arg = 17;
   localparam offset_csr_read = 18;

   genvar     i;

   wire [C_S_AXI_ADDR_WIDTH-ADDR_LSB-1:0] addr_write, addr_read;

   assign addr_read = axi_araddr[C_S_AXI_ADDR_WIDTH-1:ADDR_LSB];
   assign addr_write = axi_awaddr[C_S_AXI_ADDR_WIDTH-1:ADDR_LSB];

   // registers that are cleared on reset

   reg [31:0] reg_clear_reset [reg_clear_reset_start:reg_clear_reset_end-1];

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN)
       {>>{reg_clear_reset}} <= 0;
     else if (slv_reg_wren && addr_write >= reg_clear_reset_start &&
         addr_write < reg_clear_reset_end)
       reg_clear_reset[addr_write] <= S_AXI_WDATA &
                                            reg_clear_reset_mask[addr_write];

   // registers that are cleared the whole time except on write

   reg [31:0] reg_clear_always [reg_clear_always_start:reg_clear_always_end-1];

   generate
      for (i = reg_clear_always_start; i < reg_clear_always_end; i = i + 1)
        begin: set_reg_clear_always
           always @(posedge S_AXI_ACLK)
             if (!S_AXI_ARESETN || !(slv_reg_wren && addr_write == i))
               reg_clear_always[i] <= 0;
             else
               reg_clear_always[i] <= S_AXI_WDATA;
        end
   endgenerate

   // registers read by the CPU

   wire [31:0] reg_read_only [reg_read_only_start:reg_read_only_end-1];

   always @(*)
     if (addr_read >= reg_clear_reset_start &&
         addr_read < reg_clear_reset_end)
       reg_data_out = reg_clear_reset[addr_read];
     else if (addr_read >= reg_read_only_start &&
              addr_read < reg_read_only_end)
       reg_data_out = reg_read_only[addr_read];
     else
       reg_data_out = 0;

   wire        sd_cmd_i;
   wire        sd_cmd_o, sd_cmd_t;
   wire [3:0]  sd_dat_i, sd_dat_o, sd_dat_t;
   wire        sd_dat3_pullup_off;

   wire        got_cmd8, is_inactive, got_new_cmd, device_reset;
   wire [5:0]  cmd_index;
   wire [31:0] card_status_out;
   wire        acmd_expected_out;
   wire [31:0] cmd_arg;
   reg [31:0]  cmd_arg_saved;
   reg [31:0]  card_status_saved;
   // whether a command has been received since the last time the status
   // was read
   reg         cmd_unread;
   // whether more than one command has been received since the last
   // time the status was read
   reg         cmd_missed;
   // whether the device has been reset by cmd0 since the last time the
   // status was read
   reg         device_reset_r;

   wire        status_read = slv_reg_rden && addr_read == offset_status;

   device controller(.csr_set_bits(reg_clear_always[offset_csr_set_bits]),
                     .csr_clr_bits(reg_clear_always[offset_csr_clr_bits]),
                     .ocr_high_byte(reg_clear_reset[offset_ocr][31:24]),
                     .write_ram_en(slv_reg_wren &&
                                   addr_write >= reg_clear_never_start &&
                                   addr_write < reg_clear_never_end),
                     .write_ram_addr(addr_write - reg_clear_never_start),
                     .write_ram_data(S_AXI_WDATA),
                     .card_status_out,
                     .got_cmd8,
                     .device_reset,
                     .acmd_expected_out,
                     .cmd_index,
                     .cmd_arg,
                     .got_new_cmd,
                     .is_inactive,
                     .sd_clk_i(sd_clk),
                     .sd_cmd_i,
                     .sd_cmd_o,
                     .sd_cmd_t,
                     .sd_dat_i,
                     .sd_dat_o,
                     .sd_dat_t,
                     .sd_dat3_pullup_off,
                     .clk(S_AXI_ACLK),
                     .resetn_in(S_AXI_ARESETN));

   // Save the command argument and card status so what are read by the
   // CPU are their values when the status was read.

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN)
       begin
          cmd_arg_saved <= 0;
          card_status_saved <= 0;
       end
     else if (status_read)
       begin
          cmd_arg_saved <= cmd_arg;
          card_status_saved <= card_status_out;
       end

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN)
       cmd_unread <= 1'b0;
     else if (got_new_cmd)
       cmd_unread <= 1'b1;
     else if (status_read)
       cmd_unread <= 1'b0;

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN | status_read)
       cmd_missed <= 1'b0;
     else if (cmd_unread & got_new_cmd)
       cmd_missed <= 1'b1;

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN | status_read)
       device_reset_r <= 1'b0;
     else if (device_reset)
       device_reset_r <= 1'b1;

   assign reg_read_only[offset_status] = {acmd_expected_out, cmd_index, 3'h0,
                                          cmd_missed, cmd_unread, got_cmd8,
                                          device_reset_r, is_inactive};
   assign reg_read_only[offset_cmd_arg] = cmd_arg_saved;
   assign reg_read_only[offset_csr_read] = card_status_saved;

   // IO buffers, because I did not find out how to make Vivado infer
   // them when the module is in an IP

   IOBUF buf_cmd(.O(sd_cmd_i),
                 .IO(sd_cmd),
                 .I(sd_cmd_o),
                 .T(sd_cmd_t));

   generate
      for (i = 0; i < 4; i = i + 1)
        begin: buf_dat
           IOBUF buf_dat(.O(sd_dat_i[i]),
                         .IO(sd_dat[i]),
                         .I(sd_dat_o[i]),
                         .T(sd_dat_t[i]));
        end
   endgenerate

   OBUFT buf_dat3_pullup(.O(sd_dat3_pullup),
                         .I(1'b1),
                         .T(sd_dat3_pullup_off));

   // interrupt

   assign interrupt = got_new_cmd;

   // User logic ends

endmodule
