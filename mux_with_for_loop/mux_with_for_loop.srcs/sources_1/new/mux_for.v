`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 09:14:12 AM
// Design Name: 
// Module Name: mux_for
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


module mux_for(
    input [7:0] data,
    input [2:0] select,
    output reg out
    );
    integer i;
    always @ (*) begin
        out = 1'b0;
        for (i = 0; i <= 7; i = i+1)begin
            out = data[select];
        end
    end
endmodule
