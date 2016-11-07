module counter(o,clk,reset);
  output reg [0:3]o;
  input clk,reset;
  
  always @(negedge clk)
  begin
    if(reset==1'b1)
      begin
        o=4'b0000;
      end
    else if(o<4'b1111)
      begin
        o=o+1;
      end
    else
      begin
        o=4'b0000;
      end
    end
  endmodule
  
  
  //tst bnch
  
  module t_counter();
  
  wire [0:3]o;
  reg clk,reset;  

  counter a1(o,clk,reset);
  
  always
  begin
    #25;
    clk=~clk;
  end
  
  initial
  begin
  clk=1'b0;
  reset=1'b1;
  #50;
  reset=1'b0;
  #50;
end
endmodule
