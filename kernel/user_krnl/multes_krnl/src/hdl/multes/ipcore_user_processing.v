module ipcore_user_processing (
	input wire aclk,
	input wire aresetn,

	input wire [512-1:0]  in_word_tdata,
	input wire         in_word_tvalid,
	input wire         in_word_tlast,
	output wire         in_word_tready,

	input wire [512-1:0]  parameter_tdata,
	input wire         parameter_tvalid,
	input wire         parameter_tlast,
	output wire         parameter_tready,

	output reg [512-1:0]  out_word_tdata,
	output reg         out_word_tvalid,
	output reg         out_word_tlast,
	input wire         out_word_tready,

	output reg [0:0]  drop_decision_tdata,
	output reg         drop_decision_tvalid,
	output reg         drop_decision_tlast,
	input wire         drop_decision_tready 

	);


localparam [1:0] 
	ST_WAIT_PARAM = 0,
	ST_WAIT_LAST = 1,
	ST_DECISION = 2;

reg[1:0] state;


assign in_word_tready = (state==ST_WAIT_LAST) ? out_word_tready : 0;
assign parameter_tready = (state==ST_DECISION) ? drop_decision_tready : 0;



always @(posedge aclk ) begin 
	if(~aresetn) begin
		state <= ST_WAIT_PARAM;
		out_word_tvalid <= 0;
		drop_decision_tvalid <= 0;
	end else begin

		if (out_word_tvalid==1 && out_word_tready==1) begin
			out_word_tvalid <= 0;
		end

		if (drop_decision_tvalid==1 && drop_decision_tready==1) begin
			drop_decision_tvalid <=0;
		end

		case (state)
			ST_WAIT_PARAM : begin	

				if (parameter_tvalid==1) begin
					//we have a new input param!

					state <= ST_WAIT_LAST;
				end

			end

			ST_WAIT_LAST: begin
				if (in_word_tvalid==1 && in_word_tready==1) begin
					out_word_tvalid <= 1;
					out_word_tlast <= in_word_tlast;

					//we don't do anything to the data here, just copy it
					out_word_tdata[15:0] <= in_word_tdata[15:0];
					out_word_tdata[511:16] <= in_word_tdata[511-16:0];

					if (in_word_tlast==1) begin
						//this was the last input
						state <= ST_DECISION;
					end
				end
			end

			ST_DECISION: begin
				if (drop_decision_tvalid==0) begin
					drop_decision_tvalid <= 1;
					drop_decision_tlast <= 1;
					drop_decision_tdata <= 0;			
				end

				if (drop_decision_tvalid==1 && drop_decision_tready==1) begin
					state <= ST_WAIT_PARAM;
				end
			end
					
			default : /* default */;
		endcase
		 
	end
end

endmodule