Algoritmo "Algoritmo ingredientes"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/08/2026
Var
// Seção de Declarações das variáveis 
farinha, acucar, ovos, leite, fermento:real

precofarinha, precoacucar, precoovos, precoleite, precofermento:real

subfarinha,subacucar,subovos,subleite,subfermento:real

custoingredientes,lucro, valorcliente:real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
precofarinha <- 5.00
precoacucar <- 4.00
precoovos <- 1.00
precoleite <- 4.50
precofermento <- 2.00

lucro <- 15.00

escreval("======= Cardapio de ingredientes para bolo =======")
escreval("1 - Farinha de trigo : R$ ", precofarinha:5:2," por unidade/medida")
escreval("2 - Açucar : R$ ", precoacucar:5:2," por unidade/medida")
escreval("3 - Ovos : R$ ", precoovos:5:2," por unidade/medida")
escreval("4 - Leite : R$ ", precoleite:5:2," por unidade/medida")
escreval("5 - Fermento : R$ ", precofermento:5:2," por unidade/medida")
escreval("")

escreval("Informe as quantidades desejadas")
escreva("Quantidade de farinha ")
leia(farinha)
escreva("Quantidade de açucar ")
leia(acucar)
escreva("Quantidade de ovos ")
leia(ovos)
escreva("Quantidade de leite ")
leia(leite)
escreva("Quantidade de Fermento ")
leia(fermento)

subfarinha <- farinha * precofarinha
subacucar <- acucar * precoacucar
subovos <- ovos * precoovos
subleite <- leite * precoleite
subfermento <- fermento * precofermento

custoingredientes  <- subfarinha + subacucar + subovos +subleite +subfermento

valorcliente <- custoingredientes + lucro
escreval("")
escreval("================== RESUMO DO PEDIDO ==================")
escreval("Ingrediente | Qtd Escolhida | Valor Calculado")
escreval("------------------------------------------------------")
escreval("Farinha     | ", farinha:5:1, "         | R$ ", subfarinha:6:2)
escreval("Açúcar      | ", acucar:5:1, "         | R$ ", subacucar:6:2)
escreval("Ovos        | ", ovos:5:1, "         | R$ ", subovos:6:2)
escreval("Leite       | ", leite:5:1, "         | R$ ", subleite:6:2)
escreval("Fermento    | ", fermento:5:1, "         | R$ ", subfermento:6:2)
escreval("------------------------------------------------------")
escreval("Custo Total dos Ingredientes : R$ ", custoingredientes:6:2)
escreval("Lucro do Vendedor            : R$ ", lucro:6:2)
escreval("------------------------------------------------------")
escreval("VALOR TOTAL A PAGAR PELO CLIENTE: R$ ", valorcliente:6:2)
escreval("======================================================")









Fimalgoritmo