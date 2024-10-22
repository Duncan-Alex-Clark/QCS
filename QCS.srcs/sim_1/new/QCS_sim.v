`timescale 1ns / 1ps

module QCS_tb;

    // Inputs
    reg clk;
    reg rst;
    reg ch_a;
    reg ch_b;
    reg ch_z;
    reg [31:0] ppr;

    // Outputs
    wire ch_z_out;
    wire [31:0] REC;
    wire [31:0] RPM;

    // Instantiate the Unit Under Test (UUT)
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

    // Clock generation
    always #10 clk = ~clk;  // 50MHz clock

    // Simulation procedure
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 0;
        ch_a = 0;
        ch_b = 0;
        ch_z = 0;
        ppr = 600;  // Set pulses per revolution

        // Apply Reset
        rst = 1;
        #20;
        rst = 0;
        
        // Test forward progression of states
        $display("Testing forward progression...");
        #50 ch_a = 1; ch_b = 0;  // STATE_10
        #50 ch_a = 1; ch_b = 1;  // STATE_11
        #50 ch_a = 0; ch_b = 1;  // STATE_01
        #50 ch_a = 0; ch_b = 0;  // STATE_00
        

        // Test reverse progression of states
        $display("Testing reverse progression...");
        #50 ch_a = 0; ch_b = 1;  // STATE_01
        #50 ch_a = 1; ch_b = 1;  // STATE_11
        #50 ch_a = 1; ch_b = 0;  // STATE_10
        #50 ch_a = 0; ch_b = 0;  // STATE_00

        // Test with a larger clock count before transitioning states
        $display("Testing negative overflow...");
        #50 ch_a = 0; ch_b = 1;  // STATE_01
        #50 ch_a = 1; ch_b = 1;  // STATE_11
        #50 ch_a = 1; ch_b = 0;  // STATE_10
        #50 ch_a = 0; ch_b = 0;  // STATE_00
        
        $display("Testing various clock pulse lengths to validate rpm...");
        repeat(25000) #20;  // Hold state for a long time
        ch_a = 1; ch_b = 0;  // STATE_10
        repeat(50000) #20;
        ch_a = 1; ch_b = 1;  // STATE_11
        repeat(75000) #20;
        ch_a = 0; ch_b = 1;  // STATE_01
        repeat(400000) #20;
        ch_a = 0; ch_b = 0;  // STATE_00
        #60

        // Observe the values
        $display("Final REC value: %d", REC);
        $display("Final RPM value: %d", RPM);

        // Finish the simulation
        #100;
        $finish;
    end

    // Monitor the REC and RPM values
    initial begin
        $monitor("Time=%0t, REC=%d, RPM=%d, State=%b", $time, REC, RPM, uut.state);
    end

endmodule
