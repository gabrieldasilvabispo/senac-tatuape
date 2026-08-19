create database biblioteca
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

use biblioteca;

create table livros (
id_livros int not null auto_increment,
titulo varchar(100),
autor varchar(100),
categoria varchar(100),
paginas int,
preco decimal(5,2),
idioma varchar(50) not null default 'Brasileiro',
ano int,
primary key(id_livros)
) default charset=utf8;

desc livros;

insert into livros
(id_livros, titulo, autor, categoria, paginas, preco, idioma, ano)
values
(default,'Dom Quixote',' Miguel de Cervantes','Romance de Cavalaria / Sátira',1200,'700',' Espanhol','1605' ),
(default,'turma da monica fabulas ilustradas',' Mauricio de Sousa','Infantil / Fábulas Clássicas',224,151,'Português', 2021),
(default,'Cem Anos de Solidão','Gabriel García Márquez','Realismo Mágico / Romance Histórico',448,119,'Espanhol','1967'),
(default,'A hora da estrela: Edição comemorativa','Clarice Lispector','Romance Psicológico / Ficção',88,44,'Português',1977),
(default,'Dom Casmurro','Machado de Assis','Realismo / Romance Psicológico',208 , 39,'Português',1899),
(default,'Vidas Secas','Graciliano Ramos',' Romance Regionalista / Modernismo',176 , 64,'Português',1938),
(default,'A metamorfose','Franz Kafka','Ficção Absurdista / Novela',112 , 37,'Alemão',1915),
(default,'O pequeno principe',' Antoine de Saint-Exupéry','Fábula / Literatura Infantojuvenil',96, 34,'Francês',1943),
(default,'Ensaio sobre a cegueira','José Saramago',' Ficção Alegórica / Distopia',312, 69,'Português',1995),
(default,'O Retrato de dorian gray','Oscar Wilde','Romance Gótico / Ficção Filosófica',240, 42,'Inglês',1890),
(default,'Crime e Castigo','Fiódor Dostoiévski','Romance Psicológico / Policial',592 ,94,'Russo',1866),
(default,'O Cortiço','Aluísio Azevedo','Naturalismo / Romance Social',247,32,'Português',1890),
(default,'Capitães da Areia','Jorge Amado',' Romance de Formação / Social',288 ,59,'Português',1937),
(default,'A Revolução dos bichos','George Orwell','Sátira Política / Fábula',152,34,' Inglês',1945),
(default,'O Meu pé de laranja lima','José Mauro de Vasconcelos',' Literatura Infantojuvenil / Drama',190,52,'Português',1968);




alter table livros 
add column editora varchar(50) after autor;


alter table livros
add column estoque int after preco;

alter table livros
change column idioma lingua varchar(50) not null default 'Brasileiro';

desc livros;


insert into livros
(id_livros, titulo, autor,editora, categoria, paginas, preco, lingua, ano)
values
(default, 'Admirável Mundo Novo', 'Aldous Huxley', 'Biblioteca Azul', 'Ficção Científica', 312, 47.90, 'Português', 1932),
(default, 'Fahrenheit 451', 'Ray Bradbury', 'Biblioteca Azul', 'Ficção Científica', 256, 42.90, 'Português', 1953),
(default, 'O Alquimista', 'Paulo Coelho', 'Paralela', 'Ficção', 208, 39.90, 'Português', 1988),
(default, 'Orgulho e Preconceito', 'Jane Austen', 'Martin Claret', 'Romance Clássico', 424, 37.90, 'Português', 1813),
(default, 'Sapiens: Uma Breve História da Humanidade', 'Yuval Noah Harari', 'L&PM', 'História', 464, 69.90, 'Português', 2011);




update livros
set preco = 89.90
where id_livros = 3;

update livros
set estoque = 30
where id_livros;

update livros
set editora = senac
where id_livros = 7;

update livros
set preco = 50.00,
     estoque = 8
where id_livros = 8;



desc livros;




delete from livros
where id_livros = 4;

delete from livros
where id_livros = 9;

delete from livros
where id_livros = 5;


alter table livros
modify column titulo varchar(150);

alter table livros
modify column categoria varchar(50);

alter table livros
add column disponivel enum('Sim','Não') default 'Sim';

desc livros;

