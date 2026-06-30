Algoritmo "SE e OU"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/06/2026
Var
// Seção de Declarações das variáveis 
idade: inteiro
formacao: caractere
vip: logico

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite a idade")
leia(idade)

escreval("Digite a formação (TI/OUTRA): ")
leia(formacao)

escreval("É cliente VIP? (V/F): ")
leia(vip)

//Liberação se a idade >= 30 e Formação for TI OU VIP
se ((idade>=30) e (formacao="TI")) ou (vip=verdadeiro) entao
  escreval("APROVADO")
senao
  escreval("NÃO APROVADO")
fimse

Fimalgoritmo