Algoritmo "Verificar o valor de compra"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 30/06/2026
Var
// Seção de Declarações das variáveis 
valorcompra,frete: real
regiao: logico

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor da compra: ")
leia (valorcompra)
escreval("Sua região é sudeste: V/F: ")
leia(regiao)


se (valorcompra >= 350) ou (regiao = verdadeiro)  entao
escreval("Frete Grátis")
senao
escreval("Frete incluso")
fimse

Fimalgoritmo