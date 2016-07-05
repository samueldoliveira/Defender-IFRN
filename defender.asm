#4
#4
#512
#256
#heap

main:	lui $9, 0x1004

	addi $11, $0, 256 #tamanho colunas
	addi $12, $0, 32 #tamanho linhas
	
red:	lui $9, 0x1004
	addi $9, $9, 20000 #inicio do redbird
	jal print_redbird
	
	addi $15, $15, 1 #valor da posicao 1 do bird
	
####################################################################
	#### Teclado
#####################################################################

LerTec:
                lw $16, 0xFFFF0000         # Checla tedclas
                blez $16, PulaTec          # Pula se nada for pressionado
                lw $14, 0xFFFF0004         # Guarda valor da tecla  em $14
                
ChecaBaixo:
                bne $14, 115, ChecaCima     # Testa se tecla pressionada foi 's'
              	beq $15, 1, PulaTec 	#se a seta estiver na posiçao 1, nao fazer nada
              	j       PulaTec 
 
ChecaCima:     beq $14, 100, posicao2 # Testa se tecla pressionada foi 'd'
 		j       PulaTec  
 		
posicao2: 	addi $15, $0, 2
 		beq $15, 2, pos2
 		j       PulaTec    
 
PulaTec:
                j LerTec
	
#####################################################################
	#FIM
#####################################################################		
fim:
	addi $2, $0, 10
	syscall
#####################################################################
	#Print Setas
#####################################################################	
		
	
pos2:
	
	addi $9, $9, 5120 #local onde começar a imprimir o blackbird
	
	
	lui $9, 0x1004
	addi $9, $9, 8000 #local onde começar a imprimir o redbird
	jal print_redbird
	
	addi $15, $0, 3
	
	
	


############## Passaro

print_redbird:

	add $30, $0, $31

#linha1: 
	addi $9, $9, 52 #começa na coluna 13

	#3 Pixels pretos	
	jal branco
	jal branco
	jal branco
	jal branco
	

#linha2:
	addi $9, $9, 500 #passa para a proxima linha
	
	#1 Pixel Preto	
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	

#linha3:
	addi $9, $9, 480 #passa para a proxima linha

	#4 Pixels Preto	
	jal branco
	jal branco
	jal branco
	jal branco
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal vinho
	jal vinho
	
	
	
#linha4:
	addi $9, $9, 468 #passa para a proxima linha

	#1 Pixel Preto	
	jal branco
	jal branco
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	
#linha5:
	addi $9, $9, 456 #passa para a proxima linha

	#1 Pixel Preto	
	jal amareloClaro
	jal amareloClaro
	jal vinho
	jal vinho
	jal vinho
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal cinzaClaro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	jal vermelho
	
	
#linha6:
	addi $9, $9, 452 #passa para a proxima linha

	#3 Pixels Pretos	
	jal amareloClaro
	jal amareloClaro
	jal cinzaClaro
	jal cinzaClaro
	jal branco
	jal azul
	jal azul
	jal azul
	jal azul
	jal azul
	jal branco
	jal cinzaClaro
	jal vermelho
	jal vermelho
	jal vermelho
	jal vermelho
	

#linha7:
	addi $9, $9, 448 #passa para a proxima linha

	#1 Pixel Preto
	
	jal amareloClaro
	jal amareloClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal cinzaClaro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	jal vermelho

#linha8:
	addi $9, $9, 456 #passa para a proxima linha

	#1 Pixel Preto
	jal branco
	jal branco
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal vermelho
	jal vermelho
	
	
#linha9:
	addi $9, $9, 460 #passa para a proxima linha

	#1 Pixel Preto
	jal branco
	jal branco
	jal branco
	jal branco
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	jal cinzaClaro
	
	
	
#linha10:
	addi $9, $9, 468 #passa para a proxima linha

	#1 Pixel Preto
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	
	
	
#linha11:
	addi $9, $9, 476 #passa para a proxima linha

	#1 Pixel Preto
	jal branco
	jal branco
	jal branco
	jal branco
	
