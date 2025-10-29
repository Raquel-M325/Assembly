.text
main: addi $9, $0, 0 #i = 0
      addi $10, $0, 10 # 10 quantidade de vezes
      addi $21, $0, 0 #acumulador definido antes da soma

soma: beq $9, $10, fimlaco

      addi $2, $0, 5 #peça digitar
      syscall

      add $20, $0, $2
      syscall

      addi $2, $0, 5 #peça digitar
      syscall

      add $22, $0, $2
      syscall

      add $23, $20, $22 #soma de a e b que dá c
      add $21, $21, $23 #acumulação, de x = x + c, danod o total da soma
      addi $9, $9, 1 #i + 1

      j soma

fimlaco:

      add $4, $0, $21
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
      
      

      
