module bit8_adder(y,c,a,b);
  output[7:0]y;
  output c;
  input [7:0]a;
  input [7:0]b;
  wire [6:0]c0;
  
  ha a1(y[0],c0[0],a[0],b[0]);
  fa a2(y[1],c0[1],a[1],b[1],c0[0]);
  fa a3(y[2],c0[2],a[2],b[2],c0[1]);
  fa a4(y[3],c0[3],a[3],b[3],c0[2]);
  fa a5(y[4],c0[4],a[4],b[4],c0[3]);
  fa a6(y[5],c0[5],a[5],b[5],c0[4]);
  fa a7(y[6],c0[6],a[6],b[6],c0[5]);
  fa a8(y[7],c,a[7],b[7],c0[6]);
  
  
endmodule