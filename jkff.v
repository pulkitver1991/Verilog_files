module jkff(q,qn,clk,reset,j,k);
  
  output reg q,qn;
  input clk,reset,j,k;
  
  always @(negedge clk)
  begin
    if(reset==1'b1)
    begin
      q=1'b0;
      qn=1'b1;
    end
 else if(j==1'b0 & k==1'b0)
   begin
     q=q;
     qn=~q;
   end
   
 else if(j==1'b0 & k==1'b1)
   begin
     q=j;
     qn=~q;
   end
   
 else if(j==1'b1 & k==1'b0)
   begin
     q=j;
     qn=~q;
   end
   
 else if(j==1'b1 & k==1'b1)
   begin
     q=~q;
     qn=~q;
   end
 end
 endmodule
 
 
 //tst bnch
 
 module t_jkff();
 
 wire q,qn;
 reg clk,reset,j,k;
 
jkff a1(q,qn,clk,reset,j,k);

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
    
    j=1'b0;
    k=1'b0;
    #50;
    
    j=1'b0;
    k=1'b1;
    #50;
    
    j=1'b1;
    k=1'b0;
    #50;
    
    j=1'b1;
    k=1'b1;
    #50;
  end
endmodule