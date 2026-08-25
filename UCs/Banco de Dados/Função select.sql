/*Aula 21/08/2026*/

use cadastro;

select * from cursos;

/* Não repete as cargas horarias*/
select distinct carga from cursos
order by carga;

select distinct nacionalidade from estudantes
order by nacionalidade;

/*O comando count serve para contar*/
select count(*) from cursos;

select * from cursos
where carga > 40
order by carga;


select count(*) from cursos
where carga > 40;


select count(nome) from cursos
where carga > 60;


select count(*) from estudantes
where nacionalidade > 'Brasileira';
 
select count(*) from estudantes
where nacionalidade > 'Brasileira';

select * from cursos
order by carga;


select max(carga) from cursos;

/*maximo de total de aulas*/
select max(totalaulas) from cursos
where ano = '2026';

/*Minimo de total de aulas*/
select min(totalaulas) from cursos
where ano = 2026;

select min(carga) from cursos;

/* Somatoria das cargas horarias de todos os cursos;*/
select sum(carga) from cursos;

select sum(carga) from cursos
where ano = 2027;

/*Media dos cursos*/
select avg(carga) from cursos;

select avg(carga) from cursos
where ano = 2028;

select * from estudantes;


/* */


/* Atividade 1- Uma lista com o nome de todas as mulheres brasileiras.*/

select * from estudantes
where sexo = 'f';

/*Atividade 2*/
SELECT * FROM estudantes 
WHERE nascimento BETWEEN '1998-01-01' AND '2000-12-31';

/*Atividade 3*/
SELECT nome FROM estudantes 
WHERE sexo = 'M' AND profissao = 'Empresário';

/*Atividade 4*/
SELECT * FROM estudantes
WHERE sexo = 'f' AND nacionalidade = 'Brasileira' AND nome LIKE 'a%';

/*Atividade 5*/
SELECT nome, nacionalidade FROM estudantes
WHERE sexo = 'M' AND nacionalidade <> 'Brasileiro' AND peso < 80;

/*Atividade 6*/
SELECT MAX(altura) FROM estudantes
WHERE sexo = 'M' AND nacionalidade = 'Brasileiro';

/*Atividade 7*/
SELECT AVG(peso) FROM estudantes;

/*Atividade 8*/
SELECT AVG(peso) FROM estudantes
WHERE sexo = 'F';

/*Atividade 9*/
SELECT MIN(peso) FROM estudantes
WHERE sexo = 'F' 
AND nacionalidade not like 'Brasileira' 
AND nascimento BETWEEN '1998-01-01' AND '2000-12-31';

/*Atividade 10*/
SELECT COUNT(*) FROM estudantes
WHERE sexo = 'F' AND altura > 1.60;

/*Atividade 11*/
SELECT MAX(peso) FROM estudantes 
WHERE sexo = 'M' AND nacionalidade not like 'Brasileiro';

/*Atividade 12*/
SELECT AVG(altura) FROM estudantes
WHERE sexo = 'F' AND nacionalidade = 'Brasileira';

/*Atividade 13*/
SELECT COUNT(*) FROM estudantes
WHERE nacionalidade = 'Brasileiro' AND profissao = 'Professor';

/*Atividade 14*/
SELECT MIN(carga) FROM cursos 
WHERE ano = 2025;

/*Atividade 15*/
SELECT SUM(carga) FROM cursos
WHERE ano = 2028;

