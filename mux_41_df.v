module mux_41_df(y,s1,s2,a,b,c,d);
  output y;
  input s1,s2,a,b,c,d;
  
  assign y=((s1==0)?((s2==0)?a:b):((s2==0)?c:d));
endmodule


//tst bnch

module t_mux_41_df();
  wire y;
  reg a,b,c,d,s1,s2;
  
 mux_41_df a1(y,s1,s2,a,b,c,d);
  
  initial
  begin
  s1= 1'b0;
  s2= 1'b0;
  a = 1'b1;
  b = 1'b0;
  c = 1'b0;
  d = 1'b0;
  #50;  
  
  s1= 1'b0;
  s2= 1'b1;
  a = 1'b0;
  b = 1'b1;
  c = 1'b0;
  d = 1'b0;
  #50;
  
  s1= 1'b1;
  s2= 1'b0;
  a = 1'b0;
  b = 1'b0;
  c = 1'b1;
  d = 1'b0;
  #50;
  
  s1= 1'b1;
  s2= 1'b1;
  a = 1'b0;
  b = 1'b0;
  c = 1'b0;
  d = 1'b1;
  #50;
  
end

endmodule