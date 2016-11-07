module piso(o,i,clk);
  
  output reg o;
  input [0:3]i;
  input clk;
  reg [0:3]r;
   initial r=i;
  always @(negedge clk)
  begin
   
   o=r[3];
   r=r>>1;
     end
endmodule
    
    
    
//tst bnch

module t_piso();
  wire o;

  reg clk;
  reg [0:3]i;
  
  piso a1(o,i,clk);
  
  always
  begin
    #10;
    clk=~clk;
  end
  
  initial
  begin
    clk=1'b0;
    
    i=4'b1001;
    #50;
    
  end
endmodule
