//---------------------------------------------------------------------------
//--  Copyright 2015 - 2017 Systems Group, ETH Zurich
//--
//--  This hardware module is free software: you can redistribute it and/or
//--  modify it under the terms of the GNU General Public License as published
//--  by the Free Software Foundation, either version 3 of the License, or
//--  (at your option) any later version.
//--
//--  This program is distributed in the hope that it will be useful,
//--  but WITHOUT ANY WARRANTY; without even the implied warranty of
//--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//--  GNU General Public License for more details.
//--
//--  You should have received a copy of the GNU General Public License
//--  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//---------------------------------------------------------------------------


module tcp_top_loopback #(
      parameter IS_SIM = 0
      )
      (

			  input wire    aclk,
			  input wire    aresetn,

			  output wire	    m_axis_open_connection_TVALID,
			  input  wire 	    m_axis_open_connection_TREADY,
			  output  wire[47:0]     m_axis_open_connection_TDATA,

			  input  wire 	    s_axis_open_status_TVALID,
			  output  wire     s_axis_open_status_TREADY,
			  input  wire[23:0] 	    s_axis_open_status_TDATA,

			  output  wire 	    m_axis_close_connection_TVALID,
			  input   wire     m_axis_close_connection_TREADY,
			  output  wire [15:0]     m_axis_close_connection_TDATA,

			  output  wire 	    m_axis_listen_port_TVALID,
			  input  wire    m_axis_listen_port_TREADY,
			  output  wire [15:0]     m_axis_listen_port_TDATA,

			  input  wire 	    s_axis_listen_port_status_TVALID,
			  output  wire  s_axis_listen_port_status_TREADY,
			  input  wire [7:0] 	    s_axis_listen_port_status_TDATA,

			  input  wire 	    s_axis_notifications_TVALID,
			  output  wire    s_axis_notifications_TREADY,
			  input  wire [87:0] 	    s_axis_notifications_TDATA,

			  output  wire     m_axis_read_package_TVALID,
			  input  wire    m_axis_read_package_TREADY,
			  output  wire [31:0]     m_axis_read_package_TDATA,

			  output  wire     m_axis_tx_data_TVALID,
			  input  wire   m_axis_tx_data_TREADY,
			  output  wire [511:0]     m_axis_tx_data_TDATA,
			  output  wire [64:0] 	    m_axis_tx_data_TKEEP,
			  output   wire     m_axis_tx_data_TLAST,

			  output  reg	    m_axis_tx_metadata_TVALID, //for handshake logic
			  input  wire     m_axis_tx_metadata_TREADY,
			  output  reg [31:0] m_axis_tx_metadata_TDATA, //for handshake logic

			  input  wire     s_axis_tx_status_TVALID,
			  output  wire    s_axis_tx_status_TREADY,
			  input  wire [63:0] 	    s_axis_tx_status_TDATA,

			  input  wire 	    s_axis_rx_data_TVALID,
			  output  wire     s_axis_rx_data_TREADY,
			  input  wire [511:0] 	    s_axis_rx_data_TDATA,
			  input  wire [63:0] 	    s_axis_rx_data_TKEEP,
			  input  wire [0:0] 	    s_axis_rx_data_TLAST,

			  input  wire 	    s_axis_rx_metadata_TVALID,
			  output  wire 	    s_axis_rx_metadata_TREADY,
			  input  wire [15:0] 	    s_axis_rx_metadata_TDATA



			  );

   assign m_axis_close_connection_TVALID = 0;
   assign s_axis_listen_port_status_TREADY = 1;
   assign s_axis_rx_metadata_TREADY = 1;
   assign s_axis_tx_status_TREADY = 1;

   assign m_axis_open_connection_TVALID  = 0;
   assign s_axis_open_status_TREADY = 1;


   (* mark_debug = "true" *) reg 					    port_opened;
   (* mark_debug = "true" *) reg 					    axis_listen_port_valid;
   (* mark_debug = "true" *) reg [15:0] 				    axis_listen_port_data;
   reg 					    reset;
   wire [63:0] 				    meta_output;

   wire 				    s_axis_rx_data_TFULL;

   wire 				    toAdderValid;
   wire [512:0] 				    toAdderData;
   wire 				    toAdderReady;

   wire 				    fromAdderValid;
   wire [512:0] 				    fromAdderData;
   wire 				    fromAdderReady;

   //(* mark_debug = "true" *) wire 				    splitPreValid;
	wire 				    splitPreValid;
   //(* mark_debug = "true" *) wire                     splitPreReady;
 	wire                     splitPreReady;
   //(* mark_debug = "true" *) wire [64+511+1:0]                     splitPreData;
	wire [64+511+1:0]                     splitPreData;

   wire 				    finalOutValid;
   wire                     finalOutReady;
   wire                     finalOutLast;
   wire [64+511+1:0]                     finalOutData;

   wire 				    finalOutValid_out;
   wire                     finalOutReady_out;
   wire                     finalOutLast_out;
   wire [64+511+1:0]                     finalOutData_out;

   wire 				    sesspackValid;
   wire             sesspackMetaValid;
   wire             sesspackReady;
   //wire 				    sesspackMetaReady;
   reg                      sesspackMetaReady;
   wire 				    sesspackLast;
   //wire [63:0] 				    sesspackData;
   wire [63:0] 				    sesspackMeta;


   //(* mark_debug = "true" *) wire[511:0] maxis_tx_data;
   //(* mark_debug = "true" *) wire maxis_tx_last;
   //(* mark_debug = "true" *) wire maxis_tx_ready;c
   //(* mark_debug = "true" *) wire maxis_tx_valid;

   //(* mark_debug = "true" *) wire[15:0] maxis_meta_data;
   //(* mark_debug = "true" *) wire maxis_meta_ready;
   //(* mark_debug = "true" *) wire maxis_meta_valid;


   reg [15:0] myClock;

   wire clk;

   assign clk = aclk;


   assign m_axis_listen_port_TDATA = axis_listen_port_data;
   assign m_axis_listen_port_TVALID = axis_listen_port_valid;


   //open up server port (2888)
   always @(posedge clk)
     begin
	reset <= !aresetn;

	if (aresetn == 0) begin
           port_opened <= 1'b0;
           axis_listen_port_valid <= 1'b0;
           axis_listen_port_data <= 0;
           myClock <= 0;
	end
	else begin
           axis_listen_port_valid <= 1'b0;

           //try every half millisecond
           if (myClock[15]==1'b1 && port_opened==0 && m_axis_listen_port_TREADY==1) begin
              axis_listen_port_valid <= 1'b1;
              axis_listen_port_data <= 16'h0B48; //port = 2888
              port_opened <= 1;
           end


           myClock <= myClock+1;
	end
     end




        nukv_fifogen #(
            .DATA_SIZE(513),
            .ADDR_BITS(5)
        ) input_firstword_fifo_inst (
                .clk(clk),
                .rst(reset),
                .s_axis_tvalid(s_axis_rx_data_TVALID),
                .s_axis_tready(s_axis_rx_data_TREADY),
                .s_axis_tdata({s_axis_rx_data_TLAST[0], s_axis_rx_data_TDATA}),
                .m_axis_tvalid(toAdderValid),
                .m_axis_tready(toAdderReady),
                .m_axis_tdata(toAdderData)
                );
                
                
 //////////////
 //TOP-k logic starts here; takes input on "toAdder", gives output on "fromAdder"
 /////////////
 wire [31+1+1:0] int_data;
 wire int_valid;
 wire int_ready;
 
