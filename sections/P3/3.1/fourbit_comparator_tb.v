module fourbit_comparator_tb;
  reg [3:0] a;
  reg [3:0] b;
  wire E, G, L;
  
  fourbit_comparator fcmp(a, b, E, G, L);
  
  initial
  begin
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    #10
    
    a <= {$random} % 16;
    b <= {$random} % 16;
    
  end
endmodule
  