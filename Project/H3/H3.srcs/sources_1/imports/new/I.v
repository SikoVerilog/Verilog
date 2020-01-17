`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2020 11:18:06 PM
// Design Name: 
// Module Name: I
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


module H3(
    input signed [9:0] X,
    input CLK,
    input Reset,
    output reg signed [19:0] Y
    );
    
    wire signed [9:0]a = 10'b1110111111;
    wire signed [9:0]b = 10'b1111011111;
    wire signed [9:0]c = 10'b0001010101;
    wire signed [9:0]d = 10'b0001101000;
    reg signed  [9:0]tap[1:5];
    wire signed [19:0]O[1:4];
    integer i;
    always @ (posedge CLK) begin
        if(Reset)begin //setting default values
                for(i=1; i<=5; i=i+1)begin
                    tap[i] <= 'b0;
                end
            end
        else begin
        tap[1] <= X;
        tap[2] <= tap[1];
        tap[3] <= tap[2];
        tap[4] <= tap[3];
        tap[5] <= tap[4];   
        end     
    end
    //assign O[1] = a*X + b*tap[2] + c*tap[3] + d*tap[5];
    DRUMk_M_N_s M1(a, X, O[1]);
    //assign O[1] = a*X; 
    DRUMk_M_N_s M2(b, tap[2], O[2]);
    //assign O[2] = b*tap[2];
    DRUMk_M_N_s M3(c, tap[3], O[3]);
    //assign O[3] = c*tap[3];
    DRUMk_M_N_s M4(d, tap[5], O[4]);
    //assign O[4] = d*tap[5];
    always @(posedge CLK) begin
        Y = O[1] + O[2] + O[3] + O[4];
    end
endmodule
