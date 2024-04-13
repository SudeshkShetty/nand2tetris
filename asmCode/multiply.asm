// Program: multiply.asm
// Set RAM[0] and RAM[1] to required value and store output in RAM[2]
// for(i < RAM[1])
//    { sum=sum+RAM[0]
//		}
// variables used are n, numb1, numb2, i, multi


  @R0
  D=M
  @num1
  M=D
  
  @R1
  D=M
  @num2
  M=D
  
  @multi
  M=0
  @i
  M=0
  
 (LOOP)
  @i
  D=M
  @num2
  D=D-M
  @END
  D;JEQ
 
  @num1
  D=M
  @multi
  D=D+M
  M=D
  @i
  M=M+1
  @LOOP
  0;JMP
  
  (END)
  @END
  0;JMP
  
