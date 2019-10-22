`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2019 12:09:55 AM
// Design Name: 
// Module Name: Adder_4bit
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


module Adder_4bit(
    input [3:0] A,
    input [3:0] B,
    input C_in,
    output [3:0] Sum,
    output C_out
    );
    wire C1,C2,C3;
    // interconnection between all the adders carry of one adder will be input of next one
    Full_adder F1(
        .A(A[0]),
        .B(B[0]),
        .C_in(C_in),
        .Sum(Sum[0]),
        .C_out(C1));
        //take first bit of both variable and input carry and gives output as Sum[0] carry will be input on next 
    Full_adder F2(
        .A(A[1]),
        .B(B[1]),
        .C_in(C1),
        .Sum(Sum[1]),
        .C_out(C2));
        //take secend bit of both variable and input carry and gives output as Sum[1] carry will be input on next
    Full_adder F3(
        .A(A[2]),
        .B(B[2]),
        .C_in(C2),
        .Sum(Sum[2]),
        .C_out(C3));
        //take 3rd bit of both variable and input carry and gives output as Sum[2] carry will be input on next
    Full_adder F4(
        .A(A[3]),
        .B(B[3]),
        .C_in(C3),
        .Sum(Sum[3]),
        .C_out(C_out));   
        //take 4th bit of both variable and input carry and gives output as Sum[3] carry will be out as it is 
endmodule
