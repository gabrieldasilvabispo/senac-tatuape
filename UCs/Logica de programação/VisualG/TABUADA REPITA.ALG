Algoritmo "tabuada repita"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/08/2026
Var
// Seção de Declarações das variáveis 
numero, contagem:inteiro
                            // aqui declaramos nossas variaveis
                           // a variavel "contagem" será o nosso contador
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Mostrar a tabuada do número:")
//aqui escrevi "ESCREVA" sem o "L", quando escrevemos o comando escreva sem o
//L, ele não pula linha para digitar o valor.
leia(numero)

repita(numero)
escreval(numero,"x",contagem,"=",numero * contagem)
contagem<-contagem + 1

ate contagem >10

Fimalgoritmo