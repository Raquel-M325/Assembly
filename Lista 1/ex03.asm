.text
main: addi $2,$0, 5 #input primeiro
	syscall
	
	add $8, $0, $2 #reservei o primeiro input
	
	addi $2, $0, 5 #input segundo
	syscall
	
	add $9,$0, $2 #reservei o segundo input
	mul $4, $8, $9
	
	addi $2, $0, 1
	syscall
	
