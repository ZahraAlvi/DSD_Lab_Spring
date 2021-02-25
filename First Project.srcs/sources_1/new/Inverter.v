`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 02:21:18 PM
// Design Name: 
// Module Name: Inverter
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


module Inverter(A, A_not);
//Dimensions of ports i.e. which port is for input and ouput, and which port have what size.
input  A;
output  A_not;
// next step is to make logic (verilog description)
not not1(A_not, A);
endmodule
