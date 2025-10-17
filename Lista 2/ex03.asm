.text
main: addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9 #Se $8 < $9, entao $9 é maior, dando $10 == 1
	
	beq $10, $0, maior #10 == 1
	add $4, $0, $9
	
	sub $11, $9, $8  #fiz de uma forma para não dar negativo, invertendo os dois casos!
	j gaster
	
maior: add $4, $0, $8 #10 == 0,tornando $8 maior 
	sub $11, $8, $9
	
gaster: addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n' 
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall 
