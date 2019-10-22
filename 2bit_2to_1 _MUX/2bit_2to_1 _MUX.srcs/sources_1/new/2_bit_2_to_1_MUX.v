`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 04:42:45 AM
// Design Name: 
// Module Name: MUX_2_bit_2_to_1
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


module MUX_2_bit_2_to_1( // design start form there
    input [1:0] A, //input bus 1
    input [1:0] B,// input bus 2
    input S,// select line
    output [1:0] Z//output bus
    );
    // basicly that's a bus selecter in the form of  multiplexer if select is 0 then select bus 1 otherwise select bus 2
    assign Z[0] = S == 1'b0 ? A[0] : B[0]; // assign the vlaue of input 1[0] if select line is 0 otherwise input 2[0]
    assign Z[1] = S == 1'b0 ? A[1] : B[1]; // assign the vlaue of input 1[1] if select line is 0 otherwise input 2[1]
  
endmodule// end of the deign
