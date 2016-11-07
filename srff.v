module srff(q,qn,clk,reset,s,r);
  
  output reg q,qn;
  input clk,reset,s,r;
  
  always @(negedge clk)
  begin
    if(reset==1'b1)
    begin
      q=1'b0;
      qn=1'b1;
    end
 else if(s==1'b0 & r==1'b0)
   begin
     q=q;
     qn=~q;
   end
   
 else if(s==1'b0 & r==1'b1)
   begin
     q=s;
     qn=~q;
   end
   
 else if(s==1'b1 & r==1'b0)
   begin
     q=s;
     qn=~q;
   end
   
 else if(s==1'b1 & r==1'b1)
   begin
     q=1'b1;
     qn=~q;
   end
 end
 endmodule
 
 
  //tst bnch
 
 module t_srff();
 
 wire q,qn;
 reg clk,reset,s,r;
 
srff a1(q,qn,clk,reset,s,r);

  always
  begin
    #10;
    clk=~clk;
  end
  
  initial
  begin
    clk=1'b0;
    reset=1'b0;
    #50;
    
    s=1'b0;
    r=1'b0;
    #50;
    
    s=1'b0;
    r=1'b1;
    #50;
    
    s=1'b1;
    r=1'b0;
    #50;
    
    s=1'b1;
    r=1'b1;
    #50;
  end
endmodule
