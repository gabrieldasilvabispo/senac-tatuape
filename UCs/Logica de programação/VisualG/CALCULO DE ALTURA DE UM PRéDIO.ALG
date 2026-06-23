Algoritmo "Calculo de altura de um Prédio"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius
// Descrição   : Este programa calculara  a altura de um predio com base na sua sombra
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 19/06/2026
Var
// Seção de Declarações das variáveis 
comprimentoSombra, alturaReferencia, alturaPredio: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
 escreval("Digite o comprimento da sombra do predio")
 leia(comprimentoSombra)
 escreval("Digite a altura de referencia")
 leia(alturaReferencia)
 
 alturaPredio <- alturaReferencia *(comprimentoSombra * comprimentoSombra)
 
 escreval("A altura do predio é: ",alturaPredio)

Fimalgoritmo