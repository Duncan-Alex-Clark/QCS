`timescale 1ns / 1ps

module QCS(
	input wire clk,
	input wire rst,
	input wire ch_a,
	input wire ch_b,
	input wire [31:0] ppr,
	output wire [31:0] REC,
	output wire [31:0] RPM
);

// Define module constants
localparam [31:0] clk_f = 100_000_000; // clock frequency
localparam integer clk_count_max = 1_000_000; // count how many pulses per 1,000,000 clock cycles
localparam integer rpm_min = 3;
localparam integer rpm_max = 15_000;
localparam integer scale_factor = 1000;
localparam [1:0] STATE_1 = 2'b00;
localparam [1:0] STATE_2 = 2'b10;
localparam [1:0] STATE_3 = 2'b11;
localparam [1:0] STATE_4 = 2'b01;

// Define module registers
reg lut_initialized;
reg [1:0] state;
reg [1:0] next_state;
reg [31:0] ppr_reg;
reg [31:0] rpm_reg;
reg [31:0] rec_reg;
reg [31:0] clk_counter;
reg [31:0] ch_counter;

// Define module variables
parameter integer rpm_lut_size = 1<<16;

// Define LUTs
wire [31:0] rpm_lut [0:rpm_lut_size-1];

// Define combinational assignments
assign RPM = rpm_reg;
assign REC = rec_reg;

// Create LUT for 600 ppr
//always @* begin: lut
//    integer i;
//    case (i)
//        generate
//        endgenerate
//    endcase
//end


generate
    localparam integer ch_count_min = (rpm_min * (600 * 4 * (clk_count_max * scale_factor / clk_f))) / (60 * scale_factor);
    localparam integer ch_count_max = (rpm_max * (600 * 4 * (clk_count_max * scale_factor / clk_f))) / (60 * scale_factor);
//    always @* begin
        for (genvar i = 0; i < rpm_lut_size; i = i + 1) begin
            assign rpm_lut[i] = (60*i)/24;
        end
//    end
endgenerate

// Count the number of clock cycles
// Reset after the clk_count_max is reached
always @(posedge clk or posedge rst) begin
	if (rst) clk_counter <= 0;
	else if (clk_counter < clk_count_max) clk_counter <= clk_counter + 1;
	else clk_counter <= 0;
end

// Count the channel changes
// Reset after the clk_count_max is reached
always @(ch_a or ch_b or rst) begin
	if (rst) ch_counter <= 0;
	else if (clk_counter < clk_count_max) ch_counter <= ch_counter + 1;
	else ch_counter <= 0; // Once clk_count_max is reached, restart counter
end

// Update the value of next_state
always @(*) begin
	if (rst) next_state <= STATE_1;
	else next_state <= {ch_a, ch_b};
end

// Calculate the REC
always @(posedge clk or posedge rst) begin
	if (rst) begin
		state <= STATE_1;
		rec_reg <= 0;
	end
	else if (state != next_state) begin // Execute if state change detected
		case (state)
			STATE_1: begin
				if (next_state == STATE_2) rec_reg <= rec_reg + 1;
				else if (next_state == STATE_4) rec_reg <= rec_reg - 1;
				else rec_reg <= rec_reg;
			end
			STATE_2: begin
				if (next_state == STATE_3) rec_reg <= rec_reg + 1;
				else if (next_state == STATE_1) rec_reg <= rec_reg - 1;
				else rec_reg <= rec_reg;
			end
			STATE_3: begin
				if (next_state == STATE_4) rec_reg <= rec_reg + 1;
				else if (next_state == STATE_2) rec_reg <= rec_reg - 1;
				else rec_reg <= rec_reg;
			end
			STATE_4: begin
				if (next_state == STATE_1) rec_reg <= rec_reg + 1;
				else if (next_state == STATE_3) rec_reg <= rec_reg - 1;
				else rec_reg <= rec_reg;
			end
			default: rec_reg <= rec_reg;
		endcase
		state <= next_state; // Update the state
	end
end

// Calculate RPM on every reset of clk_counter
// Keep RPM unchanged until clk_counter resets
always @(posedge clk or posedge rst) begin
	if (rst) rpm_reg <= 0;
	else if (!clk_counter) rpm_reg <= rpm_lut[ch_counter]; // When clk_counter == 0, update the rpm_reg
	else rpm_reg <= rpm_reg;
end
endmodule
