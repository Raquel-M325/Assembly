.text
main: addi $2, $0, 5
	syscall #input 3755 segundos
	
	add $8, $0, $2
	addi $9, $0, 60
	
	div $8, $9
	
	mflo $10 #precisa dividir novamente, 62 minutos 
	mfhi $11 #35 segundos
	
	div $10, $9
	
	mflo $4 #1 hora
	
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	mfhi $12 #2 minutos
	add $4, $0, $12
	
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall

