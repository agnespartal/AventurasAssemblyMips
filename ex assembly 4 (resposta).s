.data 
	escreva00: .asciiz"Digite um numero inteiro: " 
	escreva01: .asciiz"O dobro e: "
	escreva02: .asciiz"O triplo e: "
.text 
main: 
	li $v0, 4
	la $a0, escreva00
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, 0

	bge $t0, 0, entao
	j senao

entao: 	
	mul $t1, $t0, 2
	
	li $v0, 4
	la $a0, escreva01
	syscall
	
	li $v0, 1 
	add $a0, $t1, 0 
	syscall
	j fimse

senao:
	mul $t2, $t0, 3
	
	li $v0, 4
	la $a0, escreva02
	syscall
	
	li $v0, 1 
	add $a0, $t2, 0 
	syscall

fimse:
	
	