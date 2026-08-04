Algoritmo "Condicional REPITA ATÉ"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/08/2026
Var
// Seção de Declarações das variáveis 
x,z,i: inteiro // aqui declaramos nossas variaveis
                  // a variavel "i" será o nosso contador

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Algoritmo para repetir uma ação 5 vezes")
escreval("Para cada ação, digite um número inteiro")
escreval("")
escreval("Digite um valor inteiro")
i<-1
repita                   // "i" é o contador, onde definimos a quantidade de
                         // de vezes em que ele é repetido até que
                         // satisfaça a condição estabelecida
leia(x)
z<-x*3
escreval(z)
i<-i+1
ate(i>5)//o programa será executado até que o contador seja maior que 5

Fimalgoritmo