`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2019 09:07:28 AM
// Design Name: 
// Module Name: bit_serial
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


module bit_serial(
    input [3:0] A,
    input [3:0] B,
    input CLK,
    output reg [3:0] Sum
    );
    reg C = 1'b0;
    
    always @ (posedge CLK)begin
        {C, Sum[3]} <= A[0] + B[0] + C;
        Sum <= Sum >> 1;
    end
    
endmodule
