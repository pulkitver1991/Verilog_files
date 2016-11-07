module vendingmachine(p,ne,change,ps,clk,money);
  output reg[0:1]p;
  output reg ne;
  output reg[3:0]change;
  input clk;
  input [3:0]money;
  input [0:1]ps;
  reg reset;
  
   initial 
   begin
   change=4'b0;
   p=2'b0;
   end

  always@(negedge clk)
  begin
    if(reset==1'b1)
      begin
        change=1'b0;
        p[0]=1'b0;
        p[1]=1'b0;
        ne=1'b0;
      end
    else if(money==4'b1010)
      begin
        change=4'b0000;
        ne=1'b0;
        if(ps[0]==1'b1 & ps[1]==1'b0)
          begin
            p[0]=1'b1;
            p[1]=1'b0;
            reset=1'b1;
          end
        else if(ps[0]==1'b0 & ps[1]==1'b1)
          begin
            p[0]=1'b0;
            p[1]=1'b1;
            reset=1'b1;
          end
      end
      
      else if(money<4'b1010)
      begin
        change=money;
        ne=1'b1;
        p[0]=1'b0;
        p[1]=1'b0;
        reset=1'b1;
      end
      
      else if(money>4'b1010)
      begin
        ne=1'b0;
        if(ps[0]==1'b1 & ps[1]==1'b0)
          begin
            p[0]=1'b1;
            p[1]=1'b0;
            change=money-4'b1010;
            reset=1'b1;
          end
        else if(ps[0]==1'b0 & ps[1]==1'b1)
          begin
            p[0]=1'b0;
            p[1]=1'b1;
            change=money-4'b1010;
            reset=1'b1;
          end
      end
    end
  endmodule
      
          
          
