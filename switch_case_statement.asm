
;<Program title>

jmp start

entrada: DS 8

switch_case: nop
	LXI h, entrada
	IN entrada
	LDA entrada
	MVI a, 1
	CMP a
	JZ case1
	MVI a, 2
	JZ case2 
	JNC default

case1: nop
	OUT 75h
	OUT 6Dh
	RET

case2: nop
	OUT 64h
	OUT 6Fh
	OUT 69h
	OUT 73h
	RET


default: nop
	RET

start: nop

CALL switch_case

hlt