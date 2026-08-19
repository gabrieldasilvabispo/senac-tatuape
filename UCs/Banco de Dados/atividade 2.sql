create database petshop
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

use petshop;

create table clientes(
id_cliente int not null auto_increment,
nome varchar (50) not null,
telefone int,
cidade varchar(50) not null,
estado varchar (50),
primary key(id_cliente)
) default charset=utf8;

desc clientes;

alter table clientes
modify column estado char(2);




insert into clientes
(id_cliente, nome, telefone, cidade, estado)
values
(default,'gabriel', 987456, 'São Paulo','SP'),
(default,'leandro', 987986, 'Rio de Janeiro','RJ'),
(default,'sirlene', 967459, 'Minas Gerais','MG'),
(default,'rafael', 993156, 'São Paulo','SP'),
(default,'marina', 984499, 'Rio Grande do Sul','RS'),
(default,'henrique', 977456, 'Ceará','CE'),
(default,'paulo', 987666, 'Alagoas','AL'),
(default,'larissa', 987556, 'Rio Grande do Sul','RS'),
(default,'bruna', 987444, 'Pernambuco','PE'),
(default,'daniel', 987336, 'Belo Horizonte','BH'),
(default,'luciana', 987456, 'Paraiba','PB'),
(default,'victor', 911456, 'Sergipe','SE'),
(default,'matheus', 987411, 'Goias','GO'),
(default,'alex', 987776, 'São Paulo','SP'),
(default,'edna', 985556, 'Minas Gerais','MG'),
(default,'giovana', 987111, 'Espirito Santo','ES'),
(default,'Alice', 987238, 'Rio Grande do Sul','RS'),
(default,'helena', 907456, 'Pernambuco','PE'),
(default,'laura', 987444, 'Paraiba','PB'),
(default,'artur', 987147, 'São Paulo','SP');


select * from clientes;


alter table clientes
add column email varchar(50);

alter table clientes
modify column email varchar(80);

desc clientes;

alter table clientes
change column email contato varchar(80);

update clientes
set telefone = '111111'
where id_cliente = 1;

delete from clientes
where id_cliente = 20;
 

/* Desafio Extra*/

alter table clientes
add column nascimento varchar(30) default 'Brasileiro';

alter table clientes
change column nascimento nacionalidade varchar(30) not null default 'Brasileiro';



alter table clientes
drop column cidade;




















create table animais(
id_animal int not null auto_increment,
nome varchar(50),
especie varchar(50),
idade int,
peso decimal(5,2),
primary key (id_animal)
) default charset=utf8;

alter table animais
modify column nome varchar(50) not null;

insert into animais
(id_animal, nome, especie, idade, peso)
values

(default,'rex','cachorro' , '6','15.00'),
(default,'miau', 'gato', '5','10.00'),
(default,'alex', 'tartaruga', '10','20.00'),
(default,'coruja', 'coruja', '9','10.00'),
(default,'luis', 'peixe', '2','6.00'),
(default,'merlin', 'girrafa', '6','50.00'),
(default,'simba', 'leão', '3','30.00'),
(default,'palmeiras', 'porco', '5','26.00'),
(default,'timão', 'gavião', 'Pernambuco','14.00'),
(default,'henrique', 'papagaio', '3','9.00'),
(default,'tico', 'coelho', '5','8.00');

select * from animais;

desc animais;


alter table animais
add column cor varchar (20);

update animais
set peso = '20'
where id_animal = 1;

update animais
set peso = '20'
where id_animal = 2;


delete from animais
where id_animal = 11;
















create table servicos (
id_servico int not null auto_increment,
nome varchar(50) not null,
preco decimal(5,2),
duracao decimal(5,2),
categoria varchar(50),
primary key (id_servico)
) default charset=utf8;

insert into servicos
(id_servico, nome, preco, duracao, categoria)
values
(default,'Corte de cabelo','40.00' , '45','Estetica'),
(default,'Manutenção de Computadores', '100.00', '120','Tecnologia'),
(default,'Troca de oleo', '120.00', '30','Automotivo'),
(default,'Limpeza residencial', '240.00', '200','Serviços Domestico'),
(default,'Consulta Tecnica', '100.00', '60','Consultaria'),
(default,'Instalação de Redes', '250.00', '100','Tecnologia');

select * from servicos;
desc servicos;

alter table servicos
add column ativo enum('SIM','NÃO') default 'SIM';


delete from servicos
where id_servico = 6;


select * from clientes;
select * from animais;
select * from servicos;

truncate table servicos;

