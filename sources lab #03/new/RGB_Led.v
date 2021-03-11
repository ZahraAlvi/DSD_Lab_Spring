`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 05:14:38 PM
// Design Name: 
// Module Name: RGB_Led
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
module RGB_Led(In, Out);
input wire [5:0]In;
output reg [5:0] Out;

 always @(*)
 begin
 Out= In;
end

endmodule
