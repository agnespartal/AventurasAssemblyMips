.data
	escreva00:.asciiz"\nDigite um numero inteiro ou digite um numero negativo para o resultado\n"
	escreva01:.asciiz"\nQuantidade total de numeros digitados:\n"
	escreva02:.asciiz"\n 0-33 foram:\n"
	escreva03:.asciiz"\n 34-66 foram:\n"
	escreva04:.asciiz"\n 67-100 foram:\n"
.text
	
main:
	li $t1, 33	
	li $t2, 66
	li $t3, 100

	li $v0, 4
	la $a0, escreva00
	syscall 

	li $v0, 5
	syscall
	add $t0, $v0, 0

	bgt $t0, 100 main
		blt $t0, 0 fimfinal 
	j separador

#t1=33 ; t2=66 ; t3 100
	
separador: 

	ble $t0, $t1 contador1
		ble $t0, $t2 contador2 
		j contador3

contador1:
	add $s0, $s0, 1
	j main

contador2:
	add $s1, $s1, 1
	j main

contador3:
	add $s2, $s2, 1
	j main

fimfinal:
	add $t4, $s0, $s1
	add $t4, $t4, $s2
	
	li $v0, 4 
	la $a0, escreva01
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall 
	
	li $v0, 4 
	la $a0, escreva02
	syscall
	
	li $v0, 1
	add $a0, $s0, 0
	syscall 

	li $v0, 4 
	la $a0, escreva03
	syscall
	
	li $v0, 1
	add $a0, $s1, 0
	syscall

	li $v0, 4 
	la $a0, escreva04
	syscall
	
	li $v0, 1
	add $a0, $s2, 0
	syscall