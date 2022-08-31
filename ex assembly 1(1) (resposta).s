.data 
	escreva00: .asciiz"Digite o valor a pagar " 
	escreva01: .asciiz"Litros de gasolina: "

.text 
main: 
	li $v0, 4
	la $a0, escreva00
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 
	div $t1, $t0, 6 

	li $v0, 4
	la $a0, escreva01
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall 
	
