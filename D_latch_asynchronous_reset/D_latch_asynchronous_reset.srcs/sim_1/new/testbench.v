`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2019 09:09:31 PM
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
    
    reg D, E, R;
    wire Q;
    
    D_latch_A_reset uut(.D(D), .E(E), .R(R), .Q(Q));
    
    initial begin
        D = 0; E = 0; R = 0;
        #100
        D = 0; E = 0; R = 1;
        #100
        D = 0; E = 1; R = 0;
        #100
        D = 0; E = 1; R = 1;
        #100
        D = 1; E = 0; R = 0; 
        #100
        D = 1; E = 0; R = 1;
        #100
        D = 1; E = 1; R = 0;
        #100
        D = 1; E = 1; R = 1;
        #100;
    end
    
endmodule
