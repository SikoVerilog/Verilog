`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 09:17:58 AM
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


module testbench;
    reg [7:0] data;
    reg [2:0] select;
    wire out;
    integer i, j;
    mux_for uut(
        .data(data),
        .select(select),
        .out(out));
    
    initial begin

        for (i = 0; i <= 337; i = i+1)begin
            for (j = 0; j < 8; j = j+1)begin
                data = i;
                select = j;
                #5;    
            end
        end
         
    end
endmodule
