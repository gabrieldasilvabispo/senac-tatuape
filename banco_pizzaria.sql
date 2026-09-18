create database pizzaria
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

use pizzaria;



create table clientes (
id_cliente int not null auto_increment primary key,
nome varchar(100) not null,
telefone varchar(20) not null,
email varchar(100),
cidade varchar(100) not null,
idade int
) default charset=utf8;

desc clientes;


insert into clientes
(id_cliente, nome, telefone, email, cidade, idade)
values
(default, 'leandro', '1111-1111', 'leandro@email.com', 'São Paulo', '80'),
(default, 'gabriel', '2222-2222', 'gabriel@email.com', 'São Paulo', '20'),
(default, 'sirlene', '3333-3333', 'sirlene@email.com', 'São Paulo', '30'),
(default, 'joão', '4444-4444', 'joao@email.com', 'São Paulo', '26'),
(default, 'zatura', '5555-5555', 'zatura@email.com', 'São Paulo', '19'),
(default, 'ana', '6666-6666', 'ana@email.com', 'São Paulo', '24'),
(default, 'leandro', '1111-1111', 'leandro@email.com', 'São Paulo', '80'),
(default, 'leandro', '1111-1111', 'leandro@email.com', 'São Paulo', '80'),
(default, 'leandro', '1111-1111', 'leandro@email.com', 'São Paulo', '80'),
(default, 'leandro', '1111-1111', 'leandro@email.com', 'São Paulo', '80');
 