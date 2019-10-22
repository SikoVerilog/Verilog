`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 11:43:19 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg data_in;
    reg [2:0] select;
    wire [7:0] data_out;
    integer i;
    dmux_case uut(
        .data_in(data_in),
        .select(select),
        .data_out(data_out));
        
    initial begin
        data_in = 1'b1;
        for(i = 0; i < 8; i = i+1)begin
            select = i;
            #100;
        end
        
    end
endmodule
