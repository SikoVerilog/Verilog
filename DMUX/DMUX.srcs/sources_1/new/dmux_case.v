`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 11:37:24 PM
// Design Name: 
// Module Name: dmux_case
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


module dmux_case(
    input data_in,
    input [2:0] select,
    output reg [7:0] data_out
    );
    
    always @ (*) begin
        data_out = 8'd0;
        case(select)
        3'd0: data_out[0] = data_in;
        3'd1: data_out[1] = data_in;
        3'd2: data_out[2] = data_in;
        3'd3: data_out[3] = data_in;
        3'd4: data_out[4] = data_in;
        3'd5: data_out[5] = data_in;
        3'd6: data_out[6] = data_in;
        3'd7: data_out[7] = data_in;
        endcase
    end
    
endmodule
