Algoritmo "Calcular Salario conforme o nivel"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 25/06/2026
Var
// Seção de Declarações das variáveis 
horas,nivel, nivel1, nivel2, nivel3,salario:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o nivel")
leia(nivel)
escreval("Digite as horas trabalhas")
leia(horas)

se (nivel = 1) entao
salario <- horas * 12,00
escreval("O valor será: ",salario)

 senao
 se (nivel = 2 ) entao
 salario <- horas * 17,00
 escreval("O valor será:",salario)

   senao
   se (nivel = 3) entao
   salario <- horas * 25,00
   escreval("O valor será:",salario)
   fimse
  fimse
fimse


Fimalgoritmo