.text

main: addi $2, $0, 5
	syscall
	
	add $8, $0, $2 #ANO
	
	addi $9, $0, 4
	addi $10, $0, 100
	addi $11, $0, 400
	
	div $8, $9
	mfhi $8 #resto 0 ou 1, com divisor 4
	
	beq $8, $0, divisorde100 #Se $8 == $0, entao é bissexto
	
	addi $4, $0, 'N'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'ã'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'é'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'B'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'x'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	add $2, $0, 11
	syscall
	
	j gaster
	
divisorde100: div $8, $10
	mfhi $8  #resto 0 ou 1, com divisor 100
	
	beq $8, $0, divisorde400
	

	
divisorde400: div $8, $11
	mfhi $16
	
	beq $16, $0, bissexto #é divisor de todos, se for divisor, será bissexto
	
	addi $4, $0, 'N'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'ã'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'é'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 32
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'B'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'x'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	add $2, $0, 11
	syscall
	
	j gaster	
	
bissexto:	
	addi $4, $0, 'B'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'i'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 's'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'e'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'x'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 't'
	add $2, $0, 11
	syscall
	
	addi $4, $0, 'o'
	add $2, $0, 11
	syscall
	
	j gaster
	
gaster: addi $2, $0, 10
	syscall

