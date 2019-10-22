`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2019 11:39:38 AM
// Design Name: 
// Module Name: testbench
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


module testbench();
    
    reg [7:0] A, B, C, D, E, F;
    reg [2:0] sel;
    wire [7:0] out;
    
    //call uut(.A(A), .B(B), .C(C), .D(D), .Sel(sel), .Out(out));
    MUX #(8,3,6) M1(.IN({F, E, D, C, B, A}), .sel(Sel), .out(Out)); 
    integer i;
    initial begin
        A = 8'd35; B = 8'd18; C = 8'd9; D = 8'd25; , 
        for (i = 0; i<8 ; i=i+1)begin
            sel = i;
            #50;
        end
    end
    
endmodule
