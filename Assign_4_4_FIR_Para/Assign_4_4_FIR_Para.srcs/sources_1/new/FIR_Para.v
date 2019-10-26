`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 03:51:57 PM
// Design Name: 
// Module Name: FIR_Para
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


module FIR_Para # (parameter I_W = 16, O_W = 16, C_W = 16, L_F = 5, C_T=80) (
    input [I_W-1 :0] X,
    input CLK, 
    input Reset,
    output reg [O_W - 1 :0] Y,
    input [C_T - 1 :0] Cof
    );
    
    reg [I_W - 1 :0] Xn [1:L_F]; //shift registers
    reg [C_W-1:0] regenrate; //veriable to regenrate the vectors
    integer i,j;
    always @(posedge CLK) begin
        if(Reset)begin //setting default values
            for(i=1; i<=L_F; i=i+1)begin
                Xn[i] <= 'b0;
            end
        end
        else begin
            //logic for shit register
            Xn[1] <= X;
            for(i=2; i<=L_F; i=i+1)begin
                Xn[i] <= Xn[i-1];
            end
            //genralized logic for cofficent multiplication
             Y = X * Cof[C_W-1:0];
            for(i=1; i<L_F; i=i+1)begin
                //regenration of vector from input stream
                for(j=0; j<C_W; j=j+1) begin
                    regenrate[j] =  Cof[(C_W*i)+j];
                end
                //regenrated vector is coffceint fo FIR filter
                regenrate = regenrate * Xn[i];
                Y = Y + regenrate;
            end
        end
    end
     
    
endmodule
