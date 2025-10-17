.text
main: addi $2, $0, 5
	syscall #primeiro input
	
	add $8, $0, $2 #reservei o primeiro
	
	addi $2, $0, 5
	syscall #segundo input
	
	add $9, $0, $2 #reservei o segundo input
	
	add $10, $8, $9 #soma
	
	addi $11, $0, 2 #adicionei o 2 para a divisao
	
	div $10, $11 #divisao, mas não está guardado com $4
	
	mflo $4 #aonde que foi guardado
	
	addi $2, $0, 1 
	syscall #print
