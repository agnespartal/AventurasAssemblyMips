.data
	escreva00:.asciiz"\nDigite um numero inteiro p/ a media,e digite 0 para o resultado\n"
	escreva01:.asciiz"\n A media eh:\n"
	escreva02:.asciiz"\n A quantidade de numeros positivos eh:\n"
	escreva03:.asciiz"\n A quantidade de numeros negativos eh:\n"
.text
	li $t1, 0
	li $t2, 0 
	li $t3, 0
	li $t4, 0
main:
	li $v0, 4
	la $a0, escreva00
	syscall 

	li $v0, 5
	syscall
	add $t0, $v0, 0
	syscall
	
	bgt $t0, 0 entaoPositivo
		beq $t0, 0 fimse
		j senaoNegativo

entaoPositivo:
		
	add $t2, $t0, $t2
	add $t1, $t1,1
	j main

senaoNegativo:

	add $t3, $t0, $t3
	add $t4, $t4, 1
	j main
	
fimse:

	add $t5, $t2, $t3
	add $t6, $t1, $t4
	div $t7, $t5, $t6	

	li $v0, 4 
	la $a0, escreva01
	syscall
	
	li $v0, 1
	add $a0, $t7, 0 
	syscall
	
	li $v0, 4
	la $a0, escreva02
	syscall
	
	li $v0, 1
	add $a0, $t1, 0 
	syscall
	
	li $v0, 4
	la $a0, escreva03
	syscall
	
	li $v0, 1
	add $a0, $t4, 0 
	syscall
	


	 

 