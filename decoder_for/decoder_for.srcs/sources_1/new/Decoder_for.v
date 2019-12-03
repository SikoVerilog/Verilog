`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2019 10:18:22 AM
// Design Name: 
// Module Name: Decoder_for
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


module Decoder_for(
    input In,
    input [2:0] Sel,
    output reg [7:0] Out
    );
    integer i;
    always @ (In) begin
        for(i=0; i<8; i=i+1)begin
            if(Sel == i)
                Out[i] = In;
            else Out[i] = 1'b0;
        end
    end
endmodule
