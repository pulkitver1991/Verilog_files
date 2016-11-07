module dff(q,qn,clk,reset,din);
  
  output reg q,qn;
  input clk, reset, din;
  
  always @(negedge clk)
  begin
    if(reset==1'b1)
      begin
      q=1'b0;
      qn=1'b1;
    end
  else
    begin
      q=din;
      qn= ~q;
    end 
  end
  endmodule
  
//tst bnch
module t_dff();
  
  wire q,qn;
  reg clk, reset, din;
  
  dff a1(q,qn,clk,reset,din);
  
  always
  begin
    #10;
    clk=~clk;
  end
  
  initial
  begin
    clk=1'b0;
  reset=1'b1;
  #100;
  reset=1'b0;
  #50;
  din=1'b0;
  #50;
  din=1'b1;
  #50;   
end
endmodule