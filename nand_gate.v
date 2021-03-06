module nand_gate(y,a,b);
  output y;
  input a,b;
  
  nand(y,a,b);
endmodule


//tst bnch

module t_nand_gate();
  wire y;
  reg a,b;
    nand_gate a1(y,a,b);
  
  initial
  begin
    a=1'b0;
    b=1'b0;
    #25;
    a=1'b0;
    b=1'b1;
    #25;
    a=1'b1;
    b=1'b0;
    #25;
    a=1'b1;
    b=1'b1;
    #25;
  end
endmodule
