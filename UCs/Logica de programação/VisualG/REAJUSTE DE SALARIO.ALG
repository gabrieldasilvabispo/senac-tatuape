Algoritmo "Reajuste de salario"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/06/2026
Var
// Seção de Declarações das variáveis 
salario , reajuste:real
nomefuncionario:caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o nome do funcionario:")
leia(nomefuncionario)
escreval("Digite o valor do salario: ")
leia(salario)

se (salario < 2000) entao
reajuste <- salario + salario * (25/100)
escreval("O valor do salario reajustado sera de R$",reajuste)
senao
escreval("O funcionario, não direito a reajuste")
fimse


Fimalgoritmo