packet_parser packet_parser_inst(
    .clk(clk),
    .rst(reset),
    .rx_TDATA(toAdderData),
    .rx_TVALID(toAdderValid),
    .rx_TREADY(toAdderReady),
    //.rx_TLAST(toAdderData[512]),
    .tx_TDATA(int_data),
    .tx_TVALID(int_valid),
    .tx_TREADY(int_ready)
    );


top_k_block top_k_block_inst
(
    .clk(clk),
    .rst(reset),
    .rx_data_TVALID(int_valid),
    .rx_data_TREADY(int_ready),
    .rx_data_TLAST(int_data[32]),
    .clear(int_data[33]),
    .rx_data_TDATA(int_data[31:0]), //33 bits with tlast encrypted
    .tx_data_TVALID(fromAdderValid),
    .tx_data_TREADY(1'b1),
    .tx_data_TDATA(fromAdderData)
    ); 
 
  //////////////////
  //TOP-k logic ends
  //////////////////
 
 

  wire from_acceptor_valid;
  wire from_acceptor_ready;
  wire[63:0] from_acceptor_data;

   event_acceptor  event_acceptor_inst (
					    .clk(clk),
					    .rst(reset),

					    .event_valid(s_axis_notifications_TVALID),
					    .event_ready(s_axis_notifications_TREADY),
					    .event_data(s_axis_notifications_TDATA),

					    .readreq_valid(m_axis_read_package_TVALID),
					    .readreq_ready(m_axis_read_package_TREADY),
					    .readreq_data(m_axis_read_package_TDATA),

              .event_out_valid(from_acceptor_valid),
              .event_out_ready(from_acceptor_ready),
              .event_out_data(from_acceptor_data)

					    );

   nukv_fifogen #(
            .DATA_SIZE(64),
            .ADDR_BITS(6)
        ) fifo_meta (
                .clk(clk),
                .rst(reset),
                .s_axis_tvalid(from_acceptor_valid),
                .s_axis_tready(from_acceptor_ready),
                .s_axis_tdata(from_acceptor_data),
                .m_axis_tvalid(sesspackMetaValid),
                .m_axis_tready(sesspackMetaReady),
                .m_axis_tdata(sesspackMeta)
                );



    assign splitPreValid = fromAdderValid;
    //assign fromAdderReady = splitPreReady;

    assign splitPreData[64+511:0] = {fromAdderData[511:0],sesspackMeta};

    assign splitPreData[64+512] = fromAdderData[512]; //tlast


   nukv_fifogen #(
            .DATA_SIZE(64+512+1),
            //.DATA_SIZE(64+31+1),
            .ADDR_BITS(6)
        ) fifo_splitprepare (
						    .clk(clk),
						    .rst(reset),
						    .s_axis_tvalid(splitPreValid),
						    .s_axis_tready(splitPreReady),
						    .s_axis_tdata(splitPreData),
						    .m_axis_tvalid(finalOutValid),
						    .m_axis_tready(finalOutReady),
						    .m_axis_tdata(finalOutData)
						    );
