Algoritmo "Algoritimo juros simples e compostos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 07/08/2026
Var
// Seção de Declarações das variáveis
c,i,t:real
jurossimples,montantesimples:real
juroscomposto,montantecomposto:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o capital inicial: R$ ")
leia(c)
escreva("Digite a taxa de juros anual/mensal em % (i): ")
leia(i)
escreva("Digite o tempo de aplicação (t): ")
leia(t)

// Converte a taxa percentual para decimal
i <-i / 100

// Juros Simples: j = c * i * t
jurossimples <- c * i * t
montantesimples <- c + jurossimples

// Juros Compostos: M = C * (1 + i) ^ t
montantecomposto <- c * ((1 + i) ^ t)
juroscomposto <- montantecomposto - c

escreval("")
escreval("--- Juros Simples ---")
escreval("juros: R$ ", jurossimples:8:2)
escreval("Montante total: R$ ", montantecomposto:8:2)





Fimalgoritmo