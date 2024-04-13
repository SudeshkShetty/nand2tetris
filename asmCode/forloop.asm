//  for(i=0; i<n; i++){
//  	arr[i]=-1
//  }


//  Suppose that arr=100 and n=10

//  arr = 100

    @i
    M=0               //i=0
    @10		      
    D=A
    @n		      //n=10
    M=D        
    @100
    D=A
    @arr
    M=D               //arr=100
    
   (LOOP) 
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGE
    
    @100
    D=A
    @temp1
    M=D
    
    @arr
    D=M
    @i
    D=D+M
    @temp2
    M=D
    
    @temp1
    D=M
    @temp2
    A=M
    M=-D
    @i
    M=M+1
    @LOOP
    0;JMP
    
    (END)
    @END
    0;JMP
    
