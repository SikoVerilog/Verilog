`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2019 06:57:46 PM
// Design Name: 
// Module Name: ADD
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


module ADD #(parameter Data_length = 1)(
    input [Data_length-1:0] A, //1st operent
    input [Data_length-1:0] B, //2nd operent
    output [Data_length-1:0] Add //answer
    );
    
    assign Add = A + B;//Add at data flow level
endmodule
