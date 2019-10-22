`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2019 01:14:12 PM
// Design Name: 
// Module Name: Reg_4bit
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


module Reg_4bit(
    input IN,
    input CLK,
    input R,
    output reg OUT
    );
    reg [2:0] Data;
    always @ (posedge CLK) begin
        if(R) {OUT, Data[2:0]} <= 4'b0000;
        else 
            {OUT, Data[2:0]} <= {Data[2:0],IN};
    
    end
    
endmodule
