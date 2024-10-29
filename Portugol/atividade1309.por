programa
{
	
funcao real juros(real valor){
		retorne valor + (valor * 0.1)
	}
	
	funcao inicio()
	{
		inteiro tipo_pagamento, qtd_parcelas, i
		real valor, total, valor_parcelas, i2, parcela_juros, valorsj, parcelatjuros
		
		escreva("digite o valor do produto: ")
		leia(valor)
		escreva("digite 0 para a vista e 1 para parcelado: ")
		leia(tipo_pagamento)

		se (tipo_pagamento == 0){
			total = valor - (valor * 0.2)
			escreva("o valor a ser pago é de: ", total)
		} senao {
			escreva("digite a quantidade de parcelas: ")
			leia(qtd_parcelas)
			se (qtd_parcelas > 6){
				i = qtd_parcelas - 6
				valor_parcelas = valor/qtd_parcelas
				i2 = (qtd_parcelas - i)*valor_parcelas
				parcela_juros = juros(valor_parcelas)
				parcelatjuros = parcela_juros* i
				total = parcelatjuros + i2
				valorsj = i2/6
				escreva("você terá que pagar ", qtd_parcelas, " parcelas. As seis primeiras terão o valor de R$", valorsj, " cada.\n")
				escreva("as seguintes terão um acréscimo de 10%, ficando por R$", parcela_juros, " cada.\n")
				escreva("o valor total é de R$", total)
			} senao {
				valor_parcelas = valor/qtd_parcelas
				escreva("você terá que pagar ", qtd_parcelas, " parcelas de R$", valor_parcelas, " cada.\n")
				escreva("o valor total é de R$", valor)
			}
			
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 100; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */