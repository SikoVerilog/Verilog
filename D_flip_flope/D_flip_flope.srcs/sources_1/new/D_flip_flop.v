`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2019 10:27:06 AM
// Design Name: 
// Module Name: D_flip_flop
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


module D_flip_flop(
    input D,
    input CLK,
    output Q
    );
    reg Q;
    
    always @ (posedge CLK) begin
        Q <= D;
    end
endmodule
