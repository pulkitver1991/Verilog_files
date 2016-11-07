module siso(o,i,clk);
  output reg o;
  input i,clk;
  reg w1,w2,w3;
  
  always @(negedge clk)
  begin
    w1<=i;
    w2<=w1;
    w3<=w2;
    o<=w3;
  end 
endmodule

//tst bnch

module t_siso();
  wire o,w1,w2,w3;
  reg i,clk;
  
  siso a1(o,i,clk);
  
  always
  begin
    #10;
    clk=~clk;
  end
  
  initial
  begin
    clk=1'b0;
    
    i=1'b1;
    #50;
    i=1'b0;
    #50;
  end
endmodule
  
    
    
