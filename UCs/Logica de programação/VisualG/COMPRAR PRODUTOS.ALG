Algoritmo "Comprar produtos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/08/2026
Var
// Seção de Declarações das variáveis 
produtos: vetor[1..10] de caractere
precos: vetor[1..10] de real

compradosnome: vetor[1..3] de caractere
compradospreco: vetor[1..3] de real

nomedocomprador: caractere
opcao,i:inteiro
totalcompra:real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
produtos[1] <- "teclado"
precos[1] <- 155.00
produtos[2] <- "mouse"
precos[2] <- 80.00
produtos[3] <- "Monitor"
precos[3] <- 750.00
produtos[4] <- "Fone de ouvido"
precos[4] <- 120.00
produtos[5] <- "Webcam"
precos[5] <- 200.00
produtos[6] <- "Mousepad"
precos[6] <-  40.00
produtos[7] <-"Cabo HDMI"
precos[7] <-  30.00
produtos[8] <- "Notebook"
precos[9] <- 800.00
produtos[9] <- "Pendrivre"
precos[9] <- 50.00
produtos[10] <- "Cadeira Gamer"
precos[10] <- 850.00


escreval("Digite o nome do comprador: ")
leia(nomedocomprador)

escreval("")
para i de 1 ate 10 faca
 escreval(i, produtos[i]," | R$ ", precos[i]:6:2)
fimpara
escreval("")

totalcompra <- 0

para i de 1 ate 3 faca
escreval("Escolha o numero do ",i, "° produto (1 a 10): ")
leia(opcao)

enquanto (opcao < 1) ou (opcao > 10) faca
escreval("Opção invalida. Escolha um número de 1 a 10: ")
leia(opcao)
fimenquanto

compradosnome[i] <- produtos[opcao]
compradospreco[i] <- precos[opcao]
totalcompra <- totalcompra + precos[opcao]
fimpara

escreval("")
escreval("Comprador: ",nomedocomprador)
escreval("Produtos Comprados: ")
para i de 1 ate 3 faca
escreval(compradosnome[i], ": R$ ", compradospreco[i]:6:2)
fimpara
escreval("Total da compra: R$ ",totalcompra:8:2)







Fimalgoritmo