.text

main: addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	
	add $10, $0, $2
	
	#PESOS:
	addi $11, $0, 1
	addi $12, $0, 2
	addi $13, $0, 3
	
	#operação
	mul $9, $9, $12
	mul $10, $10, $13
	
	add $8, $11, $9
	add $8, $8, $10 #soma final das notas
	
	add $11, $11, $12
	add $11, $11, $13 #soma final dos´pesos
	
	div $8, $11
	
	mflo $14
	
	addi $15, $0, 60 #media
	
	slt $16, $14, $15 #Se $14 < $15, $16 == 1, REPROVADO
	beq $16, $0, aprovado
	bne $16, $0, reprovado
	
	
aprovado: addi $4, $0, 'A'
		addi $2, $0, 11
		syscall 
		j nota
		
	
reprovado: addi $4, $0, 'R'
		addi $2, $0, 11
		syscall
		j nota
nota: 
	addi $2, $0, 10
	syscall

