`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 07:31:23 PM
// Design Name: 
// Module Name: Top_level
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
// Fatima Zehra Alvi

module Top_level(decimal, cathodes, anode);
input [9:0] decimal;
output [6:0] cathodes;
output anode;
 wire [3:0] bcd;
 
 D_to_bcd const0(decimal, bcd);
SSD_driver consto(bcd, cathodes, anode);

endmodule
