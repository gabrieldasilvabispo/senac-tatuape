create database japdv
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

use japdv;

create table fornecedores (
id_fornecedor int not null auto_increment,
nome varchar(100) not null,
fone int not null,
email varchar (100),
primary key(id_fornecedor)
) default charset=utf8;


insert into fornecedores
(id_fornecedor,nome,fone,email)
values
(default,'loja1', 99999-999, 'loja1@email.com'),
(default,'loja2', 99999-888, 'loja2@email.com'),
(default,'loja3', 99999-777, 'loja3@email.com');

desc fornecedores;

select * from fornecedores
order by nome;

create table produtos (
id_produto int not null auto_increment,
codigoBarras int not null unique,
descricao text not null,
categoria  varchar(100),
precoCusto decimal(7,3) not null,
precoVenda decimal(7,3) not null,
quantidade int not null,
estoqueMinimo int not null,
id_fornecedor int,
foreign key (id_fornecedor) references fornecedores(id_fornecedor),
primary key(id_produto)
) DEFAULT CHARSET = utf8;

desc produtos;


insert into produtos
(id_produto, codigoBarras, descricao, categoria, precoCusto, precoVenda, quantidade, estoqueMinimo, id_fornecedor)
VALUES
(default, 100001, 'Mouse USB', 'Informática', 25.000, 45.000, 20, 5, 1),
(default, 100002, 'Teclado USB', 'Informática', 35.000, 60.000, 15, 5, 1),
(default, 100003, 'Caderno 10 matérias', 'Papelaria', 18.000, 30.000, 25, 10, 2),
(default, 100004, 'Caneta Azul', 'Papelaria', 2.000, 4.500, 50, 15, 2),
(default, 100005, 'Cabo HDMI', 'Eletrônicos', 15.000, 29.900, 12, 4, 3),
(default, 100006, 'Carregador USB', 'Eletrônicos', 30.000, 55.000, 10, 3, 3);

select produtos.codigoBarras as codigo_produto, produtos.descricao, produtos.categoria, produtos.precoVenda, produtos.quantidade, produtos.estoqueMinimo,
fornecedores.nome as fornecedor
from produtos
inner join fornecedores
on produtos.id_fornecedor = fornecedores.id_fornecedor
order by produtos.descricao asc;

 