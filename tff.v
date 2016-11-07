 module tff(q,qn,clk,reset,tin);
  
  output reg q,qn;
  input clk, reset, tin;
  
  always @(negedge clk)
  begin
    if(reset==1'b1)
      begin
      q=1'b0;
      qn=1'b1;
    end
  else if(tin==1'b0)
    begin
      q=q;
      qn= ~q;
    end 
  else if(tin==1'b1)
    begin
      q=~q;
      qn=~q;
    end
  end
  endmodule
  
  //tst bnch
module t_tff();
  
  wire q,qn;
  reg clk, reset, tin;
  
  tff a1(q,qn,clk,reset,tin);
  
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
  tin=1'b0;
  #50;
  tin=1'b1;
  #50;   
end
endmodule
  