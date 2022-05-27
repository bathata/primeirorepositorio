programa {
	funcao inicio() {
		cadeia nome[4] = {"Amanda","Renato","Agatha","Juliano"}
		real notas[4][4] = {{10.0,10.0,9.0,10.0},
		                    {9.0,7.0,8.0,7.0},
		                    {9.0,10.0,9.0,10.0},
		                    {2.0,5.0,6.0,4.0}}
		real medias[4]
		media(notas, medias)
		inteiro aluno
		escreva("Digite o número do aluno: ")
		leia(aluno)
		limpa()
		cadeia apr
		se(aprovade(medias[aluno])){
		    apr = "APROVADE"
		}senao{
		    apr = "REPROVADE"
		}
		geraRelatorio(nome[aluno],
		notas[aluno][0], notas[aluno][1],
		notas[aluno][2], notas[aluno][3],
		medias[aluno],apr)
	}
	funcao logico aprovade(real nota){
	    se(nota >= 6){
	        retorne verdadeiro
	    }senao{
	        retorne falso
	    }
	}
	funcao media(real notas [][], real &medias[]){
	    para (inteiro l = 0; l < 4; l++){
	        real sum = 0.0
	            para(inteiro c = 0; c < 4; c++){
	                sum += notas[l][c]
	            }
	            medias[l] = sum/4
	    }
	}
	funcao escrevaLinha(logico forte){
	    se(forte){
	        escreva("====================\n")
	    }senao{
	        escreva("--------------------\n")
	    }
	}
	funcao geraRelatorio(cadeia nome, real b1, real b2, real b3, real b4, real avr, cadeia apr){
	    escrevaLinha(verdadeiro)
	    escreva(" Alune: ",nome,"\n")
	    escrevaLinha(falso)
	    escreva("  1B : ", b1,"\n")
	    escreva("  2B : ", b2,"\n")
	    escreva("  3B : ", b3,"\n")
	    escreva("  4B : ", b4,"\n")
	    escrevaLinha(falso)
	    escreva("  Média : ",avr, "\n")
	    escreva("   ",apr,"\n")
	    escrevaLinha(verdadeiro)
	}
}
