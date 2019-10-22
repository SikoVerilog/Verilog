`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2019 06:57:46 PM
// Design Name: 
// Module Name: AND
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


module AND #(parameter Data_length = 1)(
    input [Data_length-1:0] A,//operent 1 with parameter of data_length means width
    input [Data_length-1:0] B,
    output [Data_length-1:0] And// answer
    );
    
    assign And = A & B;//and at data flow level
endmodule
