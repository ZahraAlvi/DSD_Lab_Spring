`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 01:20:28 PM
// Design Name: 
// Module Name: lab_03
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


module Four_to_One_Mux(out, s0, s1, d0, d1,d2, d3);
input wire s0, s1, d0, d1, d2, d3;
output reg out;
always@(s0, s1, d0, d1, d2, d3)
begin
if(s1== 1'b0 && s0 == 1'b0)
out =d0;
else if (s1 == 1'b0 && s0 ==1'b1)
out = d1;
else if (s1 == 1'b1 && s0 == 1'b0)
out = d2;
else if (s1 == 1'b1 && s0 == 1'b1)
out = d3;
else 
out = 1'bz;
end

 endmodule
