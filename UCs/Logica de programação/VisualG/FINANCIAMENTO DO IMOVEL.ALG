Algoritmo "financiamento do imovel"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/08/2026
Var
// Seção de Declarações das variáveis 
p, taxaanual,i,pmt:real
n: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor do imovel a ser financiado : R$ ")
leia(p)
escreval("Digite a taxa de juros anual (%): ")
leia(taxaanual)
escreval("Digite o numero de meses do financiamento : R$ ")
leia(n)

// Converter taxa anual percentual para taxa mensal decimal
i <- (taxaanual / 12) / 100

// Formula: PMT = (p * i) / (1 - (1 * i) ^ -n)
pmt <- (p * i) / (1 - (1 + i) ^ (-n))

escreval("")
escreval("--- Resultado do financiamento ---")
escreval("Valor da parcela mensal: R$ ", pmt:8:2)
escreval("Valor total a ser pago: R$ ", (pmt * n):8:2)

Fimalgoritmo