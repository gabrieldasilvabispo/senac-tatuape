const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Digite a diagonal maior (D): ', (diagonalMaior) => {
rl.question('Digite a diagonal menor (d): ', (diagonalMenor) => {
let area = (Number(diagonalMaior) * Number(diagonalMenor)) / 2;

console.log('==== Resultado ====');
console.log(`Área do losango: ${area}`);

rl.close();
});
});

