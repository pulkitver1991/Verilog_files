module mux_81_df(y,s,a);
  output y;
  input [1:3]s;
  input [1:8]a;
  
  assign y=((s[1]==0)?((s[2]==0)?((s[3]==0)?a[1]:a[2]):((s[3]==0)?a[3]:a[4])):((s[2]==0)?((s[3]==0)?a[5]:a[6]):(s[3]==0)?a[7]:a[8]));
  
endmodule
  
  
//tst bnch

module t_mux_81_df();
 
 wire y;
 reg [1:3]s;
 reg [1:8]a;
 
 mux_81_df a1(y,s,a);
 
 initial
 begin
 
 s=3'b000;
 a=8'b01001101;
 #50;  
 
 s=3'b001;
 a=8'b01001101;
 #50;
 
 s=3'b010;
 a=8'b01001101;
 #50;
 
 s=3'b011;
 a=8'b01001101;
 #50;
 
 s=3'b100;
 a=8'b01001101;
 #50; 
  
 s=3'b101;
 a=8'b01001101;
 #50;
 
 s=3'b110;
 a=8'b01001101;
 #50;
 
 s=3'b111;
 a=8'b01001101;
 #50;
 
 end 
 endmodule