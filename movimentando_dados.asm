
;<Program title>

jmp start

;data

var1: db 11
;code
start: nop
mvi l, 3
mvi a, 25
mov m, a
sta var1

hlt