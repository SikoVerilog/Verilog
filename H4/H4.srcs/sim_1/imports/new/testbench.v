`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2020 11:34:17 PM
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

    reg signed [15:0] X;
    reg CLK, Reset;
    wire signed [31:0] Y;
    
    H4 uut(
        .X(X),
        .CLK(CLK), 
        .Reset(Reset),
        .Y(Y));
        
    integer i,file,file1;
    //clock genration
    initial 
        CLK = 1'b0;
        always 
            #10 CLK = ~CLK;
    initial begin
        file = $fopen("C:/Users/Sanaullah/Desktop/ADSD/Project/Matlab/X.txt","r");  
        file1 = $fopen("C:/Users/Sanaullah/Desktop/ADSD/Project/Matlab/vivado_H4.txt","w");
        Reset = 1'b1;
        #20
        Reset = 1'b0;   
        for(i=0; i<10; i=i+1) begin
            $fscanf(file,"%b\n",X);
            #20;
            $fdisplay(file1,"%b",Y);
        end
        X = 'b0;
        #20 $fdisplay(file1,"%b",Y);
        #20 $fdisplay(file1,"%b",Y);
        #20 $fdisplay(file1,"%b",Y);
        #20 $fdisplay(file1,"%b",Y);
        #20 $fdisplay(file1,"%b",Y);
        $fclose(file1);
        $fclose(file);    
    end       

endmodule
