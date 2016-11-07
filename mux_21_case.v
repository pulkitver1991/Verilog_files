module mux_21_case(y,a,b,s);
  output reg y;
  input a,b,s;
  
  always @(s)
  begin
    case(s)
      1'b0:
      y=a;
      1'b1:
      y=b;
    endcase
  end

endmodule


//tst bnch

module t_mux_21_case();
  wire y;
  reg a,b,s;
  
   mux_21_case a1(y,a,b,s);
  
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
