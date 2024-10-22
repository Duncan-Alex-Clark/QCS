`timescale 1ns / 1ps

module seq_rec_Testbench;

    // Inputs
    reg clk;
    reg rst;
    wire ch_a;
    wire ch_b;
    reg ch_z;
    reg [31:0] ppr;   // Pulses per revolution

    // Outputs
    wire ch_z_out;
    wire [31:0] REC;
    wire [31:0] RPM;

    // Instantiate the QCS module (Unit Under Test)
    QCS uut (
        .clk(clk),
        .rst(rst),
        .ch_a(ch_a),
        .ch_b(ch_b),
        .ch_z(ch_z),
        .ppr(ppr),
        .ch_z_out(ch_z_out),
        .REC(REC),
        .RPM(RPM)
    );

    // Instantiate the encoding_sequencer
    encoding_sequencer sequencer (
        .clk(clk),
        .rst(rst),
        .ch_a(ch_a),
        .ch_b(ch_b)
    );

    // Clock generation
    always #5 clk = ~clk; // 100 MHz clock (10 ns period)

    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        ch_z = 0;
        ppr = 600; // Set pulses per revolution to 600

        // Wait for global reset to finish
        #100;
        rst = 0;

        // Run the test for a specified amount of time
        repeat(200000000) #5; // Adjust this time to see more sequences and RPM transitions

        $stop;
    end

    // Monitor the outputs
    initial begin
        $monitor("Time: %0t | REC: %0d | RPM: %0d", $time, REC, RPM);
    end

endmodule
