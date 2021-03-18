`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 02:30:28 PM
// Design Name: 
// Module Name: shift_nonblocking
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
// Author Fatima Zehra Alvi
//////////////////////////////////////////////////////////////////////////////////


module DFF_2(q, clk, d, reset);
input clk, d, reset;
output reg q;

always @(posedge clk, posedge reset)
begin
if (reset == 1)
 q = 1'b0;
 
 else
  
 q <= d;
 
end

endmodule

