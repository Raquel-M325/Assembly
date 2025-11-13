.data

.text   #NÃO ESTÁ FINALIZADO!!!

main: lui $20, 0x1001

	addi $8, $0, 10
	addi $9, $0, 2 #par para descobrir
	
laco: beq $8, $0, mostre
	
	addi $2, $0, 5
	syscall
	
	sw $2, 0($20)
	
	subi $8, $8, 1
	add $20, $20, 4
	
	add $10, $0, 0 #contagem de par
	
	j laco
	
mostre: lui $20, 0x1001

	
	j mostre
	
par:   addi $20, $20, 4
	add $13, $0, $20 

	div $13, $9
	mfhi $14
	
	beq $14, $0, defato
	
defato: add $10, $10, 1 #conta 1 de par de pares

	j 
	
		
