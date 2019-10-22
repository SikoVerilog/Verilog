`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2019 12:04:41 PM
// Design Name: 
// Module Name: MUX_Selection
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


module  MUX_Selection #(parameter Data_length = 1) (//4 to 1 multiplexer with custom length
    input [Data_length : 0] A,//1st input
    input [Data_length : 0] B,//2nd input
    input [Data_length : 0] C,//3rd input
    input [Data_length : 0] D,//4th input
    input [1 : 0] Sel,//select line
    output reg [Data_length:0] OP//multiplexed answer
    );
    always @ (*) begin//logic at behavior level
        case(Sel)//case for multiplex
        2'b00: OP = A;//first condition
        2'b01: OP = B;//secend condition
        2'b10: OP = C;//third condition
        2'b11: OP = D;//fourth condition
        endcase
    end
endmodule
