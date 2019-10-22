`timescale 1ns / 1ps
`define CYCLE 10
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2019 10:30:02 AM
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
    
    reg D, CLK;
    wire Q;
    
    D_flip_flop uut(.D(D), .CLK(CLK), .Q(Q));
    
    initial 
        CLK = 1'b0;
        always 
            #(`CYCLE) CLK = ~CLK;
    
    initial begin 
        D = 1'b0;
        #20
        D = 1'b1;
        #20;
    end
    
endmodule
