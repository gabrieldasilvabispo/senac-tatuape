Algoritmo "sorteio de numeros"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/08/2026
Var
// Seção de Declarações das variáveis 
numeros:vetor[1..30] de inteiro
i, chave, vezes: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
vezes <- 0

// Aqui vamos sortear 30 números de 1 até 15
para i de 1 ate 30 faca
 numeros[i] <- randI(15) + 1
fimpara

// Pedir ao usuario para informa a chave

escreva(" Digite um número a ser localizado: ")
leia(chave)

escreva()
escreva("O número ",chave," aparece nas seguintes posições: ")
escreva()

para i de 1 ate 30 faca
 se(numeros[i]=chave)entao
 vezes <-  vezes + 1
 escreval("[",numeros[i],"]", "posição => ",i)
 fimse
fimpara

escreva()
escreval("O numero",chave,"apareceu => ",vezes," vez(es)")
escreva()

Fimalgoritmo