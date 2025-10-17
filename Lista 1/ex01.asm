.text
main: addi $2, $0, 5
	syscall #input
	addi $9, $0, 2
	mul $4, $2, $9
	addi $2, $0, 1
	syscall #printar
