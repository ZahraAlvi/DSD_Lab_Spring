`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:18:11 PM
// Design Name: 
// Module Name: T_FlipFlop
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
// Author Fatima Zehra Alvi
//////////////////////////////////////////////////////////////////////////////////


module T_FlipFlop(q, clk, t, reset, en);
input clk, t, reset, en;
output reg q;

always@ (posedge clk, posedge reset)
begin
 
    if (reset )
    q <= 1'b0;
    else if (en==1'b0)
    q <= q;
     else if (t== 0)
     q <= q;
     else if (t== 1)
     q <= ~q;
     else 
     q <= q;
end
endmodule
