module stack
  #(parameter WordSize = 4 , AddressSize = 3)
(
  output reg [3:0] Data_Out,
  output reg Full,
  output reg Empty,
  output reg Error,
  input Clk,
  input RstN,
  input [3:0] Data_In,
  input push,
  input pop
  );
  reg [WordSize-1:0] Mem [0:(1<<AddressSize)-1];
  reg [AddressSize : 0] counter ;
  always@(posedge Clk)
  begin
   if (RstN == 1)
      begin 
        counter <=0;
        Full <=0;
        Empty<=1;
        Data_Out<=0;
        Error <= 0;
        Mem[0] <= 0;
        Mem[1] <= 0;
        Mem[2] <= 0;
        Mem[3] <= 0;
        Mem[4] <= 0;
        Mem[5] <= 0;
        Mem[6] <= 0;
        Mem[7] <= 0;
      end
  else begin
    if (pop == 1 && push == 0 && Empty != 1) begin
        Data_Out<= Mem[counter[AddressSize:0]-1];
        counter <= counter -4'b0001;
        Error <= 0;
        if (counter == 1) begin
          Full <= 0;
          Empty <= 1;   
        end
        else begin
          Full <= 0;
          Empty <= 0;  
        end
       end
    else if (push == 1 && pop == 0 && Full!=1) begin
        Mem[counter[AddressSize-1:0]]<= Data_In;
        counter <= counter +4'b0001;
        Error <= 0;
        if (counter == 4'b0111) begin
          Full <= 1;
          Empty <= 0;   
        end
        else begin
          Full <= 0;
          Empty <= 0;  
        end
       end 
    else if (push == 1 && pop == 1) begin
      Error <= 1;
      end 
    else begin 
      Error <=0;
      end 
    if (counter[AddressSize] ==1) begin
      Full <= 1;
      Empty <= 0;
    end
    else if (counter == 4'b0000) begin
      Full <= 0;
      Empty <= 1;
    end
        end
  end
endmodule

  


