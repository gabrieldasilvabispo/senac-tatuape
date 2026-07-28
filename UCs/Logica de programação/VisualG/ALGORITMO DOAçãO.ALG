Algoritmo "Algoritmo doação"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 28/07/2026
Var
// Seção de Declarações das variáveis 
doacao,outrovalor: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Escolha o valor que desejar doar")
escreval("1 - R$10,00")
escreval("2 - R$ 25,00")
escreval("3 - R$ 50,00")
escreval("4 - R$ Outro valor")
escreval("5 - Cancelar doação")

leia(doacao)
escolha doacao

caso 1
doacao <- 10,00
escreval("O valor doado é:", doacao)


caso 2
doacao <- 25,00
escreval("O valor doado é:", doacao)


caso 3
doacao <- 50,00
escreval("O valor doado é:", doacao)


caso 4
escreval("Digite o valor doado")
leia(outrovalor)
escreval("O valor doado é:" ,outrovalor)

caso 5
escreval("Doação cancelada")
fimescolha





fimescolha




Fimalgoritmo