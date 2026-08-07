Algoritmo "desconto de veiculos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/08/2026
Var
// Seção de Declarações das variáveis 
valorveiculo, valordesconto, valorfinal: real
ano: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor do veiculo: R$ ")
leia(valorveiculo)
escreval("Digite o ano de fabricação do veiculo: ")
leia(ano)
se (ano <= 2000) entao
valordesconto <- valorveiculo * 0.20
senao
 se (ano <= 2010) entao
 valordesconto <- valorveiculo * 0.15
 senao
  se (ano <= 2020) entao
  valordesconto <- valorveiculo  * 0.10
  senao
   se (ano <= 2025) entao
  valordesconto <- valorveiculo  * 0.05
  senao
   valordesconto <- 0
   fimse
  fimse
 fimse
fimse
 valorfinal <- valorveiculo - valordesconto
 escreval("")
 escreval("--- Resumo do desconto ---")
 escreval("Valor original: R$ ", valorveiculo:8:2)
 escreval("Valor do desconto: R$ ", valordesconto:8:2)
 escreval("Valor final a pagar: R$ ", valorfinal:8:2)




Fimalgoritmo