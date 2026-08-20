Algoritmo "matriz _3x3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/08/2026
Var
// Seção de Declarações das variáveis 
nome: vetor[1..3,1..3] de caractere // Declarado a matriz 3x3
i, j: inteiro
// O laço externo (i) percorre as linhas
// O laço externo (j) percorre as colunas

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1 ate 3 faca
  para j de 1 ate 3 faca
    escreval("Digite o dado para a posição [",i,",",j,"]: ")
    leia(nome[i,j])
    fimpara
fimpara

escreval()
escreval("Matriz digitada:")

// Exibir os dados da matriz

para i de 1 ate 3 faca
  para j de 1 ate 3 faca
    escreval(nome[i,j]," ")
  fimpara
   escreval() // Quebra de linha
fimpara



Fimalgoritmo