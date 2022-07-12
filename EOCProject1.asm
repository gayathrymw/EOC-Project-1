// asm program to sort numbers from RAM[0] to RAM[7] in descending order and store it to RAM[30] to RAM[37]

	@30 // resetting to 30
	D=A
	@j
	M=D


(LOOP_FROM)

	@i  // variable to itrate through RAM[0] to RAM[7]
	D=M // finds the latest from address
	A=D // changing to the latest address
	D=M
	@max
	M=D // stores the number at latest from address as maximum number


	@i  // loop breaking statement
	D=M
	@8
	D=D-A
	@END
	D;JEQ



	@i   // incrementing the variable for loop from
	M=M+1


	@30 // resetting to 30
	D=A
	@j
	M=D





(LOOP_TO)

	@max
	D=M

	@j
	A=M
	
	D=D-M // if max is greater, D will be +ve

	@CHANGE // if max is greater, numbers are interchanged
	D;JGT

	@max // if max == 0, breaks the loop and go with next number
	D=M

	@LOOP_FROM
	D;JEQ






	@j  // loop breaking statement
	D=M
	@37
	D=D-A
	@END
	D;JEQ



	@j   // incrementing the variable for loop from
	M=M+1









(CHANGE)
	@j   // from RAM[j] to temp
	D=M
	A=D
	D=M
	@temp
	M=D

	
	@max // from max to j
	D=M
	@j
	A=M
	M=D


	@temp  // from temp to max
	D=M
	@max
	M=D

	@LOOP_TO
	0;JMP


(END)
	
	@END
	0;JMP




