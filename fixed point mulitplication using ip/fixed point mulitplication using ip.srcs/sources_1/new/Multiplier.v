`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2019 01:37:50 PM
// Design Name: 
// Module Name: Multiplier
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


module Multiplier(
    input signed [9:0] A,
    input signed [7:0] B,
    output signed [17:0] MUL
    );
    assign MUL = A * B;
    /*integer i;
   reg [18:0] w;
   
    always @ (*)begin
        MUL = A >>> 2;
        for(i=0; i<8; i=i+1)begin
           // w  = B[i]?A>>>(8-i):0;
           // MUL = MUL + w;
        end
    end
    */
endmodule
