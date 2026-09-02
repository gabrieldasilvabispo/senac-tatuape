/* Atividade 02/09/2026 */
use biblioteca;

truncate table livros;

select * from livros;

alter table livros
drop column autor;

create table autores (
id_autor int auto_increment primary key,
nome varchar (100) not null,
nacionalidade varchar (100),
data_nascimento date
) DEFAULT CHARSET=utf8;

select * from autores;

desc autores;
drop table autores;
truncate table autores;


insert into autores
(id_autor, nome, nacionalidade, data_nascimento)
values
(default,' Miguel de Cervantes',' Espanhol','1605-02-03' ),
(default,' Mauricio de Sousa','Português','1975-05-03'),
(default,'Gabriel García Márquez','Espanhol','1967-09-04'),
(default,'Clarice Lispector','Português','1977-03-09'),
(default,'Machado de Assis','Português','1899-04-07'),
(default,'Graciliano Ramos','Português','1938-04-08'),
(default,'Franz Kafka','Alemão','1915-02-03'),
(default,'Antoine de Saint-Exupéry','Francês','1943-02-06'),
(default,'José Saramago','Português','1995-03-07'),
(default,'Oscar Wilde','Inglês','1890-08-01');


alter table livros
add column id_autor int ;



ALTER TABLE livros 
ADD CONSTRAINT livros_autores 
FOREIGN KEY (id_autor) REFERENCES autores(id_autor);

alter table livros
add foreign key (id_autor)
references autores(id_autor);

select * from  livros;



insert into livros
(id_livros, titulo, categoria, paginas, preco, lingua, ano)
values
(default,'Dom Quixote','Romance de Cavalaria / Sátira',1200,'700',' Espanhol','1605' ),
(default,'turma da monica fabulas ilustradas','Infantil / Fábulas Clássicas',224,151,'Português', 2021),
(default,'Cem Anos de Solidão','Realismo Mágico / Romance Histórico',448,119,'Espanhol','1967'),
(default,'A hora da estrela: Edição comemorativa','Romance Psicológico / Ficção',88,44,'Português',1977),
(default,'Dom Casmurro','Realismo / Romance Psicológico',208 , 39,'Português',1899),
(default,'Vidas Secas',' Romance Regionalista / Modernismo',176 , 64,'Português',1938),
(default,'A metamorfose','Ficção Absurdista / Novela',112 , 37,'Alemão',1915),
(default,'O pequeno principe','Fábula / Literatura Infantojuvenil',96, 34,'Francês',1943),
(default,'Ensaio sobre a cegueira',' Ficção Alegórica / Distopia',312, 69,'Português',1995),
(default,'O Retrato de dorian gray','Romance Gótico / Ficção Filosófica',240, 42,'Inglês',1890);


truncate table livros;
select * from autores;
select * from livros;

ALTER TABLE livros 
ADD CONSTRAINT livros_autores 
FOREIGN KEY (id_autor) REFERENCES autores(id_autor);

UPDATE livros SET id_autor = 1 WHERE id_autor = 'Miguel de Cervantes';

select * from livros
inner join autores
on autores;


desc livros;

SELECT id_livros, titulo, id_autor FROM livros;




select autores.id_autor, livros.id_livros, autores.nome,livros.titulo from livros
inner join autores
on livros.id_livros = autores.id_autor;

alter table livros
drop column categoria;

create table categorias (
id_categoria int primary key not null auto_increment,
nome varchar (100) not null,
descricao varchar(100)
) DEFAULT CHARSET=utf8;

drop table categoria;
desc categorias;

insert into categorias
(id_categoria,nome,descricao)
values
(default,'Romance de Cavalaria / Sátira','Romantismo'),
(default,'Infantil / Fábulas Clássicas','Historia infatil'),
(default,'Realismo Mágico / Romance Histórico','Magia com romance'),
(default,'Romance Psicológico / Ficção','Ficção com romance'),
(default,'Realismo / Romance Psicológico','Romance real'),
(default,'Romance Regionalista / Modernismo','Romance moderno');

alter table livros
add column id_categoria int;

ALTER TABLE livros 
ADD CONSTRAINT fk_livros_categorias /* Proibi de excluir quem esta ligado, regra de integridade*/
FOREIGN KEY (id_categoria) /* Chave estrangeira */
REFERENCES categorias(id_categoria); /* Chave primaria*/

SELECT id_livros, titulo, id_autor,id_categoria FROM livros;

UPDATE livros SET id_categoria= 8 WHERE id_categoria = 'Romance';

select * from livros;