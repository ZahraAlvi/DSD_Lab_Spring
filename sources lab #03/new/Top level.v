`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:24:07 PM
// Design Name: 
// Module Name: Top level
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


module Top_level(decimal, cathodes, anode);
input [9:0] decimal;
output [6:0] cathodes;
output  anode;

wire [3:0] bcd;

D_to_bcd inst0(decimal, bcd);
SSD_driver insto(bcd, cathode, anode);

endmodule
