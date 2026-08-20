Algoritmo "matriz_2x2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/08/2026
Var
// Seção de Declarações das variáveis 
matriz_num: vetor[1..2, 1..2] de real
soma, media: real
i, j: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
soma <- 0

para i de 1 ate 2 faca
      para j de 1 ate 2 faca
         escreva("Digite o valor para [", i, ",", j, "]: ")
         leia(matriz_num[i, j])
         soma <- soma + matriz_num[i, j]
      fimpara
   fimpara

   // Cálculo da média (matriz 2x2 possui 4 elementos)
   media <- soma / 4

   // Exibição do resultado
   escreval("")
   escreval("Soma total dos elementos: ", soma)
   escreval("Media dos valores da matriz: ",media)

Fimalgoritmo