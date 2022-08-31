.data
	escreva00: .asciiz"Digite a distancia inicial\n"
	escreva01: .asciiz"\nA distancia final eh:\n"
	escreva02: .asciiz"\nDigite a velocidade inicial\n"
	escreva03: .asciiz"\nDigite o tempo de deslocamento\n"
	escreva04: .asciiz"\nDigite a aceleracao\n"
	escreva05: .asciiz"\nSomente numero positivo\n"
.text

main:
	li $v0, 4 
	la $a0, escreva00
	syscall

	li $v0, 5	
	syscall
	add $t0, $v0, 0        #Distancia inicial
	syscall	

	blt $t0, 0 entaoDinicial
	j senaoDinicial

entaoDinicial:
	
	li $v0, 4
	la $a0, escreva05
	syscall 
	j main

senaoDinicial:
	
	li $v0, 4 
	la $a0, escreva02
	syscall

	li $v0, 5	
	syscall
	add $t1, $v0, 0 	#Velocidade inicial
	
	blt $t1, 0 entaoVelocidade
	j senaoVelocidade 

entaoVelocidade:
	
	li $v0, 4
	la $a0, escreva05
	syscall 
	j senaoDinicial

senaoVelocidade: 
		
	li $v0, 4 
	la $a0, escreva03
	syscall

	li $v0, 5	
	syscall
	add $t2, $v0, 0 	#Tempo 
	syscall	

	blt $t2, 0 entaoTempo
	j senaoTempo

entaoTempo: 

	li $v0, 4
	la $a0, escreva05
	syscall 
	j senaoVelocidade

senaoTempo: 

	li $v0, 4 
	la $a0, escreva04
	syscall

	li $v0, 5	
	syscall
	add $t3, $v0, 0 	#aceleracao
	syscall	

#t0 = S0 ; t1= v0 ; t2= t ; t3= a

	mul $t4, $t2, $t2 	#t elevado 2
	mul $t3, $t4, $t3	#at
	div $t4, $t3, 2		

	mul $t1, $t1, $t2	#v0 t
	
	add $t1, $t1, $t4	
	add $t5, $t1, $t0

	li $v0, 4
	la $a0, escreva01
	syscall
	
	li $v0, 1
	add $a0, $t5, 0 
	syscall 

	
	
	
	
	
	
	

	
 
	