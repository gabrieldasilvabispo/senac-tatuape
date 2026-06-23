Algoritmo "Cálculo de combustivel"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Calcular o quanto se pagará para abastecer um combustivel
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 23/06/2026
Var
// Seção de Declarações das variáveis 
valorCombustivel, litrosCombustivel, resultado: reaL

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor do combustivel: ")
leia(valorCombustivel)
escreval("Digite a quantidade em litros abastecida: ")
leia(litrosCombustivel)
escreval("")
resultado <- valorCombustivel * litrosCombustivel
escreval("O valor a ser pago será de R$ ",resultado)

Fimalgoritmo