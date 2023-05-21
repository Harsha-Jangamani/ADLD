`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2022 21:34:46
// Design Name: 
// Module Name: RCA_4Bit_tb
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


module RCA_4Bit_tb();
reg Co;
reg [3:0]A,B;
wire Cout;
wire [3:0]S;

RCA_4Bit dut(.Co(Co),.A(A),.B(B),.Cout(Cout),.S(S));

initial begin

$monitor("Co=%b A=%b B=%b Cout=%b S=%b",Co,A,B,Cout,S);

A=4'b0000;
B=4'b0000;
Co=0;
#10;

A=4'b0111;
B=4'b1100;
Co=0;
#10;

A=4'b1110;
B=4'b0111;
Co=0;
#10;

A=4'b1111;
B=4'b1111;
Co=0;
#10;

$stop;
end


endmodule
