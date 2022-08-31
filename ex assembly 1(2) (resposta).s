.data
	escreva00: .asciiz"Digite a quantidade de camisetas P: "
	escreva01: .asciiz"Digite a quantidade de camisetas M: "
	escreva02: .asciiz"Digite a quantidade de camisetas G: "
	escreva03: .asciiz"Total a pagar: "
.text
main:
	li $v0, 4
	la $a0, escreva00
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	mul $t1, $t0, 10  	#camiseta P

	li $v0, 4
	la $a0, escreva01
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	mul $t2, $t0, 12	#camiseta M
	
	li $v0, 4
	la $a0, escreva02
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	mul $t3, $t0, 15	#camiseta G
	
	add $t4, $t1, $t2
	
	add $t5, $t4, $t3
	
	li $v0, 4
	la $a0, escreva03
	syscall
	
	li $v0, 1 
	add $a0, $t5, 0
	syscall
	
	


