.data
	escreva00: .asciiz"Digite um valor para A: "
	escreva01: .asciiz"Digite um valor para B: "
	escreva02: .asciiz"Digite um valor para C: "
	escreva03: .asciiz"Soma de A e B menor que C"
.text
main:
	li $v0, 4
	la $a0, escreva00
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0		#A

	li $v0, 4
	la $a0, escreva01
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0		#B
	
	li $v0, 4
	la $a0, escreva02
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0		#C

	add $t3, $t0, $t1	#D

	blt $t3, $t2, entao
	j fimse
entao:
	li $v0, 4
	la $a0, escreva03
	syscall

fimse: 


