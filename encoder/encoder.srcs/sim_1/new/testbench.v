`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2019 12:14:08 AM
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

reg [7:0] data_in;
wire [2:0] data_out;
integer i;
encoder uut(.data_in(data_in),
            .data_out(data_out));
initial begin
    data_in = 8'h00;
    for (i = 0; i < 256; i = i+1) begin
        data_in = i;
        #4;
    end 
end
endmodule
