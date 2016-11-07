module fa(s,c,a,b,cin);
  output s,c;
  input a,b,cin;
  wire w1,w2,w3;
  
  ha a1(w1,w2,a,b);
  ha a2(s,w3,w1,cin);
  or_gate a3(c,w2,w3);
endmodule


  //tst bnch

module t_fa();
  wire s,c;
  reg a,b,cin;
    fa a1(s,c,a,b,cin);
  
  initial
  begin
    a=1'b0;
    b=1'b0;
    cin=1'b0;
    #25;
    a=1'b0;
    b=1'b0;
    cin=1'b1;
    #25;
    a=1'b0;
    b=1'b1;
    cin=1'b0;
    #25;
    a=1'b0;
    b=1'b1;
    cin=1'b1;
    #25;
    a=1'b1;
    b=1'b0;
    cin=1'b0;
    #25;
    a=1'b1;
    b=1'b0;
    cin=1'b1;
    #25;
    a=1'b1;
    b=1'b1;
    cin=1'b0;
    #25;
    a=1'b1;
    b=1'b1;
    cin=1'b1;
    #25;
  end
endmodule