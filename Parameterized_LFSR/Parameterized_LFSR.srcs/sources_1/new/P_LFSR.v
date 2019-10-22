`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 02:15:46 PM
// Design Name: 
// Module Name: P_LFSR
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


module P_LFSR #(parameter Length =8, Initial = 8'b1001_0001, Equation = 8'b1100_111)(
    input CLK,
    input Rst,
    output reg [Length:1] Y
    );
    integer i;
    always @ (posedge CLK) begin
        if(Rst) Y = Initial;
        else begin
            for(i = 2; i<Length; i = i+1)begin
                if(Equation[Length - i +1])begin
                    Y[i] <= Y[Length] ^ Y[i-1];
                end
                else begin
                    Y[i] <= Y[i-1];
                end
                Y[1] <= Y[Length];
            end
        end
    end
endmodule
