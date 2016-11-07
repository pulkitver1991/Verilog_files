module ha(s,c,a,b);
  output s,c;
  input a,b;
  
  xor_gate a1(s,a,b);
  and_gate a2(c,a,b);
  endmodule
  
  //tst bnch

module t_ha();
  wire s,c;
  reg a,b;
    ha a1(s,c,a,b);
  
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
