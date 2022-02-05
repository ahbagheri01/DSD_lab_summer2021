module stack_tb();
  wire [3:0] Data_Out;
  wire Full;
  wire Empty;
  wire Error;
  reg Clk = 0;
  reg RstN;
  reg [3:0] Data_In;
  reg push;
  reg pop;
  stack s(.Data_Out(Data_Out),.Full(Full),.Empty(Empty),.Error(Error),.Clk(Clk),.RstN(RstN),
  .Data_In(Data_In),.push(push),.pop(pop));
   always
  begin
    #5 Clk = ~Clk;
  end
  initial
  begin 
  RstN = 1;
  #20
  RstN = 0;
  
#2
  #14
  pop = 1;
  #10
  pop = 0;
  #2
  push = 1;
  Data_In = 1;
  //#2
  push = 1;
  #9
  Data_In = 2;
  #2
  push = 1;
  #10
  Data_In = 3;
  #2
  push = 1;
  #10
  Data_In = 4;
  #2
  push = 1;
  #10
  Data_In = 5;
  //#2
  push = 1;
  #10
  Data_In = 6;
  #2
  push = 1;
  #10
  Data_In = 7;
  #2
  push = 1;
  #8
  Data_In = 8;
  #2
  push = 1;
  #10
  Data_In = 9;
  #2
  push = 1;
  #10
  
Data_In = 10;
  #2
  push = 1;
  #10
  pop = 1;
  push = 0;
  #120
  pop = 0;// 
  Data_In = 11;
  #2
  push = 1;
  #10
  Data_In = 12;
  #2
  push = 1;
  #10
  Data_In = 13;
  #2
  push = 1;
  #10
  Data_In = 14;
  #15
  push = 0;
  pop = 0;
  #12
  RstN = 1;
  #20
  RstN = 0;
  #20
  push = 1;
  #10
  Data_In = 15;
  #2
  push = 1;
  #10
  pop = 1;
  push = 0;
  #10
  #40
  pop = 0;
  push = 1;
  Data_In = 14;
  #10
  pop = 1;
  push = 0;
  #60
  pop = 1;
  push = 1;
  #10
  pop = 0;
  push = 1;
  Data_In = 4;
  #12
  pop = 1;
  push = 0;
  #12
  push = 1;
  pop = 0;
  Data_In = 7;
  #90
  Data_In = 9;
  #12
  pop = 1;
  push = 0;
  #200
  
  
  
  $stop;
   end
    
endmodule
