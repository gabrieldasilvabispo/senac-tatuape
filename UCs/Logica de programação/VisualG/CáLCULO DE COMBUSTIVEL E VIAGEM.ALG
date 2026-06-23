Algoritmo "Cálculo de combustivel e viagem"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Calcular o quanto se pagará para abastecer um automovel
//               e quantos litros foram gastos por km rodado
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 23/06/2026
Var
// Seção de Declarações das variáveis 
valorCombustivel, litrosCombustivel, resultado:real                           -
kmPercorrido, kmLitro, consumo: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor do combustivel: ")
leia(valorCombustivel)
escreval("Digite a quantidade em litros abastecida: ")
leia(litrosCombustivel)
escreval("Digite quantos km/l o carro faz: ")
leia(kmLitro)
escreval("Informe quantos km foram percorridos: ")
leia(kmPercorrido)
escreval("")
resultado <- valorCombustivel * litrosCombustivel
consumo <- kmPercorrido / litrosCombustivel

escreval("O valor a ser pago será de R$ ",resultado)
escreval("O seu consumo será de : ",consumo,"KM/L")
Fimalgoritmo