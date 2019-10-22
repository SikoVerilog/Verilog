`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2019 12:27:49 AM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [2:0] data_in,
    output reg [7:0] data_out
    );
    
    always @ (*) begin
        //data_out = 8'b0;
        case(data_in)
        3'd0: data_out[data_in] = 1'b1;
        3'd1: data_out[data_in] = 1'b1;
        3'd2: data_out[data_in] = 1'b1;
        3'd3: data_out[data_in] = 1'b1;
        3'd4: data_out[data_in] = 1'b1;
        3'd5: data_out[data_in] = 1'b1;
        3'd6: data_out[data_in] = 1'b1;
        default: data_out = 8'b0;
        endcase
    end
    
endmodule
