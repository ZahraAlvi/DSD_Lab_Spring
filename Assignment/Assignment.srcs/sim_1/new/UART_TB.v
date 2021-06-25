`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Fatima Zehra Alvi
// 
// Create Date: 06/25/2021 04:07:26 PM
// Design Name: 
// Module Name: UART_TB
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


//CMS ID: 041-18-0016

module uart_tx_test();

reg [7:0] data = 0;
reg clk = 0;
reg enable = 0;

wire tx_busy;
wire rdy;
wire [7:0] rxdata;

wire loopback;
reg rdy_clr = 0;

uart test_uart(.din(data),
	       .wr_en(enable),
	       .clk_50m(clk),
	       .tx(loopback),
	       .tx_busy(tx_busy),
	       .rx(loopback),
	       .rdy(rdy),
	       .rdy_clr(rdy_clr),
	       .dout(rxdata));

initial begin
	$dumpfile("uart.vcd");
	$dumpvars(0, uart_tx_test);
	enable <= 1'b1;
	#2 enable <= 1'b0;
end

always begin
	#1 clk = ~clk;
end

always @(posedge rdy) begin
	#2 rdy_clr <= 1;
	#2 rdy_clr <= 0;
	if (rxdata != data) begin
		$display("FAIL: rx data %x does not match tx %x", rxdata, data);
		$finish;
	end else begin
		if (rxdata == 8'hff) begin
			$display("SUCCESS: all bytes verified");
			$finish;
		end
		data <= data + 1'b1;
		enable <= 1'b1;
		#2 enable <= 1'b0;
	end
end

endmodule
