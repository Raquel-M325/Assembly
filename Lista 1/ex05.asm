.text
main: addi $2, $0, 5
	syscall #input 356
	
	addi $8, $0, 10 #10 para divisao das casas
	
	div $2, $8 #primeira divisao
	
	mfhi $9 #resto da divisao 6
	
	mflo $10 #o divisor 35, falta dividir
	
	div $10, $8  #segunda divisao
	
	mfhi $11 #resto da divisao 5
	
	mflo $12 #divisor 3
	
	add $13, $9, $11 #soma
	add $4, $13, $12
	
	addi $2, $0, 1 #print
	syscall
