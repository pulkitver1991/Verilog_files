module sipo(o,i,clk);
  output reg [0:3]o;
  input i,clk;
  
  always @(negedge clk)
  begin
    o[0]<=i;
    o[1]<=o[0];
    o[2]<=o[1];
    o[3]<=o[2];
    end 
endmodule


//tst bnch

module t_sipo();
  wire [0:3]o;
  reg i,clk;
  
  sipo a1(o,i,clk);
  
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
