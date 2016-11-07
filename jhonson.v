module jhonson(q,qn,clk,reset);
  output reg [3:0]q;
  output reg [3:0]qn;
  input clk,reset;
  initial qn[3]=1'b1;
  always@(negedge clk)
  begin
    if(reset==1'b1)
      begin
      q=4'b0000;
      qn=~q;
    end
  else
    begin
      q[0]<=qn[3];
      q[1]<=q[0];
      q[2]<=q[1];
      q[3]<=q[2];
      qn=~q;
    end 
  end
endmodule


//tst bnch

module t_jhonson();
  wire [3:0]q;
  reg clk,reset;
  
  jhonson a1(q,qn,clk,reset);
  
  
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
  