`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2019 10:43:20 AM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;

    reg A,B,C_in;
    wire S,C_out;
    
    FA_HA uut(
        .A(A),
        .B(B),
        .C_in(C_in),
        .S(S),
        .C_out(C_out));
    
initial begin
    A=0;
    B=0;
    C_in=0;
    #100
    
    A=1;
    B=0;
    C_in=0;
    #100

    A=0;
    B=1;
    C_in=0;
    #100
    
    A=1;
    B=1;
    C_in=0;
    #100
    
    A=0;
    B=0;
    C_in=1;
    #100
    
    A=1;
    B=0;
    C_in=1;
    #100
    
    A=0;
    B=1;
    C_in=1;
    #100
    
    A=1;
    B=1;
    C_in=1;
    #100;
  
end

endmodule
