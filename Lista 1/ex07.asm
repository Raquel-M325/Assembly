.text
main: addi $2, $0, 5
	syscall #input 3219
	
	addi $8, $0, 10
	div $2, $8
	
	mfhi $9 #primeiro resto
	mflo $10 #primeiro cosciente/divisor
	
	div $10, $8
	
	mfhi $11 #segundo resto
	mflo $12 #segundo cosciente
	
	div $12, $8
	
	mfhi $13 #terceiro resto e último
	mflo $14 #terceiro cosciente e último
	
	add $4, $9, $0 #9
	
	addi $2, $0, 1 #primeiro print
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11 #é uma string
	syscall
	
	add $4, $11, $0 #1
	
	addi $2, $0, 1 #segundo print
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall 
	
	add $4, $13, $0 #2
	
	addi $2, $0, 1 #terceiro print
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $14, $0 #3
	
	addi $2, $0, 1 #quarto e último print
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
