programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro opcao = 1, idade, sexo, samu, internacao, sequela, mulheres_internadas = 0, homens_m_internados = 0, soma_sequelas = 0, soma_m_sequelas = 0, m_velha = 0
		real qtd_pessoas = 0.0, media_p_sequelas, media_m_sequelas, soma_samu = 0.0, percentual_samu, qtd_pessoas_sequeladas = 0.0, qtd_mulheres_sequeladas = 0.0
		
		enquanto (opcao == 1){
			escreva("Informe a sua idade: ")
			leia(idade)
			escreva("Informe o seu sexo(1-fem/2-mas): ")
			leia(sexo)
			escreva("Informe se o SAMU foi acionado(1-sim/2-não): ")
			leia(samu)
			escreva("Informe se foi necessária internação(1-sim/2-não): ")
			leia(internacao)
			escreva("Informe se ficou com alguma sequela(1-sim/2-não): ")
			leia(sequela)
			
			se (sequela == 1){
				soma_sequelas += idade
				qtd_pessoas_sequeladas ++
			}
			se (samu == 1){
				soma_samu ++
			}
			
			
			se (sexo == 1){
				se (internacao == 1){
					mulheres_internadas ++
					se (idade > m_velha){
					m_velha = idade
				}
			}

				se (sequela == 1){
					soma_m_sequelas += idade
					qtd_mulheres_sequeladas ++
				}
				 
			} senao {
				se (internacao == 1 e idade < 25){
					homens_m_internados ++
				}
			}
			
			qtd_pessoas ++

			escreva("Deseja registrar mais uma pessoa?(1-sim/2-não): ")
			leia(opcao)
			
			limpa()
		}

		media_p_sequelas = Matematica.arredondar(soma_sequelas/qtd_pessoas_sequeladas, 2)
		media_m_sequelas = Matematica.arredondar(soma_m_sequelas/qtd_mulheres_sequeladas, 2)
		percentual_samu = Matematica.arredondar((soma_samu * 100)/qtd_pessoas, 2)

		escreva("A quantidade de mulheres que precisaram ser internadas é de: ", mulheres_internadas)
		escreva("\nA quantidade de homens com menos de 25 anos que precisaram ser internados é de: ", homens_m_internados)
		escreva("\nA média da idade das pessoas que ficaram com sequelas é de: ", media_p_sequelas)
		escreva("\nA média da idade das mulheres que ficaram com sequelas é de: ", media_m_sequelas)
		escreva("\nO percentual de pessoas que tiveram que acionar o SAMU é de: ", percentual_samu, "%")
		escreva("\nA mulher mais velha que precisou de internação tinha ", m_velha, " anos.")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1028; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */