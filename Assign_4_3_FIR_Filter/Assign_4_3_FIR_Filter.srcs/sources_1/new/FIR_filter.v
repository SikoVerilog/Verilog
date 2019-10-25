`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 10:44:17 AM
// Design Name: 
// Module Name: FIR_filter
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


module FIR_filter(
    input [15:0] X,
    input [15:0] S,
    input [15:0] T,
    input [15:0] U,
    input [15:0] V,
    input [15:0] W,
    input CLK,
    input Reset,
    output reg [15:0] Y
    );
    reg [15:0] Xn [0:3];
    integer i;
    always @ (posedge CLK)begin
        if(Reset) begin
            for(i=0; i<4; i=i+1)begin
                Xn[i] = 'b0;
            end
        end
        else begin
            Xn[0] <= X;
            for(i=1; i<4; i=i+1)begin
                Xn[i] <= Xn[i-1];
            end
            Y = X*S + Xn[0]*T + Xn[1]*U + Xn[2]*V + Xn[3]*W;
        end
    end
endmodule
