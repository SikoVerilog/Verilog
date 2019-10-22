`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 11:44:08 PM
// Design Name: 
// Module Name: Half_adder
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


module Half_adder(
    input A,
    input B,
    output Sum,
    output C_out
    );
    //half adder did't take take cary input it can be taken as
    xor x1(Sum, A, B);//sum is equal to A xor B
    and a1(C_out, A, B);//carry_out is taken as A and B
    
endmodule
