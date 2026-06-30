Algoritmo "Verificar o horario do voo"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 30/06/2026
Var
// Seção de Declarações das variáveis 
horario, desconto, valorvoo:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual o horario do voo: ")
leia(horario)
escreval("Qual é o valor do voo: ")
leia(valorvoo)

desconto <- valorvoo - valorvoo * (25/100)

se (horario > 0) e (horario < 5) entao
escreval("Um desconto de 25% sera aplicado",desconto)
senao
escreval("Nenhum desconto será aplicado")
fimse

Fimalgoritmo