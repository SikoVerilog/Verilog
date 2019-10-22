`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 07:14:43 AM
// Design Name: 
// Module Name: add_assign
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


module add_assign(
    input [2:0] a,
    input [2:0] b,
    input c_in,
    output [3:0] sum,
    output c_out
    );
    
    assign {c_out, sum} = a + b + c_in;
endmodule
