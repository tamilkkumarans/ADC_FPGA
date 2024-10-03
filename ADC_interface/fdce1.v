`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:14:28 11/09/2016 
// Design Name: 
// Module Name:    fdce 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fdce1(q,clk,ce,reset,d);
    input d,clk,ce,reset;
    output reg q;
initial begin q=0; end
always @ (negedge (clk)) begin
if (reset)
  q <= 1'b0;
 else if (ce)
  q <= d;
 else 
 q<= q ;
end
endmodule