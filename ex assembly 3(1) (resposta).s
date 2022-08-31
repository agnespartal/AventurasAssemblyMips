.data
	escreva00:.asciiz"\nDigite um numero inteiro\n"
	escreva01:.asciiz"\nO Fatorial eh:\n"
.text
main:
	li $v0, 4
	la $a0, escreva00
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 
	
	add $s0, $s0, 0 

	bgt $t0, 10 main
		blt $t0, 0 main
		beq $t0, 0 zero 
	j contador
	
	
contador:
	sub $s0, $t0, 1
	
fatorial:
	
	mul $t0, $t0, $s0 
	sub $s0, $s0, 1 
	beq $s0,0 fim
	j fatorial 

zero:
	li $v0, 4
	la $a0, escreva01
	syscall 
	
	li $v0, 1
	add $a0, $t0, 1
	syscall
	j fimfinal
fim: 
	li $v0, 4
	la $a0, escreva01
	syscall 
	
	li $v0, 1
	add $a0, $t0, 0
	syscall

fimfinal:
	