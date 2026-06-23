Algoritmo "valor diaria com condicional"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 23/06/2026
Var
// Seção de Declarações das variáveis 
dias, hospedes, diaria ,valorfinal,desconto, valorDesconto, totalDesconto: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor da hospedagem: ")
leia(diaria)
escreval("Digite a quantidade de hospedes: ")
leia(hospedes)
escreval("Digite a quantidade de dias de hospedagem: ")
leia(dias)
valorfinal <- diaria * hospedes * dias
desconto <- 15/100
valorDesconto <- valorfinal * desconto


se (dias > 8) entao
totalDesconto <- valorFinal - valorDesconto
escreval("A sua hospedagem com desconto sera de R$ ",totalDesconto)
escreval("O desconto é de R$",valorDesconto)
escreval("A sua hospedagem com desconto sera de R$ ", totalDesconto)
senao
escreval("O valor total da diaria é: ",valorfinal)

fimse
Fimalgoritmo