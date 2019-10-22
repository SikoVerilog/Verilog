`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2019 08:25:41 AM
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


module testbench;
    
    reg a, b, select;
    wire out;
    
    integer i, j, k;
    
    conditional uut(
        .a(a),
        .b(b),
        .select(select),
        .out(out)
        );
    
    initial begin
        
        for (i = 0; i <=1 ; i = i + 1) begin
            for (j = 0; j <=1 ; j = j + 1) begin
                for (k = 0; k <=1 ; k = k + 1) begin
                    a = i; b = j; select = k;
                    #100; 
                end
            end
        end
        
    end

endmodule
