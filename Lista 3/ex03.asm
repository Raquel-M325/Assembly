.text
main:
	addi $8, $0, 0 #valor inicial
	addi $9, $0, 0 #i == 0
	addi $10, $0, 11
	
	add $20, $0, $8
	add $21, $0, $9
	
laco: beq $9, $10, fimlaco
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall 
	
	addi $8, $8, 1
	addi $9, $9, 1 #i++ ou i + 1
	
	 j laco
	 
fimlaco: addi $2, $0, 10
	syscall 
	
