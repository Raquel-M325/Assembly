.text

main: addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2
	
	beq $8, $9, igual
	bne $8, $9, diferente
	
igual: add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '='
	add $2, $0, 11 
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j gaster
	
	
diferente:	slt $10, $8, $9 #Se $8 < $9, o $10 == 1, senão $10 == 0
		beq $10, $0, maior 
		add $4, $0, $9 
	
	addi $2, $0, 1 
	syscall
	
	addi $4, $0, '>'
	
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	j gaster
	
maior: add $4, $0, $9

	addi $2, $0, 1
	syscall
	
	addi $4, $0, '<'
	
	 add $2, $0, 11
	 syscall
	 
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
gaster:
	addi $2, $0, 10
	syscall

