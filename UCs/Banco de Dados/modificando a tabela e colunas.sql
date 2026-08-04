create database vendas;
use vendas;




create table produtos(
codigo int not null auto_increment primary key,
nome varchar(150) not null,
preco decimal(5,2) not null
)default charset = utf8;

insert into produtos
(codigo,nome,preço)
values
(default,'computador','500.00'), 
(default,'mouse','50.00'),
(default,'tv','200.00'), 
(default,'teclado','20.00'),
(default,'cd','15.00'), 
(default,'sofa','100.00'),
(default,'mochila',60.00), 
(default,'cadeira','70.00'),
(default,'ventilador','80.00'),
(default,'relogio','50.00'),
(default,'radio','30.00');

describe produtos;
select * from produtos;




/*Alterando a tabela*/


use cadastro;

create table pessoas(
id int not null auto_increment,
nome varchar(50) not null,
nascimento date ,
sexo enum('f','m','o'),
peso decimal(5,2),  
altura decimal(3,2),
nacionalidade varchar(30) default 'Brasileiro',
primary key (id)
) default charset utf8;


/* Adicionar uma nova coluna */
alter table pessoas
add column profissao varchar(20);

describe pessoas;

select * from pessoas;


/*Excluir um coluna*/
alter table pessoas
drop column profissão;

/*Colocar a coluna nova depois da coluna nome*/
alter table pessoas
add column profissao varchar(20) after nome;

/*Colocar uma coluna em primeiro*/
alter table pessoas
add column codigo int first;

alter table pessoas 
drop codigo;


/*Modificar a coluna adicionando uma nova string*/
alter table pessoas
modify column profissao varchar(30) not null default '';

/*Alterar o nome de uma coluna*/
alter table pessoas
change column profissao prof varchar(30) not null default '';

/*Alterar o nome da tabela*/
alter table pessoas
rename to estudantes;


desc estudantes;

select * from estudantes;



















