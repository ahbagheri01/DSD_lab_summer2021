module onebit_comparator_tb;
        reg a, b;
        wire eq, gre, less;
        onebit_comparator comparator(a, b, eq, gre, less);
        
        initial
        begin
          a <= 0;
          b <= 0;
          #10
          
          a <= 0;
          b <= 1;
          #10
          
          a <= 1;
          b <= 0;
          #10
          
          a <= 1;
          b <= 1;
          
          
        end
endmodule
      