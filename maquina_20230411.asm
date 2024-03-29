
;<Buffer de teclado>

jmp start

teclado: EQU 0
mouse: EQU 1
microfone: EQU 2
monitor: EQU 3
cxsom: EQU 4
impressora: EQU 5
usb: EQU 6

buffer_teclado: DS 8 
buffer_mouse: DS 8
buffer_microfone: DS 8
buffer_monitor: DS 8
buffer_cxsom: DS 8
buffer_impressora: DS 8
buffer_usb: DS 128

pos: DB 0
limite: DB 7

ler_teclado: nop
	MVI c, 8
	MVI b, 0 ;reg contador = pos
	LXI h, buffer_teclado
	STA pos
	repete: nop
		IN teclado
		MOV m, a
		LDA pos
		INR b
		MOV a, b
		CMP c
		INX h
		JC repete
		RET
start: nop

CALL ler_teclado

HLT