nukv_fifogen #(
      .DATA_SIZE(64+512+1),
      //.DATA_SIZE(64+31+1),
      .ADDR_BITS(6)
  ) fifo_out (
          .clk(clk),
          .rst(reset),
          .s_axis_tvalid(finalOutValid),
          .s_axis_tready(finalOutReady),
          .s_axis_tdata(finalOutData),
          .m_axis_tvalid(finalOutValid_out),
          .m_axis_tready(finalOutReady_out),
          .m_axis_tdata(finalOutData_out)
          );

   wire ignoreWrites;
   wire ignoreProps;
   reg[7:0] dataTokens;

   assign   finalOutLast_out = finalOutData_out[64+512];
   //assign finalOutLast = finalOutData[32+64];
   //assign   maxis_tx_valid = finalOutValid & finalOutReady;
  // assign   maxis_tx_data = finalOutData[511+64:64];
  //assign   maxis_tx_data = finalOutData[31+64:64];
   assign   m_axis_tx_data_TKEEP = 64'hFFFFFFFFFFFFFFFFF;
   //assign   maxis_tx_last = finalOutValid & finalOutLast;

  //assign   finalOutReady = maxis_meta_ready & maxis_tx_ready;
  assign   finalOutReady_out =  dataTokens == 0 ? 0 :  m_axis_tx_data_TREADY; //change how to assign finalOutReady

   //assign   maxis_meta_data = finalOutData[15:0];
   //assign   maxis_meta_valid = finalOutValid & finalOutReady & finalOutLast;

   //wire [512:0] m_axis_tx_data_COMBINED;
   //wire [32:0] m_axis_tx_data_COMBINED;
