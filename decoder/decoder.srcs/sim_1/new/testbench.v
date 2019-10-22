`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2019 12:32:06 AM
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

reg [2:0] data_in;
wire [7:0] data_out;

integer i;

decoder uut(.data_in(data_in), .data_out(data_out));

initial begin
    for (i = 0; i < 8; i = i+1)begin
        data_in = i;
        #128;
    end
end

endmodule
