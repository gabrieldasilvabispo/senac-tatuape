create database vendas;
use vendas;

create table produtos(
codigo int not null auto_increment primary key,
nome varchar(150) not null,
preco decimal(5,2) not null
)default charset utf8;

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

