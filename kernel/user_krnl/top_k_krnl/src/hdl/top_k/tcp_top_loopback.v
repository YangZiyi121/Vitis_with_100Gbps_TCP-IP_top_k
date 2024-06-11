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


module tcp_top_loopback #(parameter IS_SIM = 0)
    (input wire aclk,
     input wire aresetn,
     output wire	 m_axis_open_connection_TVALID,
     input wire 	 m_axis_open_connection_TREADY,
     output wire[47:0] m_axis_open_connection_TDATA,
     input wire 	 s_axis_open_status_TVALID,
     output wire s_axis_open_status_TREADY,
     input wire[23:0] 	 s_axis_open_status_TDATA,
     output wire 	 m_axis_close_connection_TVALID,
     input wire m_axis_close_connection_TREADY,
     output wire [15:0] m_axis_close_connection_TDATA,
     output wire 	 m_axis_listen_port_TVALID,
     input wire m_axis_listen_port_TREADY,
     output wire [15:0] m_axis_listen_port_TDATA,
     input wire 	 s_axis_listen_port_status_TVALID,
     output wire s_axis_listen_port_status_TREADY,
     input wire [7:0] 	 s_axis_listen_port_status_TDATA,
     input wire 	 s_axis_notifications_TVALID,
     output wire s_axis_notifications_TREADY,
     input wire [87:0] 	 s_axis_notifications_TDATA,
     output wire m_axis_read_package_TVALID,
     input wire m_axis_read_package_TREADY,
     output wire [31:0] m_axis_read_package_TDATA,
     output wire m_axis_tx_data_TVALID,
     input wire m_axis_tx_data_TREADY,
     output wire [511:0] m_axis_tx_data_TDATA,
     output wire [64:0] 	 m_axis_tx_data_TKEEP,
     output wire m_axis_tx_data_TLAST,
     output wire m_axis_tx_metadata_TVALID,              //for handshake logic
     input wire m_axis_tx_metadata_TREADY,
     output wire [31:0] m_axis_tx_metadata_TDATA,         //for handshake logic
     input wire s_axis_tx_status_TVALID,
     output wire s_axis_tx_status_TREADY,
     input wire [63:0] 	 s_axis_tx_status_TDATA,
     input wire 	 s_axis_rx_data_TVALID,
     output wire s_axis_rx_data_TREADY,
     input wire [511:0] 	 s_axis_rx_data_TDATA,
     input wire [63:0] 	 s_axis_rx_data_TKEEP,
     input wire [0:0] 	 s_axis_rx_data_TLAST,
     input wire 	 s_axis_rx_metadata_TVALID,
     output wire 	 s_axis_rx_metadata_TREADY,
     input wire [15:0] 	 s_axis_rx_metadata_TDATA);

    assign m_axis_close_connection_TVALID   = 0;
    assign s_axis_listen_port_status_TREADY = 1;
    assign s_axis_rx_metadata_TREADY        = 1;
    assign s_axis_tx_status_TREADY          = 1;

    assign m_axis_open_connection_TVALID = 0;
    assign s_axis_open_status_TREADY     = 1;


    (* mark_debug = "true" *) reg 					    port_opened;
    (* mark_debug = "true" *) reg 					    axis_listen_port_valid;
    (* mark_debug = "true" *) reg [15:0] 				    axis_listen_port_data;
    reg 					    reset;

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


    assign m_axis_listen_port_TDATA  = axis_listen_port_data;
    assign m_axis_listen_port_TVALID = axis_listen_port_valid;


    //open up server port (2888)
    always @(posedge clk)
    begin
        reset <= !aresetn;

        if (aresetn == 0) begin
            port_opened            <= 1'b0;
            axis_listen_port_valid <= 1'b0;
            axis_listen_port_data  <= 0;
            myClock                <= 0;
        end
        else begin
            axis_listen_port_valid <= 1'b0;

            //try every half millisecond
            if (myClock[15] == 1'b1 && port_opened == 0 && m_axis_listen_port_TREADY == 1) begin
                axis_listen_port_valid <= 1'b1;
                axis_listen_port_data <= 16'h0B48; //port = 2888
                port_opened <= 1;
            end


            myClock <= myClock+1;
        end
    end

    wire [512+88-1 + 1 : 0] pkt_TDATA; //+tlast
    //wire [512+32-1 : 0] pkt_new_TDATA;
    wire pkt_TVALID;
    wire pkt_TREADY;

    pkt_receiver pkt_receiver_inst(
        .clk(clk),
        .rst(reset),
        .s_axis_notifications_TDATA(s_axis_notifications_TDATA),
        .s_axis_notifications_TVALID(s_axis_notifications_TVALID),
        .s_axis_notifications_TREADY(s_axis_notifications_TREADY),
        .s_axis_rx_data_TDATA({s_axis_rx_data_TLAST, s_axis_rx_data_TDATA}),
        .s_axis_rx_data_TVALID(s_axis_rx_data_TVALID),
        .s_axis_rx_data_TREADY(s_axis_rx_data_TREADY),
        .m_axis_read_package_TDATA(m_axis_read_package_TDATA),
        .m_axis_read_package_TVALID(m_axis_read_package_TVALID),
        .m_axis_read_package_TREADY(m_axis_read_package_TREADY),
        .pkt_tx_TDATA(pkt_TDATA), //meta_data + payload 88 + 512
        .pkt_tx_TVALID(pkt_TVALID),
        .pkt_tx_TREADY(pkt_TREADY)
    );


    wire [511:0] pkt_tx_TDATA_payload;
    wire tx_data_TVALID;
    wire tx_data_TREADY;
    wire [31:0] meta_TDATA_out;
    wire meta_TVALID_out;
    
   top_k_workload top_k_workload_inst(
        .clk(clk),
        .rx_TDATA(pkt_TDATA[512:0]),
        .rx_TVALID(pkt_TVALID && pkt_TREADY),
        .rx_TREADY(pkt_TREADY),
        .meta_TDATA(pkt_TDATA[512 + 32 :512 + 1]),
        .workload_selection(16'b0001), 
        .pkt_tx_TDATA_payload(pkt_tx_TDATA_payload),
        .tx_data_TVALID(tx_data_TVALID),
        .tx_data_TREADY(1'b1),
        .meta_TDATA_out(meta_TDATA_out), 
        .meta_TVALID_out(meta_TVALID_out)
    );
    
   
    pkt_sender pkt_sender_inst(
        .clk(clk),
        .rst(reset),
        .pkt_rx_TDATA({meta_TDATA_out, 1'b1, pkt_tx_TDATA_payload}), //metadata + tlast + tdata
        .pkt_rx_TVALID(tx_data_TVALID && meta_TVALID_out),
        .pkt_rx_TREADY(tx_data_TREADY),
        .s_axis_tx_status_TDATA(s_axis_tx_status_TDATA),
        .s_axis_tx_status_TVALID(s_axis_tx_status_TVALID),
        .s_axis_tx_status_TREADY(s_axis_tx_status_TREADY),
        .m_axis_tx_metadata_TDATA(m_axis_tx_metadata_TDATA),
        .m_axis_tx_metadata_TVALID(m_axis_tx_metadata_TVALID),
        .m_axis_tx_metadata_TREADY(m_axis_tx_metadata_TREADY),
        .m_axis_tx_data_TDATA(m_axis_tx_data_TDATA),
        .m_axis_tx_data_TVALID(m_axis_tx_data_TVALID),
        .m_axis_tx_data_TKEEP(m_axis_tx_data_TKEEP),
        .m_axis_tx_data_TLAST(m_axis_tx_data_TLAST),
        .m_axis_tx_data_TREADY(m_axis_tx_data_TREADY)
    );

endmodule

