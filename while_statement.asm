
;<Program title>

jmp start


while: nop
	MOV a, b
	CMP c
	INR b
	JC while
	RET
	
start: nop

MVI c, 5
MVI b, 0
CALL while

hlt