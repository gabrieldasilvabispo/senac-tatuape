create database loja
default character set utf8
default collate utf8_general_ci;
use loja;


create table produtos (
id int not null auto_increment,
nome varchar(50) not null,
categoria varchar (50) not null,
preco decimal (5,2),
estoque int not null,
origem varchar (30) default 'nacional',
primary key (id)
) default charset=utf8;

insert into produtos
(id, nome, categoria, preco, estoque, origem)
values

(default, 'livro', 'Romance', 15.00, '14', 'default'),
(default, 'livro', 'Terror', 16.00, '18', 'default'),
(default, 'livro', 'Ação', 20.00, '16', 'default'),
(default, 'livro', 'Aventura', 10.00, '13', 'default'),
(default, 'livro', 'Drama', 23.00, '15', 'default');

alter table produtos
add column descricao varchar (50) after nome;

alter  table produtos
modify column descricao varchar(150) after nome;

alter table produtos
change column descricao detalhes varchar (150) not null default'';

alter table produtos
add column codigo_barras varchar(50) first;

desc clientes;

alter table produtos
drop column codigo_barras;

alter table produtos
modify preco decimal(7,2);

alter table produtos;
update produtos set preco = 1499.90 where id = 3;

select * from produtos;

update produtos set categoria = 'eletronicos' where id = 2;
update produtos set estoque = 50 where id = 4;

truncate table clientes;

select * from produtos;

insert into produtos
(id, nome, detalhes, categoria, preco, estoque, origem)
values
(default, 'livro', 'capa dura','Romance', 15.00, '14', 'default');

desc clientes;

/* Delete: o delete remove os registros da tabela usando where*/
/* Truncate: deleta o registros da tabela, mas não apaga a tabela*/
/* Drop table: exclui a toda a tabela.*/

create table clientes(
id int null auto_increment,
email varchar (50) not null,
nome varchar (50) not null,
cidade varchar (50) not null,
idade int,
nacionalidade varchar (30) default 'Brasileiro',
primary key (id)
)default charset utf8;

insert into clientes
(id, email, nome, cidade, idade, nacionalidade)
values

(default,'gabriel@gmail', 'gabriel', 'São Paulo', 26, 'default'),
(default, 'bispo@gmail', 'bispo', 'São Paulo', 18, 'default'),
(default, 'leandro@gmail', 'leandro', 'São Paulo', 16, 'default'),
(default, 'sirlene@gmail', 'sirlene', 'São Paulo', 13, 'default'),
(default, 'vinicius@gmail', 'vinicius', 'São Paulo', 15, 'default');


alter table clientes
add column nome varchar(50) after email;

select * from clientes;

drop database loja;

create database loja;

use loja;
select * from clientes;
