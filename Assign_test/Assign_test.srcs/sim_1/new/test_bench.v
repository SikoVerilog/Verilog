`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 07:16:06 AM
// Design Name: 
// Module Name: test_bench
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


module test_bench;

reg [2:0] a, b;
reg c_in;
wire [3:0] sum;
wire c_out;

integer i, j ,k;
add_assign uut(
    .a(a),
    .b(b),
    .c_in(c_in),
    .c_out(c_out),
    .sum(sum));
    
    
    initial begin
        a = 0; b = 0; c_in = 0;
        for (i = 0; i < 8; i=i+1)begin
            for (j = 0; j < 8; j = j+1)begin
                for(k = 0; k <= 1; k = k+1)begin
                    #5 a = i; b = j; c_in = k;
                end
            end    
        end
    end
endmodule
