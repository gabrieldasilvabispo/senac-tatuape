Algoritmo "Calculo de media para calcular numero de faltas com E"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 25/06/2026
Var
// Seção de Declarações das variáveis 
media,faltas, n1, n2, n3, n4: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Entre com a nota 1")
leia(n1)
escreval("Entre com a nota 2")
leia(n2)
escreval("Entre com a nota 3")
leia(n3)
escreval("Entre com a nota 4")
leia(n4)
escreval("Escreva o numero de faltas: ")
leia(faltas)

media <- (n1 + n2 + n3 + n4) /4
se (media >=5) e (media <=10) e (faltas<=4) e (faltas>=10)   entao
escreval("Aluno Aprovado")
senao
escreval("Aluno Reprovado")
fimse


Fimalgoritmo