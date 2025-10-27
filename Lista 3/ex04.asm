.text
main: addi $2, $0, 5 #inicio
	syscall
	
	add $20, $0, $2
	
	addi $2, $0, 5 #fim
	syscall
	
	add $21, $0, $2
	addi $21, $21, 1
	
	add $8, $0, $20
	add $9, $0, $21
	addi $10, $0, 2 #dividir

laco: beq $20, $9, fimlaco #i == inicial n, se for i == fim n, irá parar!

	div $8, $10
	mfhi $12 #resto
	
	bne $12, $0, impar #se for diferente de 0, será impar, então irá somente somar
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall 
	
	addi $8, $8, 1 #soma
	
	addi $20, $20, 1 #i++ ou i + 1
	
	j laco
	
impar: addi $8, $8, 1 #soma
	
	addi $20, $20, 1 #i++ ou i + 1
	
	j laco
	
fimlaco: addi $2, $0, 10
	syscall
	
