Algoritmo "multiplicar_matriz"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/08/2026
Var
// Seção de Declarações das variáveis 
valor:vetor[1..3,1..3] de inteiro
i,j:inteiro

Inicio
// Leitura - Entrada dos dados
para i de 1 ate 3 faca
  para j de 1 ate 3 faca

  escreval("Digite numeros inteiros: ")
  leia(valor[i,j])
  
  fimpara
fimpara

// Multiplicar por 2

para i de 1 ate 3 faca
  para j de 1 ate 3 faca
  
  valor[i,j] <- valor[i,j] * 2
  fimpara
fimpara

//Exibir o resultado

escreval("Matriz multiplicada")
para i de 1 ate 3 faca
  para j de 1 ate 3 faca
  
  escreval(valor[i,j]," ")
  fimpara
  escreval()
fimpara

Fimalgoritmo