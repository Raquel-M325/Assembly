.text
main: addi $2, $0, 5
	syscall #input 384
	
	add $8, $0, $2
	
	addi $9, $0, 10 #fixo da divisão
	
	div $8, $9
	
	mflo $10 #consciente 38
	mfhi $11 #resto 4
	
	div $10, $9
	
	mflo $12 #consciente 3
	mfhi $13 #resto 8
	
	add $4, $0, $11
	
	addi $2, $0, 1
	syscall
	
	add $4, $0, $13
	
	addi $2, $0, 1
	syscall
	
	add $4, $0, $12
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
