Algoritmo "frete"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 25/06/2026
// Se a compra for >= 300 - frete gratis
// Se a compra for >= 200 - frete de 15.50
// Se a compra for >= 150 - frete de 22.50
// Senão - frete de 37.50
Var
// Seção de Declarações das variáveis 
valordaCompra, valorFinal: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor da compra: ")
leia(valordaCompra)

se (valordaCompra >= 300) entao
escreval("frete Grátis")
  senao

  se (valordaCompra >= 200) entao
  valorFinal <- valordaCompra + 15.50
  escreval("Você pagará R$ 15.50 de frete, a sua compra é no valor de R$",valorFinal)
    senao

    se (valordaCompra >= 150) entao
    valorFinal <- valordaCompra + 22.50
    escreval("Você pagará R$ 22.50 de frete, a sua compra é no valor de R$",valorFinal)

      senao
      valorFinal <- valordaCompra + 37.50
      escreval("Você pagará R$ 37.50 de frete, a sua compra é no valor de R$",valorFinal)
    fimse
  fimse
fimse
Fimalgoritmo