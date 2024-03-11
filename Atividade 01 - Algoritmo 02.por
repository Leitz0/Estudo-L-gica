//*2) Uma contabilidade precisa calcular o Imposto de Renda dos funcionários de uma empresa.
/*Dada a tabela do Imposto de Renda abaixo, solicite o salário de um funcionário e calcule o valor do imposto de renda a pagar, tendo efetuado a dedução e informe para o contador o valor da base de cálculo, a alíquota aplicada, o valor deduzido e o imposto a pagar.

Obs.: A parcela a deduzir deve ser multiplicada pelo número de dependentes.

IR na fonte
--------------------------------------------------------------------------------------
Base de cálculo¹ (R$)		Alíquotas em %		Parcela a deduzir do IR (R$)
--------------------------------------------------------------------------------------
Até 2.112,00					0,00				0,00
De 2.112,01 até 2.826,65			7,50				158,40
De 2.826,66 até 3.751,05			15,00			370,40
De 3.751,06 até 4.664,68			22,50			651,73
Acima de 4.664,68				27,50			884,96

Exemplo:

Entrada:

Salário: R$ 3.500,00
Número de dependentes: 1

Processamento:

(3.500 * 0,15) - (370,40 *1) = 154,60

Saída:

Base de Cálculo: R$ 3.500,00
Alíquota IR: 15,00%
Parcela a deduzir: R$ 370,40
Imposto a pagar: R$ 154,60

Obs.: Caso o valor do imposto seja negativo, apresentar valor a pagar igual a zero.
Obs2.: O exercício acima é apenas para treinamento e não representa o cálculo do imposto oficial.
 */
programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		//Variéveis
		inteiro dependete
		real salario, aliquota, par_deduzir, Imp_pagar

		//Entrada e processamento
		escreva("Informe o salário do funcionário:")
		leia(salario)
		limpa()
		escreva("Informe quantos dependentes o funcionário tem:")
		leia(dependete)
		limpa()


		se (salario <= 2112.00){
			escreva("Base de Cálculo: R$ " + salario +".\nAlíquota IR: 0,00%\nParcela a deduzir: R$ 0,00 \nImposto a pagar: R$ 0,00.\n")
		}senao se ((salario>= 2112.01)e(salario<=2826.65)){
			Imp_pagar = ((salario*0.075)-(158.40*dependete))
			escreva("Base de Cálculo: R$ " + salario +".\nAlíquota IR: 7,50%\nParcela a deduzir: R$ 158,40\n")
				se (Imp_pagar <=0){
					escreva("Imposto a pagar: R$ 0,00.\n")
				}senao
					escreva("Imposto a pagar: R$ " + Imp_pagar +".\n")
		}senao se ((salario>= 2826.66)e(salario<=3751.05)){
			Imp_pagar = ((salario*0.15)-(370.40*dependete))
			escreva("Base de Cálculo: R$ " + salario +".\nAlíquota IR: 15,00%\nParcela a deduzir: R$ 370,40\n")
				se (Imp_pagar <=0){
					escreva("Imposto a pagar: R$ 0,00.\n")
				}senao
					escreva("Imposto a pagar: R$ " + Imp_pagar +".\n")
		}senao se ((salario>= 3751.06)e(salario<=4664.68)){
			Imp_pagar = ((salario*0.225)-(651.73*dependete))
			escreva("Base de Cálculo: R$ " + salario +".\nAlíquota IR: 22,50%\nParcela a deduzir: R$ 651,73\n")
				se (Imp_pagar <=0){
					escreva("Imposto a pagar: R$ 0,00.\n")
				}senao
					escreva("Imposto a pagar: R$ " + Imp_pagar +".\n")
		}senao { 
			Imp_pagar = ((salario*0.275)-(884.96*dependete))
			escreva("Base de Cálculo: R$ " + salario +".\nAlíquota IR: 27,50%\nParcela a deduzir: R$ 884,96\n")
				se (Imp_pagar <=0){
					escreva("Imposto a pagar: R$ 0,00.\n")
				}senao
					escreva("Imposto a pagar: R$ " + mat.arredondar(Imp_pagar,2) +".\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2719; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */