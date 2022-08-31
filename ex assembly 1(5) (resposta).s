.data 
	escreva00: .asciiz"Digite um numero inteiro: " 
	escreva01: .asciiz"O quadrado e: "
	escreva02: .asciiz"\n"
.text 
main: 
	li $v0, 4
	la $a0, escreva00
	syscall

	li $t1, 5 
loop:
	li $v0, 5
	syscall
	add $t0, $v0, 0

	mul $t2, $t0, $t0
	
	li $v0, 4
	la $a0, escreva01 
	syscall 

	li $v0, 1
	add $a0, $t2, 0
	syscall

	li $v0, 4
	la $a0, escreva02 
	syscall

	add $t1, $t1, -1 
	bgtz $t1, loop

	