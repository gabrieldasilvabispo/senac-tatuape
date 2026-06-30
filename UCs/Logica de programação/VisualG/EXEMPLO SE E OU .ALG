Algoritmo "Exemplo SE e OU "
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Verificar se é Funcionario ou Visitante
// Autor(a)    : Gabriel Da Silva Bispo
// Data atual  : 30/06/2026
Var
// Seção de Declarações das variáveis 
cracha, visitante: logico


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Tem crachá? (V/F: ")
leia(cracha)
escreval("É visitante autorizado? (V/F): ")
leia(visitante)

se (cracha = verdadeiro) ou (visitante = verdadeiro) entao
 escreval("ACESSO PERMITIDO")
senao
 escreval("ACESSO NEGADO")
fimse

Fimalgoritmo