.data 
	MyArray: .space 20
	space: .asciiz " "
	huiche: .asciiz "\n"
	speak1: .asciiz "Before Sort : "
	speak2: .asciiz "After Sort : "
.text 
main:	#initial
	addi $s0, $zero, 3
	addi $s1, $zero, 4
	addi $s2, $zero, 10
	addi $s3, $zero, 5
	addi $s4, $zero, 3
	addi $t0, $zero, 0
	sw $s0, MyArray($t0)
	addi $t0, $zero, 4
	sw $s1, MyArray($t0)
	addi $t0, $zero, 8
	sw $s2, MyArray($t0)
	addi $t0, $zero, 12
	sw $s3, MyArray($t0)
	addi $t0, $zero, 16
	sw $s4, MyArray($t0)
	#initial end
	la $s5, MyArray   #first index $s5
printarray1:
	addi $t7, $zero, 0
	la $t0, 0($s5)
	li $v0, 4
	la $a0, speak1
	syscall
while1:
	beq $t7, 5, exit1
	lw $t8, 0($t0)
	li $v0, 1
	move $a0, $t8
	syscall
	li $v0, 4
	la $a0, space
	syscall
	addi $t7, $t7, 1
	addi $t0, $t0, 4
	j while1
exit1:
	li $v0, 4
	la $a0, huiche
	syscall
	li $v0, 30
       syscall
       li $v0, 1
       syscall
       li $v0, 4
	la $a0, huiche
	syscall
	la $t0, ($s5)       #i --> $t0
	la $t1, ($s5)	   #j --> $t1
	la $t5, 20($s5)     #20
	la $t6, 16($s5)     #16
	addi $t7, $zero, 0
	addi $t8, $zero, 0
	#####outside while

while_out:
	beq $t0, $t5, exit_out
	la $t1, ($s5)      #j = i
	#####inside while
while_in:
	sub $t7, $t0, $s5  #i pianyiliang
	add $t8, $t1, $t7
	beq $t8, $t6, exit_in
	lw $t3, 0($t1)    #array[j]
	lw $t4, 4($t1)	   #array[j + 1]
	slt $s7, $t3, $t4
	bne $s7, $zero, goon
	sw $t3, 4($t1)
	sw $t4, 0($t1)
goon:
	addi $t1, $t1, 4
	j while_in
exit_in:
       li $v0, 30
       syscall
       li $v0, 1
       syscall

       li $v0, 4
	la $a0, huiche
	syscall
update: 
	addi $t0, $t0, 4
	j while_out
exit_out:
printarray:
	addi $t7, $zero, 0
	la $t0, 0($s5)
	li $v0, 4
	la $a0, speak2
	syscall
while:
	beq $t7, 5, exit
	lw $t8, 0($t0)
	li $v0, 1
	move $a0, $t8
	syscall
	li $v0, 4
	la $a0, space
	syscall
	addi $t7, $t7, 1
	addi $t0, $t0, 4
	j while
exit:
	li $v0, 10
	syscall
	

	



	
	
