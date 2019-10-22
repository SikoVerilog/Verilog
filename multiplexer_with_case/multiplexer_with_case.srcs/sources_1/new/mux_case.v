`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 08:48:43 AM
// Design Name: 
// Module Name: mux_case
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


module mux_case(
    input [7:0] data,
    input [2:0] select,
    output reg out
    );
    
    always @ (*) begin
        out = 1'b0;
        case(select)
        3'd0: out = data[0];
        3'd1: out = data[1];
        3'd2: out = data[2];
        3'd3: out = data[3];
        3'd4: out = data[4];
        3'd5: out = data[5];
        3'd6: out = data[6];
        3'd7: out = data[7];
        endcase
    end
endmodule
