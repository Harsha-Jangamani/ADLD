`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2023 12:17:21
// Design Name: 
// Module Name: Pipieline_1
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


module Pipieline_1(clk,F,A,B,C,D);
parameter N=10;
input [N-1:0]A,B,C,D;
input clk;
output [N-1:0]F;
reg [N-1:0] L12_x1,L12_x2,L12_D,L23_x3,L23_D,L34_F;
assign F=L34_F;

always@(posedge clk)
  begin
     L12_x1<=#4 A+B;
     L12_x2<=#4 C-D;
     L12_D<=D;                  //stage-1
 
     L23_x3<=#4 L12_x1 + L12_x2;
     L23_D<=L12_D;               //stage-2

     L34_F<=#6 L23_x3 * L23_D;  //stage-3
  end
endmodule
