programa
{
	
	funcao inicio()
	{
		real mensalidade, valor_total, bonificacao
		cadeia nivel, tipo

		escreva("Digite o valor da mensalidade: ")
		leia(mensalidade)
		escreva("Digite o nível do curso.\nI - para educação Infantil\nII - para educação Básica\nIII - para ensino Médio\n")
		leia(nivel)
		escreva("Digite o tipo do aluno, que pode ser: F para funcionário ou D para dependente.\n")
		leia(tipo)

		se (tipo == "F"){
		bonificacao = mensalidade * 0.5
		} senao {
		bonificacao = mensalidade * 0.3
		}

		se (nivel == "I" ou nivel == "III"){
		bonificacao += mensalidade * 0.05
		}

		mensalidade = mensalidade - bonificacao
		valor_total = mensalidade * 12
		escreva("O valor total da mensalidade é de: ", valor_total)
		escreva("\nO valor da bonificação é de: ", bonificacao)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 791; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */