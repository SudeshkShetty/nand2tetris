// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

   @SCREEN
   D=A
   @addressscreen                  // store address of screen in variable
   M=D
   @KBD
   D=A
   @addresskeyboard                // store address of kbd in variable
   M=D
   
   @8192                           // number of registers in screen map
   D=A
   @n                              // n=8192
   M=D
   
   @i
   M=0
   
  (LOOP)
   @i
   M=0                            // refresh value of i for every iteration
   
   @addresskeyboard
   D=M
   A=D                            // assign KBD register address into A register  
   D=M                             
   @SCREENWHITE                   
   D;JEQ                          // check the output of KBD
   @SCREENBLACK
   0;JMP
   
  (SCREENWHITE) 
   @addressscreen                  // check if screen is white or black
   D=M
   A=D
   D=M
   @LOOP
   D;JEQ
    
  (LOOP1)                         // if black turn it back to white
   @i
   D=M
   @n
   D=D-M
   @LOOP
   D;JGE
   
   @i
   D=M
   @addressscreen
   D=D+M
   A=D
   M=0
   @i
   M=M+1
   @LOOP1
   0;JMP
   
  (SCREENBLACK) 
  (LOOP2)                        
   @i
   D=M
   @n
   D=D-M
   @LOOP
   D;JGE
   
   @i
   D=M
   @addressscreen
   D=D+M
   A=D
   M=-1
   @i
   M=M+1
   @LOOP2
   0;JMP
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
