`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2019 01:37:24 PM
// Design Name: 
// Module Name: DFF_for
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


module DFF_for(
    input IN,
    input CLK,
    output reg Out
    );
    integer i;
    reg [6:0]Y;
    always @ (posedge CLK) begin
        Y[0] <= IN;
        for(i = 1; i <= 6; i = i+1)begin
            Y[i] <= Y[i-1];
        end
        Out <= Y[6];        
    end
   
endmodule
