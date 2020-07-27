programa
{
	inclua biblioteca Util --> util 
		
	inteiro l=0, c=0,  vez= 0,cont,i=0,j=0
	cadeia matriz[9][9], usuario= "X"
	logico venceu = falso, vencedorPC = falso, vencedor =falso

	funcao Jogovelha(cadeia  x){
		//Funçã3o do Layout
			escreva("       1     2     3     4     5     6     7     8     9")
				escreva("\n    -------------------------------------------------------\n")
				cont = 0
		para(i = 0; i<9; i++){
			para(j = 0; j<9; j++){
				se(j==0){
					escreva(" ", cont++, "")
				}
				escreva("  |  ", matriz[i][j])	
			}
			escreva("  |")
			escreva("\n    -------------------------------------------------------\n")
		}	
	}
	
	

	funcao Ganhador()
	{
		para(l = 0; l<9; l++){
		para(c = 0; c<9; c++){
		//Verifica se Jogaor ganhou
				se(matriz[l][c] == "X"){
				se(c+4 <9){
						//Verifica se Jogaor ganhou pela linha
						se(matriz[l][c+1] == "X" e matriz[l][c+2] == "X" e matriz[l][c+3] == "X" e matriz[l][c+4] == "X"){
							vencedor = verdadeiro
						}
					}
				se(l+4 <9){
						//Verifica se Jogaor ganhou pela coluna
						se(matriz[l+1][c] == "X" e matriz[l+2][c] == "X" e matriz[l+3][c] == "X" e matriz[l+4][c] == "X"){
							vencedor = verdadeiro
						}
					}
				se(l+4 <9 e c+4 <9){
						//Verifica se Jogaor ganhou pela Diagonal
						se(matriz[l+1][c+1] == "X" e matriz[l+2][c+2] == "X" e matriz[l+3][c+3] == "X" e matriz[l+4][c+4] == "X"){
							vencedor = verdadeiro
						}
					}
				}
				se(matriz[l][c] == "O"){
					//Verifica se PC ganhou
					se(c+4 <9){
						//Verifica se PC ganhou pela linha
						se(matriz[l][c+1] == "O" e matriz[l][c+2] == "O" e matriz[l][c+3] == "O" e matriz[l][c+4] == "O"){
							vencedorPC  = verdadeiro
							vencedor = verdadeiro
						}
					}
				se(l+4 <9){
						//Verifica se PC ganhou pela coluna
						se(matriz[l+1][c] == "O" e matriz[l+2][c] == "O" e matriz[l+3][c] == "O" e matriz[l+4][c] == "O"){
							vencedorPC  = verdadeiro
							vencedor = verdadeiro
						}
					}
				se(l+4 <9 e c+4 <9){
						//Verifica se PC ganhou pela diagonal
						se(matriz[l+1][c+1] == "O" e matriz[l+2][c+2] == "O" e matriz[l+3][c+3] == "O" e matriz[l+4][c+4] == "O"){
							vencedorPC  = verdadeiro
							vencedor = verdadeiro
						}
					}
				}
			 }
		   }
		}
	
		funcao JogadaMaquina()
	{   inteiro x=0, y=0
	    logico jogou = falso
		//Função Jogada da Maquina
		
		enquanto(nao jogou){
			inteiro lin = util.sorteia(0, 8)
			inteiro col = util.sorteia(0, 8)
			inteiro linAtual
			inteiro colAtual
			
			se(usuario == "O"){
				para(l=0; l<9;l++){
					para(c=0;c<9;c++){
						//escreva("\nLinha: "+l+" Coluna: "+c)
						se(c<6 e matriz[l][c] =="X" e matriz[l][c] == matriz[l][c+1] e jogou == falso){
							se (matriz[l][c+2] !="X" e matriz[l][c+2] !="O" e vez < 82){
								matriz[l][c+2]="O"
								vez++
								usuario="X"
								jogou = verdadeiro
								pare
							}
						}
					}
				}
			}
						
			se(usuario == "O"){
				para(l=0; l<9;l++){
					para(c=0;c<9;c++){
						se(l < 6 e matriz[l][c] =="X" e matriz[l][c] == matriz [l+1][c]){
							se(matriz[l+2][c] !="X" e matriz[l+2][c] !="O" e vez < 82){
								matriz[l+2][c]="O"
								vez++	
								usuario="X"
								jogou = verdadeiro
								pare
							}
						}
					}
				}
			}
			
			se(usuario == "O"){
				para(l = 0; l<9;l++){
					para(c=0;c<9;c++){
						se(l > 1 e matriz[l][c] =="X" e matriz[l][c] == matriz [l-1][c]){
							se (matriz[l-2][c] !="X" e matriz[l-2][c] !="O" e vez < 82){
								matriz[l-2][c]="O"
								vez--
								usuario="X"
								jogou=verdadeiro
								pare
								}

						}
					}
				}
			}
					


			//Fazer sequencia na vertical voltando
			se(usuario == "O"){
				para(l=0; l<9;l++){
					para(c=0;c<9;c++){
						//escreva("\nLinha: "+l+" Coluna: "+c)
						se(l>5 e matriz[l][c] =="O" e matriz[l-1][c] !="X" e matriz[l-1][c] !="O" e jogou == falso){
								linAtual = lin
								colAtual = col
								matriz[l-1][c] = "O"	
								jogou = verdadeiro						
								pare
						}
					}
				}
			}
			
			//Fazer sequencia na vertical indo 
			se(usuario == "O"){
				para(l=0; l<9;l++){
					para(c=0;c<9;c++){
						//escreva("\nLinha: "+l+" Coluna: "+c)
						se(l<=5 e matriz[l][c] =="O" e matriz[l+1][c] !="X" e matriz[l+1][c] !="O" e jogou == falso){
								linAtual = lin
								colAtual = col
								matriz[l+1][c] = "O"	
								jogou = verdadeiro						
								pare
						}
					}
				}
			}

			//Fazer sequencia na horizontal voltando
			se(usuario == "O"){
				para(l=0; l<9;l++){
					para(c=0;c<9;c++){
						//escreva("\nLinha: "+l+" Coluna: "+c)
						se(c>=6 e matriz[l][c] =="O" e matriz[l][c-1] !="X" e matriz[l][c-1] !="O" e jogou == falso){
								linAtual = lin
								colAtual = col
								matriz[l][c-1] = "O"	
								jogou = verdadeiro						
								pare
						}
					}
				}
			}
			
			//Fazer sequencia na horizontal
			se(usuario == "O"){
				para(l=0; l<9;l++){
					para(c=0;c<9;c++){
						//escreva("\nLinha: "+l+" Coluna: "+c)
						se(c<6 e matriz[l][c] =="O" e matriz[l][c+1] !="X" e matriz[l][c+1] !="O" e jogou == falso){
								linAtual = lin
								colAtual = col
								matriz[l][c+1] = "O"	
								jogou = verdadeiro						
								pare
						}
					}
				}
			}
			se(usuario == "O"){
				para(l=0; l<9;l++){
					para(c=0;c<9;c++){
						//escreva("\nLinha: "+l+" Coluna: "+c)
						se(matriz[l][c] =="O" e matriz[l][c+1] =="O" e matriz[l][c+1] !="X" e jogou == falso){
								linAtual = lin
								colAtual = col
								matriz[linAtual][colAtual+1] = "O"
								jogou = verdadeiro	
								pare
							}
						}
					}
				}
			
			
		
			se(matriz[lin][col] != "X" e matriz[lin][col] != "O" e jogou == falso){	
				linAtual = lin
				colAtual = col
				matriz[linAtual][colAtual] = "O"
			jogou = verdadeiro
				pare
			}
		}
		

	}
	funcao inicio()
	{
		//Variaveis do Programa
		cadeia  Jogadas
		inteiro linhas, colunas, joga = 1
		logico VerificarLinhas, VerificarColunas, verificarJogada
		//Laco que cria o 1º lacout
		para(l = 0; l<9; l++){
			para(c = 0; c<9; c++){
				matriz[l][c] = " "
			}
		}

		//laco que epete jogo ate que alguem ganhe
		faca
          {
			//Mostrando Lacout
			Jogadas = "" + joga
			Jogovelha(Jogadas)
	
			//Jogada do Usuario
			faca{
				verificarJogada = falso
				//Jogada do Usuario escolha de Linha
			faca{
			VerificarLinhas = falso
			escreva("\nDigite a coordenada da sua jogada : \n")
			escreva("Linha: ")
			leia(linhas)
						
			se(linhas > 0  e linhas < 10){
			VerificarLinhas = verdadeiro
						}
			}enquanto(VerificarLinhas == falso)
		
			
			faca{
			VerificarColunas = falso
			escreva("\nDigite a coordenada da sua jogada : \n")
		     escreva("Colunas: ")
			leia(colunas)
					
			se(colunas > 0  e colunas < 10){
			VerificarColunas = verdadeiro
						}
			}enquanto(VerificarColunas == falso)
		
				
			l = linhas - 1
			c = colunas - 1
			
			se(matriz[l][c] != "X" e matriz[l][c] != "O"){
					matriz[l][c] = "X"
					usuario = "O"
					verificarJogada = verdadeiro
					joga++
				}
			}enquanto(verificarJogada == falso)
			//Apaga a tela da rodada anterior
				//limpa()

		
			JogadaMaquina()

			//Chama funcao que verificar se houve um vencendor
				     Ganhador()
		    
		     }enquanto(vencedor == falso)
		
		     Jogadas = "\n******* FIM DE JOGO *******\n"
		     se(vencedor == verdadeiro e vencedorPC == falso){
				escreva("\n******* JOGADOR VENCEU! *******\n")
				
		     	}senao se(vencedorPC == verdadeiro e vencedor == verdadeiro){
		     		
					escreva("\n******* PC VENCEU! *******\n")
		     	}
		     Jogovelha(Jogadas)
		
	   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5010; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */