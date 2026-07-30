create database cadastro;
use cadastro;
create table pessoas(
nome varchar(30),
idade int(11),
sexo char(1),
peso float,
altura float,
nacionalidade varchar(30)
);



describe pessoas; /*Estrutura da tabela*/

drop table pessoas; /*apaga a tabela*/
drop database cadastro; /*apaga o banco de dados*/


/*Melhorando o Banco de Dados*/
create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas(
nome varchar(50) not null,
nascimento date ,
sexo enum('f','m','o'),
peso decimal(5,2),  
altura decimal(3,2),
nacionalidade varchar(30) default 'Brasileiro'
) default charset utf8;

describe pessoas;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Gabriel', '2000/08/08', 'm', '80.52', '1.79', 'Brasileiro');

select *from pessoas;