`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2019 01:01:42 PM
// Design Name: 
// Module Name: DFF_AsysR
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


module DFF_AsysR(
    input D,
    input CLK,
    input R,
    output reg Q
    );
    
    always @ (posedge CLK, posedge R) begin
        if(R) Q <= 1'b0;
        else Q <= D;
    end
    
endmodule
