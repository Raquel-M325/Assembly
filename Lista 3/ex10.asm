.text
main: addi $2, $0, 5
	syscall
	
	add $20, $0, $2
	
	addi $2, $0, 5
	syscall
	
	add $21, $0, $2
	
mdc: beq $21, $0, fimlaco #se o b que é o resto for 0, acaba

	div $20, $21
	mfhi $11 #resto
	
	add $20, $0, $21 #a == b
	add $21, $0, $11 #b == resto
	
	j mdc
	
fimlaco: 
	add $4, $0, $20 #o penultimo divisor que foi $20, já que a se tornou b
	addi $2, $0, 1
	syscall

	addi $2, $0, 10
	syscall
	
	
	
