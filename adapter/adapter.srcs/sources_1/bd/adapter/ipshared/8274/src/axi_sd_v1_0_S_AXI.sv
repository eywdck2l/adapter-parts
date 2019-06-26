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

    (* X_INTERFACE_PARAMETER = "SENSITIVITY LEVEL_HIGH" *)
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

   localparam reg_ram_start = 0;
   localparam reg_ram_end = 8;

   // Registers that are cleared on reset
   localparam reg_clear_reset_start = 8;
   localparam reg_clear_reset_end = 12;
   // Those that can be read
   localparam reg_clear_reset_read_start = 8;
   localparam reg_clear_reset_read_end = 11;
   // Registers that are cleared also when the device is reset
   localparam reg_clear_device_reset_start = 8;
   localparam reg_clear_device_reset_end = 10;
   localparam offset_ocr = 8;
   localparam offset_size = 9;
   // Registers that are not cleared when the device is reset
   localparam offset_intr_en = 10;
   localparam offset_data_write = 11;
   localparam bit [31:0] reg_clear_reset_mask [reg_clear_reset_start:
                                               reg_clear_reset_end-1] =
                         '{32'hff000000,
                           32'hffffffff,
                           // the bits in status that can trigger
                           // interrupts
                           32'h18d40000,
                           32'hffffffff};

   // Registers that are only high for one clock
   localparam reg_clear_always_start = 12;
   localparam reg_clear_always_end = 15;
   localparam offset_csr_set_bits = 12;
   localparam offset_csr_clr_bits = 13;
   localparam offset_control = 14;

   localparam reg_read_only_start  = 16;
   localparam reg_read_only_end = 26;
   localparam reg_saved_start = 17;
   localparam reg_saved_end = 25;
   localparam offset_status = 16;
   localparam offset_csr_read = 17;
   localparam offset_saved_cmd_arg = 18;
   localparam offset_last_cmd_arg = 19;
   localparam offset_erase_start = 20;
   localparam offset_erase_end = 21;
   localparam offset_block_limit = 22;
   localparam offset_pre_erase_count = 23;
   localparam offset_dat_blocks_read = 24;
   localparam offset_data_read = 25;

   genvar     i;

   wire [C_S_AXI_ADDR_WIDTH-ADDR_LSB-1:0] addr_write, addr_read;

   assign addr_read = axi_araddr[C_S_AXI_ADDR_WIDTH-1:ADDR_LSB];
   assign addr_write = axi_awaddr[C_S_AXI_ADDR_WIDTH-1:ADDR_LSB];

   // Registers that are cleared on reset

   reg [31:0] reg_clear_reset [reg_clear_reset_start:reg_clear_reset_end-1];
   wire       got_reset_cmd;

   generate
      for (i = reg_clear_reset_start; i < reg_clear_reset_end; i = i + 1)
        begin:set_reg_clear_reset
           always @(posedge S_AXI_ACLK)
             if ((i >= reg_clear_device_reset_start &&
                  i < reg_clear_device_reset_end) ?
                 (!S_AXI_ARESETN || got_reset_cmd) :
                 !S_AXI_ARESETN)
               reg_clear_reset[i] <= 0;
             else if (slv_reg_wren && addr_write == i)
               reg_clear_reset[i] <= S_AXI_WDATA & reg_clear_reset_mask[i];
        end
   endgenerate

   // Registers that are cleared the whole time except on write

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

   // Ram for CID and CSD

   reg [31:0]                                       ram[0:reg_ram_end -
                                                        reg_ram_start - 1];
   wire [$clog2(reg_ram_end - reg_ram_start) - 1:0] ram_dev_addr;
   reg [31:0]                                       ram_dev_data;

   always @(posedge S_AXI_ACLK)
     if (slv_reg_wren && addr_write >= reg_ram_start &&
         addr_write < reg_ram_end)
       ram[addr_write - reg_ram_start] <= S_AXI_WDATA;

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN)
       ram_dev_data <= 0;
     else
       ram_dev_data <= ram[ram_dev_addr];

   // Registers read by the CPU

   wire [31:0] reg_read_only [reg_read_only_start:reg_read_only_end-1];

   always @(*)
     if (addr_read >= reg_ram_start && addr_read < reg_ram_end)
       reg_data_out = ram[addr_read - reg_ram_start];
     else if (addr_read >= reg_clear_reset_read_start &&
         addr_read < reg_clear_reset_read_end)
       reg_data_out = reg_clear_reset[addr_read];
     else if (addr_read >= reg_read_only_start &&
              addr_read < reg_read_only_end)
       reg_data_out = reg_read_only[addr_read];
     else
       reg_data_out = 0;

   wire        status_read = slv_reg_rden && addr_read == offset_status;

   wire        sd_cmd_i;
   wire        sd_cmd_o, sd_cmd_t;
   wire [3:0]  sd_dat_i, sd_dat_o, sd_dat_t;

   wire        last_cmd_is_acmd;
   wire [5:0]  last_cmd_index;
   wire [31:0] last_cmd_arg;
   wire        last_cmd_ignored;
   wire        last_cmd_valid;
   wire        got_new_cmd;
   wire        saved_cmd_is_acmd;
   wire [5:0]  saved_cmd_index;
   wire [31:0] saved_cmd_arg;
   wire        new_cmd_saved;
   wire [31:0] card_status_out;
   wire        is_inactive;
   wire [31:0] erase_start, erase_end;
   wire [31:0] block_limit;
   wire        block_limit_used;
   wire [22:0] pre_erase_count;
   wire        pre_erase_count_used;
   wire        got_cmd8;
   wire        start_data_tran;
   wire        no_more_write_data;
   wire [31:0] device_data_out;
   wire        may_write_data;
   wire        may_read_data;
   wire [31:0] dat_blocks_read;
   wire        sd_dat3_pullup_off;
   reg         data_write_en;

   device #(.dat_word_size(32))
   controller(.csr_set_bits(reg_clear_always[offset_csr_set_bits]),
              .csr_clr_bits(reg_clear_always[offset_csr_clr_bits]),
              .ocr_high_byte_in(reg_clear_reset[offset_ocr][31:24]),
              .size_in(reg_clear_reset[offset_size]),
              .ram_addr(ram_dev_addr),
              .ram_data(ram_dev_data),
              .ack_data_tran(status_read),
              .data_read_en(slv_reg_rden && addr_read == offset_data_read),
              .data_in(reg_clear_reset[offset_data_write]),
              .data_out(device_data_out),
              .got_new_cmd_out(got_new_cmd),
              .sd_clk_i(sd_clk),
              .clk(S_AXI_ACLK),
              .resetn_in(S_AXI_ARESETN),
              .*);

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN)
       data_write_en <= 1'b0;
     else
       data_write_en <= slv_reg_wren && addr_write == offset_data_write;

   // whether a command has been received since the last time the status
   // was read
   reg         cmd_unread;
   // whether more than one command has been received since the last
   // time the status was read
   reg         cmd_missed;

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

   // Same for the command saved

   reg         cmd_saved_unread;
   reg         cmd_saved_missed;

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN)
       cmd_saved_unread <= 1'b0;
     else if (new_cmd_saved)
       cmd_saved_unread <= 1'b1;
     else if (status_read)
       cmd_saved_unread <= 1'b0;

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN | status_read)
       cmd_saved_missed <= 1'b0;
     else if (cmd_saved_unread & new_cmd_saved)
       cmd_saved_missed <= 1'b1;

   // Whether the device has been reset by cmd0 since the last time the
   // status was read

   reg         device_reset_r;

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN | status_read)
       device_reset_r <= 1'b0;
     else if (got_reset_cmd)
       device_reset_r <= 1'b1;

   // status

   reg [31:0]  status;

   assign reg_read_only[offset_status] = status;

   always @(*) begin
      status = 0;

      status[28] = may_read_data;
      status[27] = may_write_data;
      status[26] = pre_erase_count_used;
      status[25] = block_limit_used;
      status[24] = got_cmd8;
      status[23] = device_reset_r;
      status[22] = is_inactive;
      status[21] = cmd_missed;
      status[20] = cmd_unread;
      status[19] = cmd_saved_missed;
      status[18] = cmd_saved_unread;
      status[17] = last_cmd_valid;
      status[16] = last_cmd_ignored;
      status[14] = last_cmd_is_acmd;
      status[13:8] = last_cmd_index;
      status[6] = saved_cmd_is_acmd;
      status[5:0] = saved_cmd_index;
   end // always @ (*)

   // registers saved when the status is read

   reg [31:0]  reg_saved[reg_saved_start:reg_saved_end - 1];

   assign reg_read_only[reg_saved_start:reg_saved_end - 1] = reg_saved;

   always @(posedge S_AXI_ACLK)
     if (~S_AXI_ARESETN)
       {>>{reg_saved}} <= 0;
     else if (status_read) begin
        reg_saved[offset_csr_read] <= card_status_out;
        reg_saved[offset_saved_cmd_arg] <= saved_cmd_arg;
        reg_saved[offset_last_cmd_arg] <= last_cmd_arg;
        reg_saved[offset_erase_start] <= erase_start;
        reg_saved[offset_erase_end] <= erase_end;
        reg_saved[offset_block_limit] <= block_limit;
        reg_saved[offset_pre_erase_count] <= {9'h0, pre_erase_count};
        reg_saved[offset_dat_blocks_read] <= dat_blocks_read;
     end // if (status_read)

   // read and write data

   assign reg_read_only[offset_data_read] = device_data_out;

   // control

   assign {no_more_write_data,
           start_data_tran} = reg_clear_always[offset_control];

   // IO buffers, because I did not find out how to make Vivado infer
   // them when the module is in an IP.

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

   assign interrupt = |(status & reg_clear_reset[offset_intr_en]);

   // User logic ends

endmodule
