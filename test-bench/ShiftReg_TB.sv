`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 08:06:40 PM
// Design Name: 
// Module Name: ShiftReg_TB
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


module ShiftReg_TB();

reg reset;
reg d;
reg load;
reg [7:0] output_bits;
reg clk;

initial
begin
reset <= 0;
clk <= 0;
load <= 1;

#10 clk <= 1;
d <= 1;
#10 clk <= 0;

#10 clk <= 1;
#10 clk <= 0;
d <= 1;

#10 clk <= 1;
#10 clk <= 0;
d <= 1;

#10 clk <= 1;
#10 clk <= 0;
load <= 0;
d <= 1;

#10 clk <= 1;
#10 clk <= 0;
load <= 1;
d <= 1;

#10 clk <= 1;
#10 clk <= 0;
load <= 0;
d <= 1;

#10 clk <= 1;
#10 clk <= 0;
d <= 1;

#10 clk <= 1;
#10 clk <= 0;
d <= 1;

end

ShiftRegister DUT (.clk (clk),
                   .reset (reset),
                   .load (load),
                   .input_bit (d),
                   .output_bits (output_bits)
                   );

endmodule
