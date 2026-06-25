Algoritmo "Calculo de media com duas condicional"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 25/06/2026
Var
// Seção de Declarações das variáveis 
media, n1, n2, n3, n4: real

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

media <- (n1 + n2 + n3 + n4) /4
se (media >=6) entao
escreval("Aluno Aprovado")
senao
   se (media >=5) entao
   escreval("Aluno em Recuperação")
   senao
   escreval("Aluno Reprovado")
   fimse
fimse

Fimalgoritmo