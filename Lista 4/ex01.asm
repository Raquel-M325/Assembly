.data
.word 1 0 5 -2 -5 7
      #0 1 2  3  4 5  - indice
      #0 4 8  12 16 20 - bytes
.text
main:
	lui $20, 0x1001 #ponto inicial
	
	lw $8, 0($20) #bytes que utilizei para armazenar os vetores
	lw $9, 4($20)
	lw $10, 20($20)
	
	add $9, $9, $8 
	add $4, $9, $10 #soma de tudo, entre 1 + 0 + 7 == 8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $11, $0, 100 #coloque o novo valor primeiro
	sw $11, 16($20) #lembrando de sempre usar sw para GUARDAR, caso eu queira substituir o valor
	
	
	lw $4, 0($20)
	add $2, $0, 1 #um de cada linha do indice para mostrar
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	lw  $4, 4($20)
	add $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	lw $4, 8($20)
	add $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	lw $4, 12($20)
	add $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	lw $4, 16($20)
	add $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	lw $4, 20($20)
	add $2, $0, 1
	syscall
	
	
	addi $2, $0, 10
	syscall
	


	
	
		