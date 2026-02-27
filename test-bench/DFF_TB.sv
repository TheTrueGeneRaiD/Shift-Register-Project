`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2026 04:10:40 PM
// Design Name: 
// Module Name: DFF_TB
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


module DFF_TB();

reg d;
reg clk;
reg reset;
reg q_not;
reg q;

initial
begin
clk <= 0;
reset <= 0;

#10 clk <= 1;
d <= 1;

#10 clk <= 0;
d <= 1;

#10 clk <= 1;
d <= 0;

#10 clk <= 0;

#10 clk <= 1;

#10 clk <= 0;
d <= 1;

#10 clk <= 1;

#10 clk <= 0;






end

DFF DUT(.d (d),
        .clk (clk),
        .reset (reset),
        .q_not (q_not),
        .q (q)
        );

endmodule
