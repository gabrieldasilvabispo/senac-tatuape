const readline = require('readline');

const rl = readline.createInterface({
   input:process.stdin, // Criando a interface humana 
   output:process.stdout //usado para a saida dos dados
});

rl.question('Digite o primeiro valor', (valor1) => {
rl.question('Digite o segundo valor', (valor2) => {


    let soma = Number(valor1) + Number(valor2);
    let subtracao = Number(valor1) - Number(valor2);
    let multiplicacao = Number(valor1) * Number(valor2);
    let divisao = Number(valor1) / Number(valor2);

console.log('===== Resultado =====');
console.log(`Soma dos valores: ${soma}`);
console.log(`Subtração dos valores: ${subtracao}`);
console.log(`Multiplicação dos valorres: ${multiplicacao}`);
console.log(`Divisão dos valores: ${divisao}`);



rl.close();


});
});
