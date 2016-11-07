module pipo(o,i,clk);
  output reg [0:3]o;
  input [0:3]i;
  input clk;
  
  always @(negedge clk)
  begin
    o[0]<=i[0];
    o[1]<=i[1];
    o[2]<=i[2];
    o[3]<=i[3];
    end 
endmodule

//tst bnch

module t_pipo();

  wire [0:3]o;
  reg clk;
  reg [0:3]i;
  
  pipo a1(o,i,clk);
  
  always
  begin
    #10;
    clk=~clk;
  end
  
  initial
  begin
    clk=1'b0;
    
    i=4'b1001;
    #50;
    i=4'b1010;
    #50;
  end
endmodule

