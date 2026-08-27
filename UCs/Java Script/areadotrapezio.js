const readline = require('readline');

const rl = readline.createInterface({
input: process.stdin,
output: process.stdout
});

rl.question('Digite a base maior (B): ', (baseMaior) => {
rl.question('Digite a base menor (b): ', (baseMenor) => {
rl.question('Digite a altura (h): ', (altura) => {
let area = ((Number(baseMaior) + Number(baseMenor)) * Number(altura)) / 2;

console.log('==== Resultado ====');
console.log(`Área do trapézio: ${area}`);

rl.close();
});
});
});