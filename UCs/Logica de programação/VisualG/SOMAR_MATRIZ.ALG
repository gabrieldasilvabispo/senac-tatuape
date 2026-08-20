Algoritmo "somar_matriz"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/08/2026
Var
// Seção de Declarações das variáveis 
valor: vetor[1..3,1..3] de inteiro
i,j, soma: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
soma<-0
// Leitura da matriz
para i de 1 ate 3 faca
  para j de 1 ate 3 faca
  
  escreval("Digite o valor [",i,",",j,"]: ")
  leia(valor[i,j])
  
  // Calcule dos valores da matriz
  soma <-soma + valor[i,j]
  
  fimpara
fimpara

  escreval()
  //Exibindo o resultado
  escreval("A soma dos valores da matriz = ",soma)
  


Fimalgoritmo