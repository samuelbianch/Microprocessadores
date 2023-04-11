jmp start

start: nop
MVI B, 5
MVI A, 3
INR B
INR A

CMP B ; se (A < B) -> B++; senao -> A++;

JC incrementaB
JNC incrementaA

incrementaB: NOP
INR B
JMP FIM

incrementaA: NOP
INR A
JMP FIM

FIM: NOP

hlt