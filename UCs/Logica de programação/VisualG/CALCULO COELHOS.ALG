Algoritmo "Calculo coelhos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 30/07/2026
Var
// Seção de Declarações das variáveis 
nr_coelhos: inteiro
custo: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o numero de coelhos: ")
leia(nr_coelhos)

custo <- (nr_coelhos * 0.70) / 18 + 10

escreval("O custo de criação é: R$ ", custo)

Fimalgoritmo