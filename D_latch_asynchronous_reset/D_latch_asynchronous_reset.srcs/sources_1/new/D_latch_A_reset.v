`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2019 09:06:32 PM
// Design Name: 
// Module Name: D_latch_A_reset
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


module D_latch_A_reset(
    input D,
    input E,
    input R,
    output reg Q
    );
    
    always @ (E, D, R)begin 
 
        if(R == 1'b1) Q<=0;
        else if(E == 1'b1) Q<=D;
        else Q<=1'b1;
        
    end
    
endmodule
