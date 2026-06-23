Algoritmo "media final com condicional"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Calcular a media final do aluno e verificar se
//               ele foi aprovado ou reprovado
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/06/2026
Var
// Seção de Declarações das variáveis 
media, nota1, nota2, nota3, nota4: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
//Entrada dos Dados
escreval("Algoritmo para calcular a média final")
escreval("")
escreval("Digite a nota do 1° bimestre")
leia(nota1)
escreval("Digite a nota do 2° bimestre")
leia(nota2)
escreval("Digite a nota do 3° bimestre")
leia(nota3)
escreval("Digite a nota do 4° bimestre")
leia(nota4)
//Processamento dos Dados
media <- (nota1 + nota2 + nota3 + nota4) /4

//Saida dos Dados
se (media >= 5) entao
escreval("Aluno Aprovado com a média final: ",media)
senao
escreval("Aluno reprovado com a média final: ",media)
fimse

Fimalgoritmo