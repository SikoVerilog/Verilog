`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2019 06:57:46 PM
// Design Name: 
// Module Name: SUB
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


module SUB #(parameter Data_length = 1)(
    input [Data_length-1:0] A,//operent with custom length
    input [Data_length-1:0] B,
    output [Data_length-1:0] Sub//answer
    );
    
    assign Sub = A - B;//subtract at data flow level
endmodule
