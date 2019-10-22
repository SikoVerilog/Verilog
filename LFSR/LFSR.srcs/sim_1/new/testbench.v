`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 10:57:13 AM
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
    reg CLK, Reset;
    wire [3:0]Out;
    LFSR uut(.CLK(CLK), .Reset(Reset), .Out(Out));
    
    initial
        CLK = 1'b0;
        always
            #50 CLK = ~CLK;
    
    initial begin
        Reset = 1'b1;
        #200;
        Reset = 1'b0;
        #200;
    end
endmodule
