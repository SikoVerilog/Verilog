`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2019 12:09:52 PM
// Design Name: 
// Module Name: Processor
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


module Processor(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input [5:0] INS,
    input Int,
    input CLK,
    output reg [3:0] Result
    );
    wire [3:0] OP1, OP2, Add, And, Sub;//intermediate connection
    MUX_Selection #(4) M1(.A(A), .B(B), .C(C), .D(D), .Sel(INS[3:2]), .OP(OP1));//Operent 1 selection on the base of instraction
    MUX_Selection #(4) M2(.A(A), .B(B), .C(C), .D(D), .Sel(INS[1:0]), .OP(OP2));//Operent 2 selection on the base of instraction
    ADD #(4) add_inst(.A(OP1), .B(OP2), .Add(Add));//Add module
    AND #(4) and_inst(.A(OP1), .B(OP2), .And(And));//And module
    SUB #(4) sub_inst(.A(OP1), .B(OP2), .Sub(Sub));//Subtracion module
    always @ (posedge CLK, posedge Int)begin 
        if(Int) Result <= 4'b1111;
        else begin
            case(INS[5:4])
            2'b00: Result <= Add;
            2'b01: Result <= Sub;
            2'b10: Result <= And;
            2'b11: Result <= 4'b0000; 
            default:Result <= 4'bZ;
            endcase
        end
    end 
endmodule
