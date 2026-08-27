const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Digite a base (b): ', (base) => {
    rl.question('Digite a altura (h): ', (altura) => {
        let area = Number(base) * Number(altura);

        console.log('==== Resultado ====');
        console.log(`Área do retângulo: ${area}`);

        rl.close();
    });
});