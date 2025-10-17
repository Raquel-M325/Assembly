.text
main: addi $2, $0, 5
	syscall #input 26
	
	addi $8, $0, 10 #10 é o ponto fixo da divisao
	
	div $2, $8
	
	mfhi $9 #resto 6
	mflo $10 # divisor 2
	
	div $10, $8 
	
	mflo $4 #divisor 0
		
	
	addi $2, $0, 1
	syscall
	
	add $4, $10, $0 #0 + 2
	  
	addi $2, $0, 1
	syscall
	
	add $4,$9, $0 #2 sendo substituido por 6, se não fosse pelo resgistrador $0, vai acabar somando, ao inves de substituir
	
	addi $2, $0, 1
	syscall