print_alien:

	add $30, $0, $29

#linha1: 
	addi $9, $9, 300 #começa na coluna 13

	#3 Pixels pretos	
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	

#linha2:
	addi $9, $9, 484 #passa para a proxima linha
	
	#1 Pixel Preto	
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	

#linha3:
	addi $9, $9, 476 #passa para a proxima linha

	#4 Pixels Preto	
	jal verde
	jal verde
	jal verde
	jal branco
	jal verde
	jal verde
	jal branco
	jal verde
	jal verde
	jal verde
	
	
	
#linha4:
	addi $9, $9, 468 #passa para a proxima linha

	#1 Pixel Preto	
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	
#linha5:
	addi $9, $9, 464 #passa para a proxima linha

	#1 Pixel Preto	
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde

	
#linha6:
	addi $9, $9, 468 #passa para a proxima linha

	#3 Pixels Pretos	
	jal verde
	jal verde
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal branco
	jal verde
	jal verde
	

#linha7:
	addi $9, $9, 476 #passa para a proxima linha

	#1 Pixel Preto
	
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde

#linha8:
	addi $9, $9, 476 #passa para a proxima linha

	#1 Pixel Preto
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	jal verde
	
	
#linha9:
	addi $9, $9, 468 #passa para a proxima linha

	#1 Pixel Preto
	jal verde
	jal verde
	jal preto
	jal preto
	jal verde
	jal verde
	jal verde
	jal verde
	jal preto 
	jal preto
	jal verde
	jal verde
	
	
	
#linha10:
	addi $9, $9, 464 #passa para a proxima linha

	#1 Pixel Preto
	jal verde
	jal preto
	jal preto
	jal verde
	jal verde
	jal preto
	jal preto
	jal verde
	jal verde
	jal preto
	jal preto
	jal verde
	
	
	
#linha11:
	addi $9, $9, 464 #passa para a proxima linha

	#1 Pixel Preto
	jal preto
	jal preto
	jal preto
	jal verde
	jal preto
	jal preto
	jal preto
	jal preto
	jal verde
	jal preto
	jal preto
	jal preto
	
####################
### fim do passaro
	#jr $30
####################


####################################################################################################################
#### Alien
####################################################################################################################


	
####################
### fim do passaro
	jr $30
####################

#####################################################################
	#COR
#####################################################################

preto:
	addi $10, $0, 0x000000 #cor: preto
	sw $10, 0($9) #print cor 
	addi $9, $9, 4 #proximo pixel
	jr $31
	
vinho:
	#cinza claro
	addi $10, $0, 0xd2d3d5 #cor: vinho
	sw $10, 0($9) #print cor 
	addi $9, $9, 4 #proximo pixel
	jr $31
	
branco:
	#cinza escuro
	addi $10, $0, 0x6d6e72 #cor: branco
	sw $10, 0($9) #print cor 
	addi $9, $9, 4 #proximo pixel
	jr $31
	
amarelo:
	#cinza medio
	addi $10, $0, 0xa8a9ad #cor: amarelo
	sw $10, 0($9) #print cor 
	addi $9, $9, 4 #proximo pixel
	jr $31
	
laranja:
	#laranja para o foguete
	addi $10, $0, 0xff4500 #cor: laranja
	sw $10, 0($9) #print cor
	addi $9, $9, 4 #proximo pixel
	jr $31

vermelho:
	#vermelho para o foguete
	addi $10, $0, 0xff0000 #cor: vermelho
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31
	
cinzaClaro:
	#cinza clarinho
	addi $10, $0, 0xcccccc
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31

amareloClaro:
	addi $10, $0, 0xffff00
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31
	
azul:
	addi $10, $0, 0x00ccff
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31
	
verde:
	addi $10, $0, 0x556b2f
	sw $10, 0($9) #print cor
	addi $9, $9, 4
	jr $31
	
	
