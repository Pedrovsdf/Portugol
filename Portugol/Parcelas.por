programa
{
	funcao real juros(real valor){
		retorne valor + (valor * 0.1)
	}
	
	funcao inicio()
	{
		inteiro tipo, qtd_parcelas, aux
		real valor, total, valor_parcelas, aux2, valorp_juros, valor_semj, valorp_total_juros
		
		escreva("Digite o valor do produto: ")
		leia(valor)
		escreva("O pagamento será à vista ou parcelado?\nDigite 1 para 'à vista' e 2 para 'parcelado': ")
		leia(tipo)

		se (tipo == 1){
			total = valor - (valor * 0.2)
			escreva("O valor a ser pago é de: ", total)
		} senao {
			escreva("Digite a quantidade de parcelas: ")
			leia(qtd_parcelas)
			se (qtd_parcelas > 6){
				aux = qtd_parcelas - 6
				valor_parcelas = valor/qtd_parcelas
				aux2 = (qtd_parcelas - aux)*valor_parcelas
				valorp_juros = juros(valor_parcelas)
				valorp_total_juros = valorp_juros * aux
				total = valorp_total_juros + aux2
				valor_semj = aux2/6
				escreva("Você terá que pagar ", qtd_parcelas, " parcelas. As seis primeiras terão o valor de R$", valor_semj, " cada. \nAs seguintes terão um acréscimo de 10%, ficando por R$", valorp_juros, " cada. \nO valor total é de R$", total)
			} senao {
				valor_parcelas = valor/qtd_parcelas
				escreva("Você terá que pagar ", qtd_parcelas, " parcelas de R$", valor_parcelas, " cada. O valor total é de R$", valor)
			}
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 45; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */