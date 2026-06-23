Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/06/2026
Var
// Seção de Declarações das variáveis 
dias, hospedes, diaria ,valorfinal,desconto: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor da hospedagem: ")
leia(diaria)
escreval("Digite a quantidade de hospedes: ")
leia(hospedes)
escreval("Digite a quantidade de dias de hospedagem: ")
leia(dias)

valorfinal <- diaria * hospedes * dias


escreval("O valor total da diaria é: ",valorfinal)

se (dias > 8) entao
desconto <-  (diaria * hospedes * dias) /15
escreval("O desconto sera de:",desconto)
senao
escreval("O valor total da diaria é: ",valorfinal)
fimse

Fimalgoritmo