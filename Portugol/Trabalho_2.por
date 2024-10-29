programa
{
	
	funcao inicio()
	{
		inteiro opcao = 1, idade, tipo, plano, pagou = 0, desconto = 0
		real valor
		cadeia nome
		
		enquanto (opcao == 1){
			escreva("Informe o nome: ")
			leia(nome)
			escreva("Informe a idade: ")
			leia(idade)
			escreva("Informe o tipo de tratamento(1-Limpeza, 2-Extração, 3-Obturação, 4-Canal): ")
			leia(tipo)
			escreva("Informe se tem plano odontológico(1-sim/0-não): ")
			leia(plano)

			se (tipo == 1){
				valor = 270.0
				se (idade < 15 ou idade > 65){
					valor += 40
					pagou = 1
				}
				se (plano == 1){
					valor = valor - (valor*0.35)
					desconto = 1
				}
			} senao se (tipo == 2){
				valor = 90.0
				se (idade < 15 ou idade > 65){
					valor += 40 
					pagou = 1
				}
				se (plano == 1){
					valor = valor - (valor*0.35)
					desconto = 1
				}
			} senao se (tipo == 3){
				valor = 110.0
				se (idade < 15 ou idade > 65){
					valor += 40 
					pagou = 1
				}
				se (plano == 1){
					valor = valor - (valor*0.35)
					desconto = 1
				}
			} senao {
				valor = 520.0
				se (idade < 15 ou idade > 65){
					valor += 40 
					pagou = 1
				}
				se (plano == 1){
					valor = valor - (valor*0.35)
					desconto = 1
				}
			}

			limpa()
			
			escreva("Dentista Legal")
			escreva("\nNome do Paciente: ", nome)
			se (pagou == 1){
				escreva("\nPagou taxa extra devido a idade.")
				pagou = 0
			}
			se (desconto == 1){
				escreva("\nRecebeu o desconto do plano odontológico.")
				desconto = 0
			}
			escreva("\nValor final do tratamento: R$ ", valor)
			escreva("\nInformar dados de outro paciente (1-sim/0-não)?: ")
			leia(opcao)

			limpa()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1631; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */