.text
main: addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9 #Se $9 > $8; $10 == 1, senão $10 == 0
	
	beq $10, $0, maior #Se $10 != 0, se tornando $10 == 1
	add $4, $0, $9  #pego o que quero o maior para printar no final
	j gaster
	
maior: add $4, $0, $8 #Se $10 == 0, ou seja, $8 se torna maior 

gaster: addi $2, $0, 1
	syscall

	addi $2, $0, 10
	syscall
