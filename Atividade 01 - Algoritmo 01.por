
/*1) Uma clínica tem necessidade de informar o IMC (Índice de Massa Corporal) dos seus pacientes.
Sabendo que o IMC se calcula da seguinte forma: divide-se o peso (em kg) pelo quadrado da altura (em metros), crie um programa que faça o cálculo do IMC de um dado paciente.

Informe o IMC do paciente.
Caso o IMC seja menor que 18,5, informe que a classificação é Baixo peso.
Caso o IMC seja maior que 18,5 e menor que 24,9, informe que a classificação é Peso saudável.
Caso o IMC seja maior ou igual a 25 e menor que 29,9, informe que a classificação é Sobrepeso.
Caso o IMC seja maior ou igual a 30, informe que a classificação é Obesidade.
/*
 * 
 */
programa
{
	inclua biblioteca Matematica --> mat
 
	funcao inicio()
	{
		//Variante
		real kg, alt
		cadeia nome
		real imc

		//Entrada e processamento
		escreva("Informe o nome do paciente:")
		leia(nome)
		limpa()
		escreva("Informe o peso do paciente:")
		leia(kg)
		limpa()
		escreva("Informe a altura do paciente:")
		leia(alt)
		limpa()

		imc = (kg /(alt * alt))

		//saída
		escreva("O paciente " + nome + " tem um imc de "+ mat.arredondar(imc,2) +".\n")

		se(imc<18.5){
			escreva("O pacianete se encontra a Baixo do Peso!")
		}senao se((imc>=18.5) e (imc<25)){
			escreva("O pacianete se encontra com Peso Saudável!")
		}senao se((imc>=25) e (imc<30)){
			escreva("O pacianete se encontra com Sobrepeso!")
		}senao {
			escreva("O pacianete se está Obeso!")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */