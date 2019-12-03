`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2019 01:39:39 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
reg  [9:0] A;
reg  [7:0] B;
wire  [17:0] MUL;

Multiplier M1( .A(A), .B(B), .MUL(MUL));

initial begin
    A = 10'b1011000010; B = 8'b10111111;
    #20
    A = 10'b1100111111; B = 8'b10111111;
    #20
    A = 10'b1010111010; B = 8'b10111111;
    #20
    A = 10'b0011111111; B = 8'b10111111;
    #20
    A = 10'b0010100101; B = 8'b10111111;
    #20
    A = 10'b0001000101; B = 8'b10111111;
    #20
    A = 10'b0010111101; B = 8'b10111111;
    #20
    A = 10'b0011010011; B = 8'b10111111;
    #20
    A = 10'b1110110011; B = 8'b10111111;
    #20
    A = 10'b1111010101; B = 8'b10111111;
    #20;
    
end

endmodule
