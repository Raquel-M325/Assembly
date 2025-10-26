.text
main:
	addi $2, $0, 5 #referencia
	syscall
	
	add $20, $0, $2 
	
	addi $2, $0, 5 #quantidade
	syscall
	
	add $21, $0, $2
	
	add $8, $0 $20
	add $9, $0, $21
	addi $10, $0, 0 # i==0
	
laco: 
	beq $10, $9, fimlaco

 	add $4, $0, $8
 	addi $2, $0, 1
 	syscall
 	
 	addi $4, $0, '\n'
 	addi $2, $0, 11
 	syscall0000
 	
 	add $8, $8, $20 #soma
 	
 	addi $10, $10, 1 #i + 1 ou i++
 	
 	j laco
 	
fimlaco: 
 	add $2, $0, 10
 	syscall
