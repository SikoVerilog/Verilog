`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2019 01:06:22 PM
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
    DFF_AsysR uut(.D(D), .R(R), .CLK(CLK), .Q(Q));
    
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
            #5 CLK = ~ CLK;
    
endmodule
