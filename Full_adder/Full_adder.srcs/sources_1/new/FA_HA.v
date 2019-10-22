`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2019 10:46:17 AM
// Design Name: 
// Module Name: FA_HA
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


module FA_HA(
    input A,
    input B,
    input C_in,
    output S,
    output C_out
    );
    
    wire S1, C1, C2;
    
    HA_gatelevel HA1(
        .A(A),
        .B(B),
        .S(S1),
        .C_out(C1));
        
    HA_gatelevel HA2(
        .A(S1),
        .B(C_in),
        .S(S),
        .C_out(C2));
        
    or O1(C_out, C1, C2);
    
endmodule
