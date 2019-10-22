`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2019 10:50:40 AM
// Design Name: 
// Module Name: DFF_SR
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


module DFF_SR(
    input D,
    input R,
    input CLK,
    output reg Q
    );
    
    always @ (posedge CLK)begin
        if(R) Q <= 1'b0;
        else Q <= D;
    end
    
endmodule
