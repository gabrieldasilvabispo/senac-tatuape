/*1 - Lista com todas as profissões e a quantidade de estudantes em cada uma*/
SELECT profissao, COUNT(*) FROM estudantes
GROUP BY profissao;

/* 2 - Quantos estudantes homens e mulheres nasceram após 01/01/2000:*/
/* a) Mostrar todos os estudantes*/
SELECT * FROM estudantes
WHERE nascimento > '2000-01-01';

/* b) Agrupar por sexo e contar */
SELECT sexo, COUNT(*) FROM estudantes
WHERE nascimento > '2000-01-01'
GROUP BY sexo;

/* 3 - Lista agrupada pelas nacionalidades estrangeiras dos estudantes */
SELECT nacionalidade, COUNT(*) FROM estudantes
WHERE nacionalidade NOT IN ('Brasileira', 'Brasileiro')
GROUP BY nacionalidade;

/* 4 - Lista agrupada:*/
/* a) Média da altura de todos os estudantes*/
SELECT AVG(altura) AS media_altura
FROM estudantes;

/* b) Todas as pessoas que pesam mais de 80 kg */
SELECT * FROM estudantes
WHERE peso > 80;

/* c) Pessoas que pesam mais de 80 kg agrupadas pela altura */
SELECT altura, COUNT(*) FROM estudantes
WHERE peso > 80
GROUP BY altura;

/* d) Pessoas que pesam mais de 80 kg, agrupadas pela altura, somente acima da média de altura */
SELECT altura, COUNT(*) FROM estudantes
WHERE peso > 80
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM estudantes);

use cadastro;