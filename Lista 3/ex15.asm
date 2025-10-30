.text
main:
	add $2, $0, 5
	syscall
	
	add $20, $0, $2 #n de linhas
	addi $21, $0, 1 #i == 1
	
laco: 	
	beq $21, $20, fimlaco
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $20, $20, 1 #soma + 1
	
	add $4, $0, $20
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' ' #espaço para aumentar a coluna
	addi $2, $0, 11
	syscall
	
	addi $21, $21, 1 #i + 1
	
	j laco
	
fimlaco: addi $2, $0, 10
	syscall
	
	
