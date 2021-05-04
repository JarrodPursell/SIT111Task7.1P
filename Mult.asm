@R0
D=M-1
@n
M=D
@i
M=1
@R1
D=M
@sum
M=D
@R2
M=0

@R0  //If R0 is already 0 skip to end
D=M
@END
D;JLE

@R1  //If R1 is already 0 skip to end
D=M
@END
D;JLE

(LOOP)
@i  //while i is still less than n continue
D=M
@n
D=D-M
@STOP  //if i and n are the same skip to STOP
D;JGT
@R1  //adds R1 to sum
D=M  //sum is a temp variable
@sum
M=M+D
@i
M=M+1
@LOOP  //loops back to LOOP
0;JMP

(STOP)
@sum //R2 = sum. R2 is the output
D=M
@R2
M=D

(END) 
@END
0;JMP