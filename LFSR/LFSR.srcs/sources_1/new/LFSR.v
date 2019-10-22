`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 10:48:20 AM
// Design Name: 
// Module Name: LFSR
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


module LFSR(
    input CLK,
    input Reset,
    output reg [3:0] Out
    );
    always @ (posedge CLK) begin
        if(Reset) Out <= 4'b1111;
        else begin
            Out[3] <= Out[0];
            Out[2] <= Out[0] ^ Out[3];
            Out[1] <= Out[2];
            Out[0] <= Out[1];
        end
    end
    
endmodule
