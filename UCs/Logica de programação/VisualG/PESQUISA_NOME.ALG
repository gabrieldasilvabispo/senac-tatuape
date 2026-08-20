Algoritmo "pesquisa_nome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/08/2026
Var
// Seção de Declarações das variáveis 
a:vetor[1..5] de caractere
nome, resp:caractere
aux, achei: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para aux de 1 ate 5 passo 1 faca
 escreval(aux, "Informe um nome: ")
 leia(a[aux])
fimpara


 repita
 achei<-0
 escreval("Informe um nome para ser pesquisado ")
 leia(nome)
  para aux de 1 ate 5 passo 1 faca
  se (a[aux]=nome) entao
    escreva("Nome encontrado ",a[aux]," na posição ", aux)
    achei<-1
    fimse
    fimpara
    
    se(achei<>1)entao
      escreva("Não foi encontrado nenhuma nome na pesquisa")
      fimse
      escreval("Deseja fazer outra pesquisa, S/N")
      leia(resp)
      ate resp<>"s"

    
    
Fimalgoritmo