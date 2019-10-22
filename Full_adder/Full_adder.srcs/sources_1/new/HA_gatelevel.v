`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2019 10:23:13 AM
// Design Name: 
// Module Name: HA_gatelevel
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


module HA_gatelevel(
    input A,
    input B,
    output S,
    output C_out
    );
 
xor x1(S,A,B);
and a1(C_out,A,B);
endmodule
