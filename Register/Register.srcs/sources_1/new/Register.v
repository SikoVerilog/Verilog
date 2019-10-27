`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2019 12:05:49 AM
// Design Name: 
// Module Name: Register
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


module Register(
    input [10:0]D,
    output reg [10:0]Q,
    input CLK,
    input Reset,
    input E,
    input [10:0]Default
    );
    
    always @ (posedge CLK) begin
        if(Reset) Q <= Default;
        else if(E==1'b1) Q <= D;
        else if(E==1'b0)  Q <= Q;
       
    end
endmodule
