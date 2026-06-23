Algoritmo "calculadora"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 19/06/2026
Var
// Seção de Declarações das variáveis 
num1, num2, resSoma, resSub, resMulti, resDiv: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
//bloco da Entrada de Dados
escreval("Digite o primeiro numero")
leia(num1)
escreval("Digite o segundo numero")
leia(num2)

//Processamento dos Dados
 resSoma <- num1 + num2
 resSub  <- num1 -  num2
 resMulti <- num1* num2
 resDiv <- num1 / num2
 
 //Saida dos Dados
 escreval("A soma dos dois valores é: ",resSoma)
 escreval("A subtração dos dois valores é: ",resSub)
 escreval("A multiplicação dos dois valores é: ",resMulti)
 escreval("A divisão dos dois valores é: ",resDiv)
 
 
Fimalgoritmo