Algoritmo "matriz_3x4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/08/2026
Var
// Seção de Declarações das variáveis 
cidades: vetor[1..3,1..4] de caractere
i,j: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1 ate 3 faca
 para j de 1 ate 4 faca
 escreva("Digite o nome da cidade [",i,",",j,"]: ")
leia(cidades[i,j])
 fimpara
fimpara

escreval("")
para i de 1 ate 3 faca
 para j de 1 ate 4 faca
 escreval(cidades[i,j])
 fimpara
fimpara



Fimalgoritmo