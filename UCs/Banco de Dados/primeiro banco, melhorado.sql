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
id int not null auto_increment,
nome varchar(50) not null,
nascimento date ,
sexo enum('f','m','o'),
peso decimal(5,2),  
altura decimal(3,2),
nacionalidade varchar(30) default 'Brasileiro',
primary key (id)
) default charset utf8;

describe pessoas;

select * from pessoas;


insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
value
('1', 'Gabriel Bispo', '2000-08-08', 'm', '80.0', '1.79', 'Brasileiro');


insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
value
(default, 'Gabriel Bispo', '2000-08-08', 'm', '80.0', '1.79', 'Brasileiro');



insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
value
(default, 'Roberto', '2012-08-08', 'm', '80.0', '1.79', default),
(default, 'Leandro', '2000-08-08', 'm', '76.0', '1.79', default),
(default, 'Gabriel', '2008-09-08', 'm', '84.0', '1.60',default),
(default, 'Sirlene', '2000-08-08', 'f', '65.0', '1.56', default),
(default, 'Depay', '1980-05-12', 'm', '90.0', '1.80',default);

select * from pessoas;