//   nukv_fifogen #(
//                 .DATA_SIZE(512+1),
//                 .ADDR_BITS(8)
//             ) output_net_data_buffer (
//                     .clk(clk),
//                     .rst(reset),
//                     .s_axis_tvalid(maxis_tx_valid),
//                     .s_axis_tready(maxis_tx_ready),
//                     .s_axis_tdata({maxis_tx_last,maxis_tx_data}),
//                     .m_axis_tvalid(m_axis_tx_data_TVALID),
//                     .m_axis_tready(m_axis_tx_data_TREADY),
//                     .m_axis_tdata(m_axis_tx_data_COMBINED)
//                     );
  //assign m_axis_tx_data_TDATA = m_axis_tx_data_COMBINED[511:0];
  assign m_axis_tx_data_TDATA = finalOutData_out[511+64:64];
  assign m_axis_tx_data_TVALID = finalOutValid_out;
  assign m_axis_tx_data_TLAST = finalOutValid_out;
  //assign m_axis_tx_data_TLAST=finalOutValid_out;
  ////////////handshake logic start////////////////////////////////
  ///////Send meta data first wait for reply of status/////////////
  //////////////////////Then send data packet//////////////////////
  ////////////finalOutData --> store all data//////////////////////
  ////////sesspackMetaData --> store all meta data/////////////////
  //wire out_meta_valid;  //sesspackMetaValid
  //reg out_meta_ready; //sesspackMetaReady
  reg [7:0] waitingForStatusWord;
  reg waitingForFirstPacket;
  //wire [15:0] out_meta_data; //sesspackMeta
  reg killNext;
  reg killThis;
   always @(posedge aclk) begin
      if(reset) begin
        m_axis_tx_metadata_TDATA <= 0;
        m_axis_tx_metadata_TVALID <= 0;
        sesspackMetaReady <= 0;
        waitingForStatusWord <= 0;
        waitingForFirstPacket <= 1;
        dataTokens <= 0;
        killThis <= 0;
        killNext <= 0;
      end else begin

        if (finalOutValid==1) begin //The meta + data queue is ready, the first packet is ready
          waitingForFirstPacket <= 0;
        end

        if (m_axis_tx_metadata_TREADY==1 && m_axis_tx_metadata_TVALID==1) begin //Input, ready for accepting the next metadata, Output the next metadata is valid
          m_axis_tx_metadata_TVALID <= 0;  //waiting for outputing next meta data
        end

        if (sesspackMetaReady ==1 && sesspackMetaValid==1) begin // Process meatadata input
           sesspackMetaReady <= 0;
        end

        if (finalOutValid_out==1 && finalOutReady_out==1 && finalOutLast_out==1) begin //The last line of the session
          dataTokens <= dataTokens-1;
        end

        if (finalOutValid_out==1 && finalOutReady_out==1 && finalOutLast_out==1) begin  //move to the next session
            killThis <= killNext;
            killNext <= 0;
        end

        if (waitingForStatusWord==0 &&  sesspackMetaReady ==0 && killNext==0) begin //send the metadata stage

          if (m_axis_tx_metadata_TREADY==1) begin
            m_axis_tx_metadata_TVALID <= sesspackMetaValid;
            m_axis_tx_metadata_TDATA <= {16'd64, sesspackMeta[15:0]};  //{length, meta} 16-bit, 16-bit

            if (sesspackMetaValid==1) begin
              waitingForStatusWord <= waitingForStatusWord+1;
            end
          end

        end else if (waitingForStatusWord==1 &&  sesspackMetaReady ==0 && killNext==0) begin //get the reply of status

          if (s_axis_tx_status_TVALID==1) begin
            waitingForStatusWord <= waitingForStatusWord-1;

            if (s_axis_tx_status_TDATA[63:62]==0 || s_axis_tx_status_TDATA[63:62]==1) begin
              // no error   or no connection (1)
               sesspackMetaReady <= 1;
              dataTokens <= dataTokens+1;

              if (finalOutValid_out==1 && finalOutReady_out==1 && finalOutLast_out==1) begin
                dataTokens <= dataTokens;
              end

              if (s_axis_tx_status_TDATA[63:62]==1) begin
                killNext <= 1;
              end

            end
          end

        end

      end
    end
endmodule
