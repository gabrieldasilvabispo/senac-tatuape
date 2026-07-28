Algoritmo "calculadora basica com caso se"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/07/2026
Var
// Seção de Declarações das variáveis 
calculo:inteiro
valor1, valor2, resultado: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Calculadora")
escreval("")
escreval("Digite o primeiro valor: ")
leia(valor1)

escreval("Digite o segundo valor: ")
leia(valor2)


escreval("Escolha a operação matematica")
escreval("1 - Adição")
escreval("2 - Subtração")
escreval("3 - Multiplicação")
escreval("4 - Divisão")

leia(calculo)
escolha calculo

caso 1
resultado <- valor1 + valor2
escreval("A soma dos valores é:", resultado)


caso 2
resultado <- valor1 - valor2
escreval("A subtração dos valores é:", resultado)


caso 3
resultado <- valor1 * valor2
escreval("O valor da multiplicação é:", resultado)


caso 4
resultado <- valor1 / valor2
escreval("O valor da divisão é:" ,resultado)

fimescolha




Fimalgoritmo