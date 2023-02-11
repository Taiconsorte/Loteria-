programa
{
	inclua biblioteca Matematica
	inclua biblioteca Util -->u
	
	inteiro dezenas, codigo, sorteios, min, max
     inteiro listaSorteados[50]
     real valorTotal
     
     
     
	funcao inicio()
	{
        loteria()
     
	   escreva("Qual código da aposta desejada?" , "\n", "\n")
        leia(codigo)
        se(codigo== 1){
        	escreva("         TABELA MEGA_SENA            ", "\n")
        	escreva("    Dezenas            Valor         ", "\n")
        	escreva("       6              R$4,50         ", "\n")
          escreva("       7              R$31,50        ", "\n")
          escreva("       8              R$126,00       ", "\n")
          escreva("       9              R$378,00       ", "\n")
          escreva("       10             R$945,00       ", "\n")
          escreva("       11             R$2.079,00     ", "\n")
          escreva("       12             R$4.158,00     ", "\n")
          escreva("       13             R$7.722,00     ", "\n")
          escreva("       14             R$13.513,50    ", "\n")
          escreva("       15             R$22.522,50    ", "\n")
          escreva("       16             R$36.036,00    ", "\n")
          escreva("       17             R$55.692,00    ", "\n")
          escreva("       18             R$83.538,00    ", "\n")
          escreva("       19             R$122.094,00   ", "\n")
          escreva("       20             R$174.420,00   ", "\n" , "\n")

        dezena()
          leia(dezenas)
           se(dezenas > 5 e dezenas < 21){
               sorteio()
                 leia(sorteios)
      min = 1
      max = 60
      base()

      real PRECOS[21] = {0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 4.50 , 31.50 , 126.00 , 378.00 , 945.00 , 2079.00 , 4158.00 , 7722.00 , 13513.00 , 22522.00 , 36036.00 , 55.69200 , 83538.00 , 122094.00 , 174420.00}
      valorTotal = sorteios * PRECOS[dezenas]
      valor()
       
           }senao{
           dezenaInvalida()
           }

        }
        

       se(codigo== 2){
       	escreva("         TABELA QUINA            ", "\n")
        	escreva("    Dezenas     Valor mínimo do bolão         ", "\n")
        	escreva("       5              R$10,00       ", "\n")
          escreva("       6              R$12,00       ", "\n")
          escreva("       7              R$42,00       ", "\n")
          escreva("       8              R$112,00      ", "\n")
          escreva("       9              R$252,00      ", "\n")
          escreva("       10             R$504,00      ", "\n")
          escreva("       11             R$924,00      ", "\n")
          escreva("       12             R$1.584,00    ", "\n")
          escreva("       13             R$2.574,00    ", "\n")
          escreva("       14             R$4.004,00    ", "\n")
          escreva("       15             R$6.006,00    ", "\n", "\n")

        dezena()
           leia(dezenas)
            se(dezenas > 4 e dezenas < 16){
            	 sorteio()
            	 leia(sorteios)
      min = 1
      max = 80
      base()

      real PRECOS[16] = {0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 10.0 , 12.00 , 42.00 , 112.00 , 252.00 , 504.00 , 924.00 , 1584.00 , 2574.00 , 4004.00 , 6006.00}
      valorTotal = sorteios * PRECOS[dezenas]
      valor()

            	 
            }senao{
            dezenaInvalida()
            }
       }

        se(codigo== 3){
        	escreva("         TABELA LOTOMANIA            ", "\n")
        	escreva("    Aposta Única       Valor         ", "\n")
        	escreva("     50 números       R$2,50         ", "\n", "\n")
         
        dezena()
           leia(dezenas)
            se(dezenas > 49 e dezenas < 51){
            	 sorteio()
            	   leia(sorteios)
      min = 1
      max = 100
      base()

      valorTotal = sorteios * 2.50
      valor()
            	   
            }senao{
            dezenaInvalida()
            }

        }

        se(codigo== 4){
        	escreva("         TABELA QUINA            ", "\n")
        	escreva("    Dezenas            Valor         ", "\n")
        	escreva("       5              R$4,50         ", "\n")
          escreva("       6              R$31,50        ", "\n")
          escreva("       7              R$126,00       ", "\n")
          escreva("       8              R$378,00       ", "\n")
          escreva("       9              R$945,00       ", "\n")
          escreva("       10             R$2.079,00     ", "\n")
        	
       dezena()
          leia(dezenas)
           se(dezenas > 4 e dezenas < 11){
           	sorteio()
           	  leia(sorteios)
      min = 1
      max = 25
      base()

      real PRECOS[11] = {0.0 , 0.0 , 0.0 , 0.0 , 0.0 , 4.50 , 31.50 , 126.00 , 378.00 , 945.00 , 2079.00 }
      valorTotal = sorteios * PRECOS[dezenas]
      valor()
           
           	  
           }senao{
           dezenaInvalida()	  
           }
           
       }

       se(codigo > 4 ou codigo < 1){
         escreva("Código invalido, ",codigo , " não esta dentro das opções. Recomece")}
                
        
 
        

	}
	
	funcao loteria(){
	
		escreva("LOTERIA              " , "\n")

		escreva(" Código   Especificação      " , "\n")

		escreva("   1        Mega-Sena        " , "\n")

		escreva("   2          Quina          " , "\n")

		escreva("   3        Lotomania        " , "\n")
		
		escreva("   4        Lotofácil        " , "\n" , "\n")

	   
		
	}
	funcao sorteiaDezenas(){
		inteiro sorteado 
		logico estaRepetido = falso

		para(inteiro i=0; i <dezenas; i++){

			estaRepetido = falso

			sorteado = sorteia(min, max)

			para(inteiro j= 0; j < dezenas; j++){

				se(listaSorteados[j] == sorteado){
					estaRepetido = verdadeiro
					pare
				}
			}
			se(nao estaRepetido){
			  listaSorteados[i] = sorteado
			}senao{
				i--
			}
		}
		
		

		escreva("\n")
	}
	funcao mostraSorteados(){

		ordenarLista()
       
		para(inteiro i=0; i < dezenas; i++){
			escreva(listaSorteados[i], " - ")
		}
	}
	funcao ordenarLista(){

		inteiro aux

		para(inteiro j=0; j < dezenas; j++){

			para(inteiro i=0; i < dezenas - 1; i++){
				se(listaSorteados[i] > listaSorteados [i+1]){
					aux = listaSorteados[i]
					listaSorteados[i] = listaSorteados[i+1]
					listaSorteados[i+1] = aux
            }
	    }
        }
	}
	funcao base(){
		
		para(inteiro a = 1; a <= sorteios; a++){
	     escreva("\n", "\n" , "Sorteio " , a)
        	sorteiaDezenas()
          ordenarLista()
          mostraSorteados()
		}
	}
	funcao dezena(){
        escreva("Quantas dezenas desejadas?", "\n")
	}
	funcao sorteio(){
	   escreva("Quantas apostas deseja fazer de ", dezenas ," números?", "\n")	
	}
	funcao dezenaInvalida(){
		
		escreva("Quantidade de dezenas invalida. Recomece " )
	}
	funcao valor(){

		escreva("\n", "\n" , "O valor total é de R$" , valorTotal )
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4615; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */