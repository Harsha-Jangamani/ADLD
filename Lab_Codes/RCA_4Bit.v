`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2022 21:31:10
// Design Name: 
// Module Name: RCA_4Bit
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


module RCA_4Bit(Co,A,B,Cout,S);
input Co;
input [3:0]A,B;
output Cout;
output [3:0]S;
assign {Cout,S}=A+B+Co;
endmodule
