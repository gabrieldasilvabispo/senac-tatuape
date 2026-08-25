/* aula 24/08/2026*/

use cadastro;

/* group = server para agrupar*/
select carga from cursos
group by carga;

select carga, count(*) from cursos
group by carga;


select carga, count(*) from cursos
group by carga
order by carga;

select totalaulas, count(*) from cursos
group by totalaulas
order by totalaulas;

select * from cursos
where carga = 32; 

select carga, count(*) from cursos
where totalaulas = 8
group by carga;

select ano, count(*) from cursos
group by ano 
order by ano;

/* having = quem tem a carga igual ou maior que 16*/
select carga, count(*) from cursos
group by carga
having count(carga) >= 16
order by carga;

select ano, count(*) from cursos
group by ano
having carga >= 30
order by ano;

select ano, count(*) from cursos
group by ano
having ano >= 2026
order by ano;

select ano, count(*) from cursos
where carga >= 40
group by ano
having ano >= 2026
order by ano;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2026
group by carga
having carga > (select avg(carga) from cursos);