`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2019 12:04:08 AM
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [7:0] data_in,
    output reg [2:0] data_out
    );
    
    always @ (*)begin
        data_out = 3'dZ;
        case(data_in)
            8'h01: data_out = 3'd0;
            8'h02: data_out = 3'd1;
            8'h04: data_out = 3'd2;
            8'h08: data_out = 3'd3;
            8'h10: data_out = 3'd4;
            8'h20: data_out = 3'd5;
            8'h40: data_out = 3'd6;
            8'h80: data_out = 3'd7;
        endcase
    
    end
endmodule
