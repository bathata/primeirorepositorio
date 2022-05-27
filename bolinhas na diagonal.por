programa {
    inclua biblioteca Util --> u
	funcao inicio() {
	    const inteiro TAMANHO = 5
	    caracter matriz[TAMANHO][TAMANHO]
	    preenche(matriz)
	    exibe(matriz)
		
	}
	funcao preenche(caracter matriz[][]){
	    para(inteiro l = 0; l < u.numero_linhas(matriz); l++){
	        para(inteiro c = 0; c < u.numero_colunas(matriz); c++){
	            se(l == c){
	            matriz[l][c] = '*'
	        }senao{
	            matriz[l][c] = ' '
	        }
	    }
	}
}
funcao exibe(caracter matriz [][]){
    para(inteiro l= 0; l < u.numero_linhas(matriz); l++){
        para(inteiro c = 0; c < u.numero_colunas(matriz);c++){
            escreva("[", matriz[l][c],"]")
        }
        escreva("\n")
    }
}
}