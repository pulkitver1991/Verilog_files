module mux_21_df(y,a,b,s);
  output y;
  input a,b,s;
  
  assign y=((s==0)?a:b);
endmodule


//tst bnch

module t_mux_21_df();
  wire y;
  reg a,b,s;
  
   mux_21_df a1(y,a,b,s);
  
  initial
  begin
  s= 1'b0;
  a= 1'b0;
  b = 1'b1;
  #50;
  
  s= 1'b1;
  a= 1'b0;
  b = 1'b1;
  #50;

end

endmodule
