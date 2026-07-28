Algoritmo "Algoritmo da região onde mora"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 28/07/2026
Var
// Seção de Declarações das variáveis 
valorfinal, valorcompra: real
regiao: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
Escreval ("Digite o valor da compra")
leia (valorcompra)

escreval ("qual região você mora?")
escreval ("1- Sudeste")
escreval ("2- Sul")
escreval ("3- Centro-Oeste")
escreval ("4- Norte")
escreval ("5- Nordeste")

leia(regiao)
escolha (regiao)

caso 1
regiao <- 1
escreval ("O valor final da compra é", valorfinal)
escreval ("Essa região tem direito a frete grátis")

caso 2
valorfinal <- valorcompra + 10
regiao <- 2
escreval ("O valor final da compra é", valorcompra)
escreval ("O valor de frete para essa região é de R$10")
escreval ("Valor final com o frete: R$ ", valorfinal)

caso 3
valorfinal <- valorcompra + 25
regiao <- 3
escreval ("O valor final da compra é", valorcompra)
escreval ("O valor de frete para essa região é de R$25")
escreval ("Valor final com o frete: R$ ", valorfinal)

caso 4
valorfinal <- valorcompra + 50
regiao <- 4
escreval ("O valor final da compra é", valorcompra)
escreval ("O valor de frete para essa região é de R$50")
escreval ("Valor final com o frete: R$ ", valorfinal)

caso 5
valorfinal <- valorcompra + 40
regiao <- 5
escreval ("O valor final da compra é", valorcompra)
escreval ("O valor de frete para essa região é de R$40")
escreval ("Valor final com o frete: R$ ", valorfinal)

fimescolha














Fimalgoritmo