`timescale 1ns / 1ps
`define CYCLE 5 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2019 11:10:16 AM
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


module testbench(
    );
    reg D, CLK, R;
    wire Q;
    DFF_SR uut(.D(D), .CLK(CLK), .R(R), .Q(Q));
    
    initial begin
        D = 1'b0; R = 1'b0;
        #20
        D = 1'b0; R = 1'b1;
        #20
        D = 1'b1; R = 1'b0;
        #20
        D = 1'b1; R = 1'b1;
        #20;
    end
    initial 
        CLK = 1'b0;
        always 
            #`CYCLE CLK = ~CLK;
endmodule
