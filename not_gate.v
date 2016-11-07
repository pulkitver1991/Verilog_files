module not_gate(y,a);
  output y;
  input a;
  
  not(y,a);
endmodule

//tst bnch

module t_not_gate();
  wire y;
  reg a;
    not_gate a1(y,a);
  
  initial
  begin
    a=1'b0;
    #25;
    a=1'b1;
    #25;
  end
endmodule

