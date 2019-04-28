// part of controller related to cmd

module sd_if_controller_cmd
  (output [19:0] status,
   output [31:0] rx_arg,
   output [31:0] tx_ctrl,
   output reg interrupt,
   input [31:0] wdata,
   input write_tx_ctrl,
   input write_tx_dat,
   input sd_clk,
   inout sd_cmd,
   input clk,
   input resetn);

   // minimum Ncr
   localparam write_delay_default = 2;
   // 6 bytes minus 1 byte crc
   localparam write_byte_cnt_default = 5;

   // idle
   localparam state_idle = 0;
   // new command has been received
   localparam state_cmd_received = 1;
   // the write buffer is not full
   localparam state_writing_buf_not_full = 2;
   // the write buffer is full
   localparam state_writing_buf_full = 3;

   reg [31:0] to_write;

   // to reset tx_ctrl and tx_dat
   reg        clr_write_status;
   // to read tx_ctrl from axi
   reg        update_write_status;
   // to read tx_dat from axi
   reg        update_write_data;
   // to set cmd_write_no_cmd_index
   reg        set_write_no_cmd_index;
   // to read cmd data and crc error
   reg        update_last_received;
   reg        write_strb, write_strb_next;
   reg        interrupt_next;

   wire       ready_new;
   wire       crc_err_new;
   wire [47:0] data_new;
   wire        more_data_towrite;
   wire        read_data_towrite;
   wire        ncr_timeout;
   wire        cmd_read_low_n;

   reg         crc_err;
   reg [1:0]   state;
   reg [1:0]   state_next;
   reg [47:0]  last_received;
   reg [2:0]   write_delay;
   reg [4:0]   write_byte_cnt;
   reg         write_no_cmd_index;
   reg         write_no_crc;

   assign status = {crc_err, 1'b0, state, last_received[7:0],
                    last_received[47:40]};
   assign rx_arg = last_received[39:8];
   assign tx_ctrl = {write_byte_cnt, 3'h0, write_delay, write_no_cmd_index,
                     write_no_crc};

   sd_cmd_if cmd_if(.read_ready(ready_new),
                    .read_crc_err(crc_err_new),
                    .data_read(data_new),
                    .more_data_towrite(more_data_towrite),
                    .read_data_towrite(read_data_towrite),
                    .ncr_timeout(ncr_timeout),
                    .cmd_read_low_n(cmd_read_low_n),
                    .write_strb(write_strb),
                    .write_no_crc_sig(write_no_crc),
                    .write_bits({write_byte_cnt, 3'h0}),
                    .write_delay({3'h0, write_delay}),
                    .data_towrite({write_no_cmd_index ?
                                   to_write[31:24] :
                                   {2'h0, last_received[45:40]},
                                   to_write[23:0]}),
                    .write_on_rising_edge(1'b0),
                    .sd_clk(sd_clk),
                    .sd_cmd(sd_cmd),
                    .clk(clk),
                    .resetn(resetn));

   always @(*)
     begin
        state_next = state;
        clr_write_status = 1'b0;
        update_write_status = 1'b0;
        update_write_data = 1'b0;
        write_strb_next = 1'b0;
        interrupt = 1'b0;
        update_last_received = 1'b0;
        set_write_no_cmd_index = 1'b0;

        (* full_case *)
          case (state)
            state_idle:
              begin
                 clr_write_status = 1'b1;
                 if (ready_new)
                   begin
                      state_next = state_cmd_received;
                      update_last_received = 1'b1;
                   end
              end

            state_cmd_received:
              begin
                 interrupt = 1'b1;
                 if (ncr_timeout | ~cmd_read_low_n)
                   state_next = state_idle;
                 else if (write_tx_dat)
                   begin
                      state_next = state_writing_buf_full;
                      write_strb_next = 1'b1;
                      update_write_data = 1'b1;
                   end
                 else if (write_tx_ctrl)
                   update_write_status = 1'b1;
              end // case: state_cmd_received

            state_writing_buf_not_full:
              begin
                 interrupt = 1'b1;
                 if (write_tx_dat)
                   begin
                      state_next = state_writing_buf_full;
                      update_write_data = 1'b1;
                   end
              end

            state_writing_buf_full:
              if (read_data_towrite)
                begin
                   if (more_data_towrite)
                     begin
                        set_write_no_cmd_index = 1'b1;
                        // if the cmd response data just read is the cmd
                        // index, do not request data to write
                        if (write_no_cmd_index)
                          state_next = state_writing_buf_not_full;
                     end
                   else
                     state_next = state_idle;
                end // if (read_data_towrite)
          endcase // case (state)
     end // always @ (*)

   always @(posedge clk)
     if (!resetn)
       begin
          state <= state_idle;
          last_received <= 0;
          crc_err <= 1'b0;
          write_strb <= 1'b0;
       end
     else
       begin
          state <= state_next;
          write_strb <= write_strb_next;
          if (update_last_received)
            begin
               last_received <= data_new;
               crc_err <= crc_err_new;
            end
       end // else: !if(!resetn)

   always @(posedge clk)
     if (!resetn || clr_write_status)
       begin
          write_delay <= write_delay_default;
          write_byte_cnt <= write_byte_cnt_default;
          write_no_cmd_index <= 1'b0;
          write_no_crc <= 1'b0;
          to_write <= 0;
       end
     else
       begin
          if (update_write_status)
            begin
               {write_delay, write_no_cmd_index, write_no_crc} <= wdata[4:0];
               write_byte_cnt <= wdata[12:8];
            end
          if (update_write_data)
            to_write <= wdata;
          if (set_write_no_cmd_index)
            write_no_cmd_index <= 1'b1;
       end // else: !if(!resetn || clr_write_status)

endmodule // sd_cmd_if_controller
