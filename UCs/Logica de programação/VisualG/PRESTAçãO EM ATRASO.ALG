Algoritmo "prestação em atraso"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 30/07/2026
Var
// Seção de Declarações das variáveis 
 prestacao,taxa,valor:real
 temp: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor da prestação: ")
leia(valor)
escreval("Digite a taxa de juros: ")
leia(taxa)
escreval("Digite o tempo das prestação em atraso: ")
leia(temp)



prestacao <- valor + (valor * (taxa/100) * temp)

escreval("O valor da prestação com atraso é:", prestacao)

Fimalgoritmo