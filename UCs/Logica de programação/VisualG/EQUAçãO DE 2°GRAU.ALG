Algoritmo "equação de 2°grau"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Vinicius 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gabriel da Silva Bispo
// Data atual  : 06/08/2026
Var
// Seção de Declarações das variáveis 
a,b,c, delta, x1,x2:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
//Entrada de Dados
escreval("Algoritimo para calcular a equação de 2°grau")
escreval("")
escreval("Digite o valor de a: ")
leia(a)
escreval("Digite o valor de b: ")
leia(b)
escreval("Digite o valor de c: ")
leia(c)

//Verificar se realmente é uma equação de 2° grau
 se (a=0) entao
 escreval("O valor de 'a' não pode ser Zero. Não é uma equação do 2° grau")
 senao
 //Calcular o valor de Delta
 delta <- (b*b)-(4*a*c)
 
 //Analisar o valor de Delta
 se (delta<0) entao
 escreval("Delta = ",delta:0:2," Não existem raizes reais")
 senao
  se (delta=0) entao
  x1 <- (-b/x2*a)
  escreval(" Delta = 0  -> Raiz única: x=",x1:0:2)
   senao
   x1 <- (-b + raizq (delta))/(2*a)
   x2 <- (-b - raizq (delta))/(2*a)
   escreval("Delta = ",delta:0:2)
   escreval("x1 = ",x1:0:2)
   escreval("x2 = ",x2:0:2)
   fimse
  fimse
 fimse
  



Fimalgoritmo