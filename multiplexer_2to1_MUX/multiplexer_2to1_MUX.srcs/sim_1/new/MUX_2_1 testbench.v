`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 12:43:11 AM
// Design Name: 
// Module Name: 
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


module testbech;
reg A, B, S;
wire Z;

gate_level uut(
            .A(A),
            .B(B),
            .S(S),
            .Z(Z));
            
initial begin
    A = 0; B = 0; S = 0;
        #100
    A = 0; B = 0; S = 1;
        #100
    A = 0; B = 1; S = 0;
        #100
    A = 0; B = 1; S = 1;
        #100
    A = 1; B = 0; S = 0;
        #100
    A = 1; B = 0; S = 1;
        #100
    A = 1; B = 1; S = 0;
        #100
    A = 1; B = 1; S = 1;
        #100;
end
endmodule
