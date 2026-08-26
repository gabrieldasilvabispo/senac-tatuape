/* Aula - 26/08/2026 */
/* Continuação das atividades e explicação de relacionamento */

alter table estudantes
add column cursoprefere int;

desc estudantes;
desc cursos;

/* Adicionando a chave estrangeira */
alter table estudantes
add foreign key (cursoprefere)
references cursos(idcurso);

update estudantes set cursoprefere = 1
where id = 20;

select * from estudantes;
