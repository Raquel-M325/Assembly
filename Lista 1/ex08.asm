.text
main: addi $2, $0, 5
	syscall #input primeiro hora
	
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall #input segundo minuto
	
	add $9, $0, $2 
	
	addi $10, $0, 60 #operacao fixo primeiro
	
	mul $11, $10, $9 #minuto * 60 segundos	
	
	addi $12, $0, 3600 #operacao fixo segundo
	
	mul $13, $12, $8 #hora * 3600 segundos 
	
	addi $2, $0, 5
	syscall #input terceiro segundo
	
	add $14, $2, $13
	add $4, $14, $11
	
	addi $2, $0, 1
	syscall #print inteiro
	
	addi $2, $0, 10 #encerra o programa
