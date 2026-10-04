# [Setup]
li $t0, 5 #Value 1
li $t1, 6 #Value 2
li $t3, 268500992 #Address 1 
li $t4, 268501024 #Address 2
sw $t0, 0($t3) #Store the value in $t0 into the address in $t3
sw $t1, 0($t4) #Store the value in $t0 into the address in $t4
# Clear so we can make sure the value is from the memory
li $t0, 0
li $t1, 0
li $t3, 0
li $t4, 0


# [Start program]
# Purpose: Pull the two summands from memory, and produce a sum
# and save the sum to memor y

# 0. Load the two imm memory addresses into registers
li $t3, 268500992
li $t4, 268501024
li $t5, 268501056

# 1. Load the two summands from mem and place them into registers
lw $t0, 0($t3)
lw $t1, 0($t4)

# 2. Sum the registers together and place the sum in another register
add $t2, $t0, $t1 #$t2 is the destination

# 3. Store the sum into memory
sw $t2, 0($t5)
