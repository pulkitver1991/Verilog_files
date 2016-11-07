module ripple(q,clk,reset);
  output reg [3:0]q;
  input clk,reset;
  parameter tin=1'b1;
  
  always@(negedge clk)
  begin
    if(reset==1'b1)
      begin
      q[0]=1'b0;
    end
  else if(tin==1'b1)
    begin
      q[0]=~q[0];
    end
  end
  
    always@(negedge q[0])
  begin
    if(reset==1'b1)
      begin
      q[1]=1'b0;
    end
  else if(tin==1'b1)
    begin
      q[1]=~q[1];
    end
  end
  
      always@(negedge q[1])
  begin
    if(reset==1'b1)
      begin
      q[2]=1'b0;
    end
  else if(tin==1'b1)
    begin
      q[2]=~q[2];
    end
  end
  
  always@(negedge q[2])
  begin
    if(reset==1'b1)
      begin
      q[3]=1'b0;
    end
   else if(tin==1'b1)
    begin
      q[3]=~q[3];
    end
  end
endmodule


//tst bnch

module t_ripple();
  
  wire [3:0]q;
  reg clk,reset;
  
  ripple a1(q,clk,reset);
  
  always
  begin
    #10;
    clk=~clk;
  end
  
  initial
  begin
    clk=1'b0;
    reset=1'b1;
    #20;
    reset=1'b0;
  end
endmodule