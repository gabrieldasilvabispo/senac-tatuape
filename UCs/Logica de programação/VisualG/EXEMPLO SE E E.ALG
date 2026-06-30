Algoritmo "Exemplo Se e E"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 30/06/2026
Var
// Seção de Declarações das variáveis 
documento: logico
peso: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Possui manifesto de carga? (Y/F): ")
leia(documento)

escreval("Peso da carga(kg): ")
leia(peso)

se (documento = verdadeiro) e (peso <= 15000) entao
escreval("STATUS: LIBERADO")
senao
escreval("STATUS: RETIDO")
fimse

Fimalgoritmo