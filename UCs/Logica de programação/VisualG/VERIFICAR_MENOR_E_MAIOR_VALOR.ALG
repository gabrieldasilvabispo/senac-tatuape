Algoritmo "verificar_menor_e_maior_valor"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Algoritimo para verificar 10 valores digitados
//               e verificar qual o menor e o maior valor digitado
//
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 06/08/2026
Var
// Seção de Declarações das variáveis 
valores:vetor[1..10] de inteiro
i, maior, menor, posmaior, posmenor:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// Leitura dos valores do vetor
para i de 1 ate 10 faca
  escreval("Digite o ",i,"° número")
  leia(valores[i])
fimpara

// Inicializa maior e menor com primeiro elemento
maior <- valores[1]
menor <- valores[1]
posmaior <- 1
posmenor <- 1

//Percorre o vetor para encontrar o maior e menor valor
para i de 1 ate 10 faca
  se (valores[i] > maior) entao
  maior  <- valores[i]
  posmaior <- i
  fimse
  
  se (valores[i] < menor) entao
     menor <- valores[i]
     posmenor <- i
  fimse
fimpara


//Exibir os elementos digitados
escreval("Elementos do vetor: ")
 para i de 1 ate 10 faca
 escreval(valores[i],"")
 fimpara
 escreval("")
 
 //Exibir o menor e o maior valor e a sua posição
 escreval("Maior valor: ",maior," na posição ",posmaior)
 escreval("Menor valor: ",menor," na posição ",posmenor)
 
     
     
     

Fimalgoritmo