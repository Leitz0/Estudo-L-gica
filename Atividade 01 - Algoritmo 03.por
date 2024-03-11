/*) Crie um algoritmo que solicite o dia, o mês e o ano e informe se a data é válida ou inválida.
Considere o mês de fevereiro com 28 dias.
*/
programa
{
	inclua biblioteca Calendario

	funcao inicio()
	{
		//Variável
		inteiro dia, mes, ano
		logico data_valida = verdadeiro

		escreva ("Informe o dia:" )
		leia(dia)
		escreva ("Informe o mes: ")
		leia(mes)
		escreva ("Informe o ano:" )
		leia(ano)

		
          //Calculo de o ano é bissesto
          se ((ano % 4 == 0) e (ano % 100 != 0) ou (ano % 400 == 0)){
            escreva("Ano Bissexto")
          }senao
            escreva("Ano normal")

		// Verificar os meses com 30 dias
    		se ((mes == 4) ou (mes == 6) ou (mes == 9) ou (mes == 11)){
        		se ((dia >= 1) e (dia <= 30)){
           	 data_valida = verdadeiro
        		}senao
           	 data_valida = falso
    		} senao se ((mes == 1) ou (mes == 3) ou (mes == 5) ou (mes == 7) ou (mes == 8) ou (mes == 10) ou (mes == 12)){
        		se ((dia >= 1) e (dia <= 31)){
           	 data_valida = verdadeiro
        		}senao
           	 data_valida = falso
		} senao se (mes ==2){
        		se ((dia >= 1) e (dia <= 28)){
           	 data_valida = verdadeiro
        		}senao
           	 data_valida = falso
		}
		 // Exibir resultado
    		se (data_valida){
       		 escreva("A data fornecida é válida.")
    		}senao
       		 escreva("A data fornecida é inválida.")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1201; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */