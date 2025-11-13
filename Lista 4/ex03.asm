lui $20, 0x1001
	
	addi $8, $0, 8 #limite n
	
	
laco: beq $8, $0, mostre

	addi $2, $0, 5
	syscall
	
	sw $2, 0($20)
	
	subi $8, $8, 1 #subtraia at´é chegar em 0
	
	addi $20, $20, 4 #soma-se 4 bytes para pular o indice
	
	j laco
	
mostre:  lui $20, 0x1001

	addi $2, $0, 5 #posicao x
	syscall
	
	add $9, $0, $2
	
	addi $2, $0, 5 #posicao y
	syscall
	
	add $10, $0, $2
	
	sll $11, $9, 2 #bits em 2 para esquerda, x * 4 para localizar o endereço
	add $11, $11, $20 #junte com a memoria para encontrar
	lw $12, 0($11) 
	
	sll $11, $10, 2 #usei o mesmo registrador, por conta que foi usado e está vazio, então posso repetir, menos no final
	add $11, $11, $20
	lw $13, 0($11) #quero ver aquele indice especifico
	
	add $4, $12, $13 #soma
	addi $2, $0, 1
	syscall
	
gaster: addi $2, $0, 10
	syscall
	
	
	
	
	
	
	
	
	
	
	


    