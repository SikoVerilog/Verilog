`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2019 08:53:41 PM
// Design Name: 
// Module Name: D_latch
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


module D_latch(
    input D,
    input E,
    output  reg Q
    );
    
    always @ (E or D) begin
       // Q = 1'b0;
        if(E == 1'b1)
            Q <= D;
        else Q<=0;
    end
    
endmodule
