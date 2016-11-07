module ring(q,clk,reset);
  output reg [3:0]q;
  input clk,reset;
  always@(negedge clk)
  begin
    if(reset==1'b1)
      begin
      q=4'b0001;
    end
  else
    begin
      q[0]<=q[3];
      q[1]<=q[0];
      q[2]<=q[1];
      q[3]<=q[2];
      
    end 
  end
endmodule


//tst bnch

module t_ring();
  wire [3:0]q;
  reg clk,reset;
  
  ring a1(q,clk,reset);
  
  
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
  