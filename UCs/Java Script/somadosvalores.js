// Configurando a entrada dos dados pelo usúario
const readline = require('readline');
/* O modulo readline é uma biblioteca nativa que permite a 
leitura de dados pelo usuario de forma nativa.
É frequentemente utilizado para criar prompts,
coletando respostas dos usuarios, ele conecta entrada e saida de dados.*/

// Criando a interface para o usúario
const rl = readline.createInterface({
   input:process.stdin, // Criando a interface humana 
   output:process.stdout //usado para a saida dos dados
});

rl.question('Digite o seu nome: ',(nome) => {
rl.question('Digite o primeiro valor: ',(valor1) => {
rl.question('Digite o segundo valor: ',(valor2) => {

  let soma = Number(valor1) + Number(valor2);
  
  console.log('==== Resultado ====');
  console.log(`Nome: ${nome}`);
  console.log(`Soma dos valores: ${soma}`);

  rl.close();
});
}); 
});