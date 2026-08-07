Algoritmo "fatorial"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/08/2026
Var
// Seção de Declarações das variáveis 
num, i, fatorial:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
//Entrada dos dados
escreval("Digite um número inteiro positivo: ")
leia(num)

//Validação da entrada do valor digitado
se (num <= 0) entao
 escreval("Erro: não existe fatorial de número negativo.")
 senao
 fatorial <- 1
 
//Cálculo do fatorial
para i de 1 ate num faca
  fatorial <- fatorial * i
fimpara

//Saida do resultado
escreval("O fatorial de ",num,"      'é: ",fatorial)
fimse


Fimalgoritmo