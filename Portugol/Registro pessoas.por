programa
{
	
	funcao inicio()
	{
		inteiro qtd_pessoas = 0, filhos
		real media_salario = 0.0, media_filhos = 0.0, percentual, maior = 0.0, menor = 0.0, salario, qtd_mq2 = 0.0
		cadeia opcao = "s"

		enquanto (opcao == "s"){
			escreva("Digite o seu salário: ")
			leia(salario)
			escreva("Digite quantos filhos você tem: ")
			leia(filhos)
			media_salario += salario
			media_filhos += filhos
			qtd_pessoas ++

			se (salario > maior){
				maior = salario
			}
			se (salario < menor ou menor == 0){
				menor = salario
			}
			se (filhos > 2){
				qtd_mq2 ++ 
			}

			escreva("Quer continuar registrando? 's' para sim, 'n' para não: ")
			leia(opcao)
		}

		media_salario = media_salario/qtd_pessoas
		media_filhos = media_filhos/qtd_pessoas
		percentual = (qtd_mq2*100)/qtd_pessoas

		escreva("\nA média de salário é de: ", media_salario)
		escreva("\nA média de filhos é de: ", media_filhos)
		escreva("\nO maior salário é de: ", maior)
		escreva("\nO menor salário é de: ", menor)
		escreva("\nO percentual de habitantes com mais de dois filhos é de ", percentual, "%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 528; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */