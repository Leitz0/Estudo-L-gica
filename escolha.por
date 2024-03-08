programa
{
	
	funcao inicio()
	{
		caracter opcao

		escreva("Informe uma opção de 1 a 5: ")
		leia(opcao)
		
		se (opcao == '1') 
			escreva("Você escolheu a opção 1")
		senao se (opcao == '2') 
			escreva("Você escolheu a opção 2")
	 	senao se (opcao == '3') {
			escreva("Você escolheu a opção 3")
		} senao se (opcao == '4') {
			escreva("Você escolheu a opção 4")
		} senao se (opcao == '5'){
			escreva("Você escolheu a opção 5")
		} senao
			escreva("Opção inválida")  
		
		escolha(opcao) // funciona com inteiro e com caracter
		{
			caso '1': escreva("Você escolheu a opção 1") pare
			caso '2': escreva("Você escolheu a opção 2") pare
			caso '3': escreva("Você escolheu a opção 3") pare
			caso '4': escreva("Você escolheu a opção 4") pare
			caso '5': escreva("Você escolheu a opção 5") pare
			caso contrario: escreva("Opção inválida")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 853; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */