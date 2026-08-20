create database bdclinica
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

use bdclinica;

create table pacientes(
id int not null auto_increment,
nome varchar(50),
nascimento varchar(50),
sexo enum ('f','m'),
peso decimal(5,2),
altura decimal(5,2),
cidade varchar(50),
nacionalidade varchar(30) default 'Brasileiro',
primary key(id)
) default charset=utf8;

INSERT INTO pacientes (id,nome, nascimento, sexo, peso, altura, cidade, nacionalidade) 
VALUES 
(default,'Ana Clara Souza', '1995-03-12', 'F', 62.50, 1.65, 'São Paulo', DEFAULT),
(default,'Carlos Eduardo Lima', '1988-07-25', 'M', 80.20, 1.78, 'Rio de Janeiro', DEFAULT),
(default,'Mariana Oliveira', '2001-11-04', 'F', 55.00, 1.60, 'Belo Horizonte', DEFAULT),
(default,'John Peterson', '1982-01-15', 'M', 85.00, 1.82, 'Nova York', 'Americano'),
(default,'Fernanda Santos', '1990-09-30', 'F', 68.40, 1.70, 'Curitiba', DEFAULT),
(default,'Lucas Gabriel Alves', '1999-05-18', 'M', 74.10, 1.75, 'Porto Alegre', DEFAULT),
(default,'Camila Beatriz Rocha', '1993-12-08', 'F', 59.80, 1.63, 'Salvador', DEFAULT),
(default,'Sophie Martin', '1987-04-22', 'F', 57.30, 1.68, 'Paris', 'Francesa'),
(default,'Gabriel Ramos', '2003-08-10', 'M', 70.00, 1.80, 'Recife', DEFAULT),
(default,'Beatriz Mendes', '1997-02-28', 'F', 64.00, 1.67, 'Brasília', DEFAULT);


desc pacientes;

alter table pacientes
add column email varchar(30) after nome;

alter table pacientes
modify column email varchar(80); 

alter table pacientes
change column email contato varchar(80); 

alter table pacientes
add column telefone int after contato;

alter table pacientes 
add column cpf int first;

alter table pacientes 
drop column cpf;

desc pacientes;

update pacientes
set peso = 70.50
where id = 2;

update pacientes
set cidade = 'São Paulo'
where id = 4;

update pacientes
set nacionalidade = 'Portuguesa'
where id = 6;

update pacientes
set telefone = 3
where id = 3;

update pacientes
set peso = 5,
    nome = 'Gabriel Bispo'
where id = 1;

select * from pacientes;

delete from pacientes
where id = 10;

delete from pacientes
where id = 8;

select * from pacientes;

/* Comando utilizado para excluir registros é: delete from pacientes where id=.*/

/* O DELETE exclui o registro que você selecionar, o DROP TABLE exclui a tabela inteira.*/

select * from pacientes;


truncate table pacientes;

desc pacientes;


insert into pacientes
(id, nome, contato, telefone, nascimento, sexo, peso, altura, cidade, nacionalidade)
values
(DEFAULT,'Ana Clara Souza', 'gabrielbispo@email',9999999, 1995-03-12, 'F', 62.50, 1.65, 'São Paulo', DEFAULT);


/* Foi gerado o valor 1*/


CREATE TABLE medicos (
id_medico INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(50) NOT NULL,
telefone VARCHAR(20),
cidade VARCHAR(50),
salario DECIMAL(10,2),
primary key(id_medico)
)default charset=utf8;

desc medicos;

INSERT INTO medicos (id_medico,nome, especialidade, telefone, cidade, salario) 
VALUES 
(default,'Dr. Roberto Silva', 'Cardiologia', '(11) 98765-1111', 'São Paulo', 15000.00),
(default,'Dra. Juliana Mendes', 'Pediatria', '(21) 97654-2222', 'Rio de Janeiro', 12500.00),
(default,'Dr. Fernando Costa', 'Ortopedia', '(31) 96543-3333', 'Belo Horizonte', 14000.00),
(default,'Dra. Camile Oliveira', 'Dermatologia', '(41) 95432-4444', 'Curitiba', 13000.00),
(default,'Dr. Marcelo Santos', 'Neurologia', '(51) 94321-5555', 'Porto Alegre', 16500.00),
(default,'Dra. Patricia Lima', 'Ginecologia', '(71) 93210-6666', 'Salvador', 13800.00),
(default,'Dr. André Souza', 'Clínica Geral', '(81) 92109-7777', 'Recife', 10500.00),
(default,'Dra. Renata Rocha', 'Oftalmologia', '(61) 91098-8888', 'Brasília', 14200.00);

select * from medicos;


update medicos
set salario = 16800
where id_medico = 1;

update medicos
set salario = 19800
where id_medico = 7;

UPDATE medicos 
SET especialidade = 'Neurocirurgião' 
WHERE id_medico = 3;

DELETE FROM medicos 
WHERE id_medico = 8;

SELECT * FROM medicos;




