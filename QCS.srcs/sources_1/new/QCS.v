`timescale 1ns / 1ps

module QCS(
    input clk,
    input rst,
    input ch_a,
    input ch_b,
    input ch_z,
    input [31:0] ppr,   // Pulses per revolution, set by manufacturer
    output ch_z_out,
    output wire [31:0] REC,  // Raw encoder count
    output wire [31:0] RPM   // Revolutions per minute of encoder
    );
    
    
    // Define internal registers
    reg busy;
    reg [1:0] state;
    reg [1:0] next_state;
    reg [31:0] rec_reg;
    reg [31:0] clk_count;
    
    // Define the state machine
    localparam STATE_00 = 2'b00;
    localparam STATE_10 = 2'b10;
    localparam STATE_11 = 2'b11;
    localparam STATE_01 = 2'b01;
//    localparam integer clk_f = 50_000_000;
//    localparam [15:0] rpm_factor = (60 * clk_f) >> 16;
    
    // Assign internal signals
    assign ch_z_out = ch_z;
    assign REC = rec_reg;
        
    // RPM pipeline -----------------------------------------------------------------
    wire rpm_busy;
    reg [3:0] rpm_busy_counter;
    reg [30:0] stage_2_inter, stage_3_inter;
    reg [31:0] rpm_reg;
    reg [31:0] STAGE_1;
    reg [31:0] STAGE_2;
    reg [31:0] STAGE_3;
    reg [31:0] STAGE_4;
    reg [31:0] STAGE_5;
    reg [31:0] STAGE_6;
    
    localparam integer lut_size = 1<<12;
    localparam integer RPM_PIPELINE_DEPTH = 6; // How many stages?
    localparam integer clk_f = 100_000_000;
    localparam [63:0] rpm_factor = (60 * clk_f) / lut_size;
    
    localparam integer MAX_CLK_COUNT = 400000;
    
    localparam integer rpm_inc = MAX_CLK_COUNT / lut_size;
    
    assign rpm_busy = (rpm_busy_counter) ? 1'b1 : 1'b0;
    assign RPM = rpm_reg;
    
//    localparam integer clk_f = 100_000_000;  // 100 MHz clock
//    localparam integer ppr = 600;            // Pulses per revolution
//    localparam integer lut_size = 4096;      // 12-bit LUT size
    localparam real max_rpm = 6000.0;        // Maximum RPM we want to cover
    
    // LUT for clk_count values corresponding to evenly spaced RPM values
    reg [31:0] clk_count_lut [0:lut_size-1];  // Declare LUT for clk_count corresponding to RPM
    real rpm_value;
    integer i;
    
    initial begin
        for (i = 0; i < lut_size; i = i + 1) begin
            // Evenly spaced RPM values between 0 and max_rpm
            rpm_value = i * max_rpm / (lut_size - 1);
    
            // Precompute clk_count corresponding to each RPM value
            if (rpm_value > 0) begin
                clk_count_lut[i] = (clk_f * 60) / (600 * 4 * rpm_value);
            end else begin
                clk_count_lut[i] = 0;  // Handle RPM = 0 case
            end
        end
    end

    
    always @(posedge clk or posedge rst) begin
    
        if (rst) begin
            STAGE_1 <= 0;
            STAGE_2 <= 0;
            STAGE_3 <= 0;
            STAGE_4 <= 0;
            STAGE_5 <= 0;
            STAGE_6 <= 0;
            rpm_reg <= 0;
            rpm_busy_counter <= 0;
        end
        else if (state != next_state) begin
            $display("Executing RPM pipeline");
            STAGE_1 <= 600 * 4;
            STAGE_2 <= (clk_count < MAX_CLK_COUNT) ? STAGE_1 * clk_count : STAGE_1 * MAX_CLK_COUNT; // Set a max num of clock cycles
            STAGE_3 <= STAGE_2 >> 5; 
            STAGE_4 <= STAGE_3 >> 5;
            STAGE_5 <= (STAGE_4) ? STAGE_4 >> 5 : 1;
            STAGE_6 <= clk_count_lut[STAGE_5];
            rpm_reg <= STAGE_6;
            rpm_busy_counter <= (rpm_busy_counter) ? rpm_busy_counter - 1 : 1'h0;
        end
        else begin
        rpm_busy_counter <= RPM_PIPELINE_DEPTH - 1;
        end
    end
    // End RPM pipeline ---------------------------------------------------------------
    
    
    // Calculate the RPM based on clock count and state changes
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= STATE_00;
            rec_reg <= 32'h0;
            clk_count <= 32'h00000001;
        end
        else begin

            // Update registers on state change
            if (!busy && state != next_state) begin
                // Execute state machine
                case (state)
                    STATE_00: begin
                        if (next_state == STATE_10) rec_reg <= rec_reg + 1;
                        else if (next_state == STATE_01) rec_reg <= rec_reg - 1;
                    end
                    STATE_10: begin
                        if (next_state == STATE_11) rec_reg <= rec_reg + 1;
                        else if (next_state == STATE_00) rec_reg <= rec_reg - 1;
                    end
                    STATE_11: begin
                        if (next_state == STATE_01) rec_reg <= rec_reg + 1;
                        else if (next_state == STATE_10) rec_reg <= rec_reg - 1;
                    end
                    STATE_01: begin
                        if (next_state == STATE_00) rec_reg <= rec_reg + 1;
                        else if (next_state == STATE_11) rec_reg <= rec_reg - 1;
                    end
                endcase
                state <= (busy) ? state : next_state; // Only progress to next state after all pipelines are complete.
                // Reset the clock count on state change
                clk_count <= 32'h00000001;
            end
            else begin
                // Increment clock count if no state change
                clk_count <= clk_count + 1;
            end
        end
    end
    
    
    
    // Update the next state based on ch_a and ch_b
    always @(ch_a or ch_b or rst) begin
        if (rst) next_state <= state;
        else begin
            next_state <= {ch_a, ch_b};
//            rpm_busy_counter <= RPM_PIPELINE_DEPTH - 1;
        end
    end
    
    // Determine busy status
    always @(*) begin
        busy <= rpm_busy;
    end

endmodule
