.data
	escreva00:.asciiz"\nDigite um numero inteiro\n"
	escreva01:.asciiz"\nDigite um numero inteiro diferente\n"
	escreva02:.asciiz"\nA sequencia descrecente eh:\n"
	escreva03:.asciiz"\n"
.text
main:
	li $v0, 4
	la $a0, escreva00
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, escreva01
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	li $v0, 4
	la $a0, escreva01
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0

	bgt $t0, $t1 entao1
	j entao2

entao1: 
	bgt $t0, $t2 entao4
	j fim3 			#ordem t2, t0, t1 

entao2: 
	bgt $t1, $t2 entao3
	j fim6			#ordem t2, t1, t0 

entao3:
	bgt $t0, $t2 fim4 	#ordem t1 , t0 , t2 
	j fim5			#ordem t1, t2, t0 

entao4: 
	bgt $t1, $t2 fim1 	# ordem t0 , t1 , t2 
	j fim2 			#ordem t0, t2, t1

fim1:
	li $v0, 4
	la $a0, escreva02
	syscall 
	
	li $v0, 1 
	add $a0, $t0, 0
	syscall
 
	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t1, 0
	syscall

	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t2, 0
	syscall
	j fimfinal

fim2: 
	li $v0, 4
	la $a0, escreva02
	syscall 
	
	li $v0, 1 
	add $a0, $t0, 0
	syscall
 
	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t2, 0
	syscall

	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t1, 0
	syscall
	j fimfinal

fim3: 
	li $v0, 4
	la $a0, escreva02
	syscall 
	
	li $v0, 1 
	add $a0, $t2, 0
	syscall
 
	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t0, 0
	syscall

	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t1, 0
	syscall
	j fimfinal

fim4: 
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
	add $a0, $t0, 0
	syscall

	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t2, 0
	syscall
	j fimfinal

fim5: 	
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
	add $a0, $t2, 0
	syscall

	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t0, 0
	syscall
	j fimfinal

fim6:
	li $v0, 4
	la $a0, escreva02
	syscall 
	
	li $v0, 1 
	add $a0, $t2, 0
	syscall
 
	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t1, 0
	syscall	

	li $v0, 4
	la $a0, escreva03
	syscall 
	
	li $v0, 1 
	add $a0, $t0, 0
	syscall

fimfinal:
