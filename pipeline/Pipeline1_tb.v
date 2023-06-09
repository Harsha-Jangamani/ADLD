`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2023 12:18:40
// Design Name: 
// Module Name: Pipeline1_tb
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


module Pipeline1_tb();
parameter N=10;
reg [N-1:0]A,B,C,D;
reg clk;
wire [N-1:0]F;

pipeline1 dut(clk,F,A,B,C,D);

initial 
clk=0;
always #10 clk=~clk;

initial 
   begin
    #5 A=10; B=12; C=6; D=3; //F=75  (4Bh)
    #20 A=10; B=10; C=5; D=3; //F=66  (42h)
    #20 A=20; B=11; C=1; D=4; //F=112  (70h)
  end

initial
  begin
  $monitor("Time :%d, F=%d",$time,F);
  #100 $finish;
  end
endmodule
