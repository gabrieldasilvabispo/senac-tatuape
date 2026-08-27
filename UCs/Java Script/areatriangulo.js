const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Digite a base do triângulo: ', (base) => {
rl.question('Digite a altura do triângulo: ', (altura) => {
let area = (Number(base) * Number(altura)) / 2;

console.log('==== Resultado ====');
console.log(`Área do triângulo: ${area}`);

rl.close();
});
});

