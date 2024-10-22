`timescale 1ns / 1ps

localparam integer clk_bit = 8;

module divider(
    input wire [31:0] counter,
    output clk_out
    );
    
    assign clk_out = counter[clk_bit];
endmodule
