.text
main: addi $2, $0, 5
	syscall
	
	add $20, $0, $2 #n do usuário
	
	addi $8, $0, 11
	addi $9, $0, 13 #os multiplos
	addi $10, $0, 17
	
multiplo: 
	div $20, $8
	mfhi $11
	
	beq $11, $0, fimlaco
	
	div $20, $9
	mfhi $12
	
	beq $12, $0, fimlaco
	
	div $20, $10
	mfhi $13
	
	beq $13, $0, fimlaco
	
	addi $20, $20, 1
	
	j multiplo
	
fimlaco: add $4, $0, $20
	add $2, $0, 1
	syscall
	
	
	
