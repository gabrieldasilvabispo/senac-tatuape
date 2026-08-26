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
SELECT AVG(altura)
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


/* 5 - Nacinalidade dos estudantes e quantidades de alunos, ordenando da maior quantidade da maior para menor*/

select nacionalidade, count(*)
from estudantes
group by nacionalidade
order by count(*) desc;

/* 6 - Liste cada carga horária existente nos cursos e quantos cursos possuem aquela carga horária. Mostre apenas as cargas que aparecem em pelo menos 2 cursos.*/

select * from cursos;

select carga, count(*)
from cursos
group by carga
having count(*) >= 2;


/* 7 - Mostre cada ano e a média da carga horária dos cursos oferecidos naquele ano.*/

select ano, avg(carga)
from cursos
group by ano;

/* 8 - Mostre os anos em que foram oferecidos cursos e a quantidade de cursos de cada ano. Mostre somente os anos que possuem mais de 15 cursos. */

select ano, count(*)
from cursos
group by ano
having count(*) > 15;

/* 9 - Liste o nome e a carga dos cursos cuja carga horária é maior que a média de carga de todos os cursos. */

select nome, carga
from cursos
where (select avg(carga) from cursos);

/* 10 - Mostre cada ano e a soma do total de aulas dos cursos oferecidos naquele ano.*/

select ano, sum(totalaulas)
from cursos
group by ano;

/* 11 - Liste as profissões que possuem mais de um estudante cadastrado e mostre a quantidade de estudantes em cada profissão.*/

SELECT profissao, COUNT(*)
FROM estudantes
GROUP BY profissao
HAVING COUNT(*) > 1;

/* 12 - Mostre a média de altura dos homens e a média de altura das mulheres.*/ 

SELECT sexo, AVG(altura) 
FROM estudantes
GROUP BY sexo;

/* 13 - Liste o nome e o total de aulas dos cursos que possuem mais aulas do que a média de aulas de todos os cursos. */

SELECT nome, totalaulas
FROM cursos
WHERE totalaulas > (SELECT AVG(totalaulas) FROM cursos);

/* 14 - Liste os anos cuja média de carga horária dos cursos é maior que a média de carga horária de todos os cursos.*/

SELECT ano, AVG(carga)
FROM cursos
GROUP BY ano
HAVING AVG(carga) > (SELECT AVG(carga) FROM cursos);






