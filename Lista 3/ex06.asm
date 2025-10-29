.text
main: add $10, $0, 0 #i == 0
      add $21, $0, 0 #acumulador definitivo

soma: slt $12, $2, $0 #se o numero que o usuário digitou < 0, caso for, ele irá pular, tendo o resultado 1
      bne $12, $0, fimlaco

      add $2, $0, 5
      syscall

    
      
      j soma


fimlaco: add $2, $0, 10
          syscall
      
      
