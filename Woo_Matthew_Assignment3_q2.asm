li $t0, 1
li $t1, 101

loop:
j PrintItem
PrintItemEnd:
#increment
addi $t0, $t0, 1
bne $t0, $t1, loop

j Exit

PrintItem:
j PrintInt
PrintIntEnd:
#print new line
j PrintNewLine
PrintNewLineEnd:
j PrintItemEnd

PrintInt:
#print integer
li $v0, 1
move $a0, $t0
syscall

PrintNewLine:
li $v0, 11
li $a0, '\n'
syscall
j PrintNewLineEnd

Exit: