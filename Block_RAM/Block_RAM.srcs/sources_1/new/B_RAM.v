`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 10:26:09 AM
// Design Name: 
// Module Name: B_RAM
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


module B_RAM(
    input [31:0] Write_Data,
    input [4:0] Read_Addr_1,
    input [4:0] Read_Addr_2,
    input [4:0] Write_Addr,
    output [31:0] Read_Data_1,
    output [31:0] Read_Data_2,
    input CLK,
    input Write_Enable
    );
    
    reg [31:0] Reg_File [0:31];
    
    assign Read_Data_1 = Reg_File[Read_Addr_1];
    assign Read_Data_2 = Reg_File[Read_Addr_2];
    
    always @ (posedge CLK) begin
        if(Write_Enable) begin
            Reg_File [Write_Addr] <= Write_Data;
        end
    end
    
endmodule
