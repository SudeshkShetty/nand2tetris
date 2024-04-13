// Program: Rectangle.asm
// Draws a filled rectangle at the screen's 
// top left corner.
// The rectangles width is 16pixels, and its 
// height is RAM[0]
// Usage: put a non-negative number (rectangle'
// s height) in RAM[0]

  @R0
  D=M
  @n
  M=D		// n=RAM[0]
  
  @i
  M=0		// i=0
  
  @SCREEN 
  D=A
  @address
  M=D		// address = 16384 (base address of the Hack screen)
  
 (LOOP)
  @i
  D=M
  @n
  D=M-D
  @END
  D;JEQ
  
  @address
  D=M 
  A=D          // take base address and make A register equal to that 
  M=-1	       // -1 in binary is 11111111111[16]
  @32	       
  D=A
  @address
  M=M+D	       //increment address by 32 to go to next register 
  @i
  M=M+1
  @LOOP
  0;JMP
  
 (END)
  @END
  0;JMP
  
  
