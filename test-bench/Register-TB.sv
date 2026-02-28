`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2026 04:09:56 PM
// Design Name: 
// Module Name: Register-TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Reg_TB();

reg clk;
reg reset;
reg [7:0] input_bits;
reg [7:0] output_bits;

    
    initial
    begin
    // We need the clock to start at 0 inorder for the device 
    // to pick up the rising edge.
    
    // Note: make sure to always start clocks at logic 0 to initalize before a logic 1. 
    
        reset <= 0;
        clk <= 0;
        
        input_bits <= 8'b01010101;
        
        #15 clk <= 1;
        #15 clk <= 0;
        
        #15 clk <= 1;
        input_bits <= 8'b10101010;
        #15 clk <= 0;
        
        #15 clk <= 1;
        input_bits <= 8'b11111111;
        #15 clk <= 0;
        
        
        #15 clk <= 1;
        reset <= 1;
        #15 clk <= 0;
        
        #15 clk <= 1;
        reset <= 0;
        #15 clk <= 0;
        
    end

    Regi DUT (.clk (clk),
             .reset (reset),
             .input_bits (input_bits),
             .output_bits (output_bits));
    
endmodule
