`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2019 11:40:17 AM
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
    reg signed [1:0] X;
    reg signed [1:0] C[5:0];
    reg CLK, Reset;
    wire signed [3:0] Y;
    
    FIR_Para #(2, 4, 2, 6, 12) uut(//instantiation of design
        .X(X),
        .CLK(CLK), 
        .Reset(Reset),
        .Y(Y),
        .Cof({C[5], C[4], C[3], C[2], C[1],C[0]}));
        
    integer i,file,file1;
    //clock genration
    initial 
        CLK = 1'b0;
        always 
            #10 CLK = ~CLK;
            
    initial begin
        file = $fopen("C:/Users/Sanaullah/Desktop/ADSD/Assignment 6/input_H3.txt","r");
        //file1 = $fopen("C:/Users/Sanaullah/Desktop/ADSD/Matlab work/vivado_output.txt","w");
        file1 = $fopen("C:/Users/Sanaullah/Desktop/ADSD/Assignment 6/vivado_H3.txt","w");
        $fscanf(file,"%b\n",C[0]);
        $fscanf(file,"%b\n",C[1]);
        $fscanf(file,"%b\n",C[2]);
        $fscanf(file,"%b\n",C[3]);
        $fscanf(file,"%b\n",C[4]);
        $fscanf(file,"%b\n",C[5]);
        //cofficient value assigning
        Reset = 1'b1;
        #20
        Reset = 1'b0;
        //sequence genration
        for(i=0; i<10; i=i+1) begin
            $fscanf(file,"%b\n",X);
            #20;
            $fdisplay(file1,"%b",Y);
          //  $fdisplay(file1,"%b",Y);
            
            
        end
        X = 'b0;
        #20 $fdisplay(file1,"%b",Y);
        #20 $fdisplay(file1,"%b",Y);
        #20 $fdisplay(file1,"%b",Y);
        #20 $fdisplay(file1,"%b",Y);
        #20 $fdisplay(file1,"%b",Y);
       
        $fclose(file);
        $fclose(file1);
        
        
    end
endmodule
