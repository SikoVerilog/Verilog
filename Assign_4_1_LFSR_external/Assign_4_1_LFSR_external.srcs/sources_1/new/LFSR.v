`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2019 10:45:38 PM
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
    output reg [8:1] Y
    );
    
    always @ (posedge CLK) begin
        if(Reset) Y <= 'b1;
        else begin
            Y[1] <= Y[4] ^ Y[5] ^ Y[6] ^ Y[8];
            Y[2] <= Y[1];
            Y[3] <= Y[2];
            Y[4] <= Y[3];
            Y[5] <= Y[4];
            Y[6] <= Y[5];
            Y[7] <= Y[6];
            Y[8] <= Y[7];
        end
        
    end
endmodule
