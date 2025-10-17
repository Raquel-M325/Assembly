.text
main: addi $2, $0, 5
	syscall
	
	add $8, $0, $2 #primeiro inteiro
	
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2 #segundo inteiro
	
	addi $2, $0, 5
	syscall
	
	add $10, $0, $2 #terceiro inteiro
	
	addi $11, $0, 3
	addi $12, $0, 9  #pesos fixos
	addi $13, $0, 15
	
	add $6, $11, $12
	add $7, $6, $13 #soma dos pesos
	
	add $14, $8, $8 #uma forma de "multiplicar", se somando 3 vezes com primeiro inteiro
	add $15, $14, $8 #valor final 1 
	
	add $14, $9, $9
	add $16, $14, $9
	add $17, $16, $9
	add $18, $17, $9 #se somando em 9 vezes com segundo inteiro
	add $19, $18, $9
	add $20, $19, $9
	add $21, $20, $9
	
	add $22, $21, $9 #valor final 2
	
	add $14, $10, $10
	add $16, $14, $10
	add $17, $16, $10
	add $18, $17, $10 #se somando em 15 vezes com terceiro inteiro
	add $19, $18, $10
	add $20, $19, $10
	add $21, $20, $10
	add $23, $21, $10
	add $24, $23, $10
	add $25, $24, $10
	add $26, $25, $10
	add $27, $26, $10
	add $28, $27, $10
	
	add $29, $28, $10 #valor final 3
	
	add $30, $15, $22
	add $31, $30, $29 #soma de tudo
	
	div $31, $7
	
	mflo $4
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall

