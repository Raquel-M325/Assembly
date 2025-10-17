.text
main: addi $2, $0, 12
	syscall #input caractere
	
	add $8, $0, $2
	
	addi $9, $0, 32
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	sub $4, $8, $9
	
	addi $2, $0, 11
	syscall #print caractere
	
	addi $2, $0, 10
	syscall

