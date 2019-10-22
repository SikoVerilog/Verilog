`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 04:35:07 AM
// Design Name: 
// Module Name: 2_to_1_mux
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


module MUX_2_to_1(
    input A,
    input B,
    input S,
    output Z
    );
    assign Z = S == 1'b0 ? A : B;    
endmodule
