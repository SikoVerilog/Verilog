`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 08:02:23 AM
// Design Name: 
// Module Name: conditional
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


module conditional(
    input a,
    input b,
    input select,
    output out
    );
    
    assign out = select == 1'b0 ? a : b;
     
endmodule
