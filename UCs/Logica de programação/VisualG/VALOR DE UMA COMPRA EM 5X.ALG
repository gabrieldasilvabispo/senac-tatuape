Algoritmo "valor de uma compra em 5x"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/08/2026
Var
// Seção de Declarações das variáveis 
valorcompra, valorparcela:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o valor total da compra: R$ ")
leia(valorcompra)

valorparcela <- valorcompra / 5

escreval("")
escreval("Valor total da compra: R$ ", valorcompra:8:2)
escreval("Valor de cada parcela (5x sem juros): R$ ", valorparcela:8:2)

Fimalgoritmo