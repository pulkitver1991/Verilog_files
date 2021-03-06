module fir_formula(y,clk,b1,b2,b3,x);
  
  output reg [0:7]y;
  input clk;
  input [0:7]x;
  input [0:7]b1,b2,b3;
  reg [0:7]x0[1:3];

  reg [0:7]i;
  
  always @(negedge clk)
  begin
    
    
    for(i=3;i>0;i=i-1)
    begin
     x0[i]<=x0[i-1]; 
    end
    x0[1]<= x;
        y=((b1*x0[1])+(b2*x0[2])+(b3*x0[3]));  
  end
endmodule
