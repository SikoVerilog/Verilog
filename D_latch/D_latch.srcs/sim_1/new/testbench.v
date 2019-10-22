`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2019 08:56:13 PM
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

    reg D, E;
    wire Q;
    
    D_latch uut(.D(D), .E(E), .Q(Q));
    
    initial begin
        D = 0; E = 0;
        #100
        D = 0; E = 1;
        #100
        D = 1; E = 0;
        #100
        D = 1; E = 1;
        #100;
    end
endmodule
