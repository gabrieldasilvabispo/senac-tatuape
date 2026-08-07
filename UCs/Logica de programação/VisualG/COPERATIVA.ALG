Algoritmo "coperativa"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/08/2026
Var
   // Seção de Declarações das variáveis
   nome: caractere
   valor, reembolso: real
   resposta: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva ("Nome do cooperado: ")
   leia (nome)

   escreva("Valor do medicamento: ")
   leia (valor)

   escreva ("Apresentou nota fiscal e receita? (S?N): ")
   leia (resposta)

   se(resposta = "S") ou(resposta = "s") entao
      reembolso <- valor * 0.50
      escreval("cooperado: ",nome)
      escreval("Valor do reembolso: ", reembolso)
   senao
   escreval("cooperado: ",nome)
   escreval("Não tem direito ao reembolso.")
   fimse
Fimalgoritmo