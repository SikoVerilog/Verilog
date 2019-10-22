`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 08:56:28 AM
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

integer i,j;

mux_case uut(
    .data(data),
    .select(select),
    .out(out));
    
initial begin
    for( i = 0; i <= 377; i = i+1 )begin
        for( j = 0; j < 8; j = j+1 )begin
            data = i; select = j;
            #5;
        end
    end
end

endmodule
