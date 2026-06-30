Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/06/2026
Var
// Seção de Declarações das variáveis 
salario: real
Vtempo: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Qual o salario: ")
leia(salario)
escreval("Qual o tempo de empresa: ")
leia(Vtempo)

se (salario<= 3000) ou (Vtempo>= 5) entao
escreval("Voce recebeu um aumento de 500 reais")
senao
escreval("Seu salario permanece o mesmo")
fimse

Fimalgoritmo