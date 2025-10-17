.text
main: addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	slt $9, $0, $8 #Se $0 < $8, se for positivo, senão, será negativo!
	
	beq $9, $0, positivo  #Se $9 (que é o 0) != 1, é positivo
	addi $12, $0, 2
	
	mul $4, $8, $12
	j gaster
	
	
positivo: add $11, $0, $8
	mul $4, $11, $11
	
gaster: add $2, $0, 1
	syscall
	
	add $2, $0, 10
	syscall
