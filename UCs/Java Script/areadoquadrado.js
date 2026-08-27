const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Digite o valor do lado: ', (lado) => {
    let area = Number(lado) * Number(lado);

    console.log('==== Resultado ====');
    console.log(`Área do quadrado: ${area}`);

    rl.close();
});
