// Program: Sum1toN.asm
// Computes RAM[1] = 1+2+ ... +n
// Usage: put a number (n) in RAM[0]

   @R0
   D=M
   @n
   M=D
   @i
   M=1
   @sum
   M=0
  
  (LOOP) 
   @n
   D=M
   @i
   D=D-M
   @END			
   D;JLT		//if D<0 then jump 
   			//to END
   @i
   D=M
   @sum
   D=D+M
   M=D
   @i
   M=M+1                //i=i+1
   @LOOP
   0;JMP
   
  (END)
   @END
   0;JMP 
   
