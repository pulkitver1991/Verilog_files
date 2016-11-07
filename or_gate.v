module or_gate(y,a,b);
  output y;
  input a,b;
  
  assign y=a|b;
endmodule


//tst bnch

module t_or_gate();
  wire y;
  reg a,b;
    or_gate a1(y,a,b);
  
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
