/*ATIVIDADE 1*/
use biblioteca;

create table autores(
id_autor int not null auto_increment,
nome varchar(100) not null,
nacionalidade varchar(50),
data_nascimento date,
primary key (id_autor)
) default charset = utf8;


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
(default,'Oscar Wilde','Inglês','1890-08-01'),
(default,'Fiódor Dostoiévski','Russo',1866-05-02),
(default,'Aluísio Azevedo','Português',1890-03-09),
(default,'Jorge Amado','Português',1937-04-07),
(default,'George Orwell',' Inglês',1945-08-02),
(default,'José Mauro de Vasconcelos','Português',1968-06-09),
(default, 'Aldous Huxley','Português', 1932-03-05),
(default,'Ray Bradbury', 'Português', 1953-05-01),
(default, 'Paulo Coelho', 'Português', 1988-06-08),
(default, 'Jane Austen', 'Português', 1813-02-08),
(default, 'Yuval Noah Harari','Português', 2011-03-07);

select * from autores;

/*ATIVIDADE 2*/
alter table livros
add column id_autor int;

alter table livros
add foreign key (id_autor)
references autores(id_autor);

select * from livros;

INSERT INTO livros
(id_livros, titulo, editora, categoria, paginas, preco, estoque, lingua, ano, disponivel, id_autor)
values
(default, 'O Mistério da Estrela', 'Editora Alfa', 'Ficção', 320, 49.90, 15, 'Português', 2023, default, 21),
(default, 'A Era da Inteligência', 'Tech Press', 'Tecnologia', 250, 89.90, 8, 'Inglês', 2025, default, 22),
(default, 'Cozinha Prática', 'Sabor e Arte', 'Culinária', 180, 35.00, 0, 'Português', 2021, default, 23);

/*ATIVIDADE 3*/
create table categoria(
id_categoria int not null auto_increment,
nome varchar(100) not null,
descricao text,
primary key (id_categoria)
) default charset = utf8;

insert into categoria
(id_categoria, nome, descricao)
values
(default, 'Romance', 'Livros de Romance'),
(default, 'Infantil', 'Livros de Infantil'),
(default, 'Romance Historico', 'Livro de Romance Historico'),
(default, 'Romance Psicologico', 'Livro de Romance Psicologico.'),
(default, 'Realismo', 'Livro de realismo.'),
(default, 'Ficção', 'Livro de ficção');

alter table livros
add column id_categoria int;

alter table livros
drop column categoria;


alter table livros
add constraint fk_livros_categorias
foreign key (id_categoria)
references categoria(id_categoria);

select * from categoria;

/*ATIVIADE 4*/
create table editora(
id_editora int not null auto_increment,
nome varchar(100) not null,
cidade varchar(100),
pais varchar(50),
primary key (id_editora)
) default charset = utf8;

desc editora;

alter table livros
drop column editora;

insert into editora
(id_editora, nome, cidade, pais)
values
(1, 'Editora Alfa', 'São Paulo', 'Brasil'),
(2, 'Editora Beta', 'Rio de Janeiro', 'Brasil'),
(3, 'Editora Gama', 'Lisboa', 'Portugal');


alter table livros
add column id_editora int;

alter table livros
add constraint fk_livros_editora
foreign key (id_editora)
references editora(id_editora);

select * from autores;
select * from categoria;
select * from editora;
select * from livros;


/*ATIVIDADE 5*/

/*1*/
select livros.titulo, autores.nome from livros
inner join autores
on livros.id_autor = autores.id_autor;

/*2*/
select livros.titulo, autores.nome, autores.nacionalidade from livros
inner join autores
on livros.id_autor = autores.id_autor;

/*3*/
select livros.titulo, categoria.nome from livros
inner join categoria
on livros.id_categoria = categoria.id_categoria;

/*4*/
/*select livros.titulo, livros.id_editora from livros;*/

select livros.titulo, editora.nome as editora from livros
inner join editora
on livros.id_editora = editora.id_editora;

/*5*/
select livros.titulo, autores.nome as autor, categoria.nome as categoria, editora.nome as editora
from livros
inner join autores
on livros.id_autor = autores.id_autor
inner join categoria
on livros.id_categoria = categoria.id_categoria
inner join editora
on livros.id_editora = editora.id_editora;

/*6*/
select livros.titulo, autores.nome as autores, editora.nome as editora, livros.preco from livros
inner join autores
on livros.id_autor = autores.id_autor
inner join editora
on livros.id_editora = editora.id_editora
order by livros.preco desc;

/*ATIVIDADE 6*/
/*a*/
select livros.titulo, autores.nome from livros
join autores
on livros.id_autor = autores.id_autor
where autores.nome = 'Machado de Assis';

/*b*/
select livros.titulo, categoria.nome from livros
join categoria
on livros.id_categoria = categoria.id_categoria
where categoria.nome ='Infantil';

/*c*/
select livros.titulo, editora.nome from livros
join editora
on livros.id_editora = editora.id_editora
where editora.nome = 'Editora Alfa';

/*d*/
select livros.titulo, livros.preco, autores.nome as autor, editora.nome as editores
from livros
inner join autores
on livros.id_autor = autores.id_autor
inner join editora
on livros.id_editora = editora.id_editora
where livros.preco >= '50.00';

/*e*/
select livros.titulo, livros.estoque, autores.nome as autor, editora.nome as editores
from livros
inner join autores
on livros.id_autor = autores.id_autor
inner join editora
on livros.id_editora = editora.id_editora
where livros.estoque >= '8';

/*ATIVIDADE 7*/
create table leitores(
id_leitor int not null auto_increment,
nome_leitor varchar(100),
email varchar(100),
telefone varchar(20),
primary key(id_leitor)
) default charset = utf8;

INSERT INTO leitores (id_leitor, nome_leitor, email, telefone)
VALUES 
(DEFAULT, 'Lucas Oliveira', 'lucas.oliveira@email.com', '(11) 91234-5678'),
(DEFAULT, 'Beatriz Santos', 'beatriz.santos@email.com', '(21) 92345-6789'),
(DEFAULT, 'Thiago Costa', 'thiago.costa@email.com', '(31) 93456-7890'),
(DEFAULT, 'Mariana Almeida', 'mariana.almeida@email.com', '(41) 94567-8901'),
(DEFAULT, 'Gabriel Rodrigues', 'gabriel.rodrigues@email.com', '(51) 95678-9012'),
(DEFAULT, 'Amanda Pereira', 'amanda.pereira@email.com', '(61) 96789-0123'),
(DEFAULT, 'Rafael Nascimento', 'rafael.nascimento@email.com', '(71) 97890-1234'),
(DEFAULT, 'Juliana Mendes', 'juliana.mendes@email.com', '(81) 98901-2345');



select * from leitores;
desc leitores;


