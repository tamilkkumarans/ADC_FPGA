`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:29 05/09/2019 
// Design Name: 
// Module Name:    ADC_top 
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
module ADC_top(clk,enable,I1,I2,I3,ADC_in,ADC_out,ADCclk,conv,done,data_out);

input clk,enable,I1,I2,I3,ADC_out;
output conv,done,ADC_in,ADCclk;
output [9:0] data_out;
wire tc;
wire [31:0] out;
wire [9:0] data_out1;
///clock division..........
cnt1 counter(out,32'b0,tc,enable,clk,tc,32'b11111111111111111111111111111111);
ADC m1(ADCclk, enable, I1,I2,I3,conv, done, ADC_in, ADC_out, data_out1);
assign ADCclk = out[6];
fdc10 m2(data_out1,ADCclk,done,1'b0,data_out);
endmodule
