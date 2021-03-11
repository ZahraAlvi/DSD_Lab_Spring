`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 05:54:56 PM
// Design Name: 
// Module Name: D_to_bcd
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

module D_to_bcd(In, Out);
input wire [9:0] In;
output reg [3:0] Out;

always @(*)
begin
 case(In)
 10'b0000000000 : Out = 4'b1111;
 10'b0000000010 : Out = 4'b0001;
 10'b0000000100 : Out = 4'b0010;
 10'b0000001000 : Out = 4'b0011;
 10'b0000010000 : Out = 4'b0100;
 10'b0000100000 : Out = 4'b0101;
 10'b0001000000 : Out = 4'b0110;
 10'b0010000000 : Out = 4'b0111;
 10'b0100000000 : Out = 4'b1000;
 10'd1000000000 : Out = 4'b1001;
   default : Out = 4'bzzzz;
   
 endcase

end
endmodule
