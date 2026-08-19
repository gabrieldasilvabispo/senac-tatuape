create database restaurante
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

use restaurante;

create table pratos(
id_pratos int not null auto_increment,
nome varchar(50),
categoria varchar(50),
preco decimal (5,2),
tamanho enum('Pequeno','Médio','Grande'),
ingredientes varchar(50),
nacionalidade varchar(50) default 'Brasileira',
primary key (id_pratos)
) default charset=utf8;

desc pratos;

insert into pratos
(id_pratos,nome,categoria,preco,tamanho,ingredientes,nacionalidade)
values
(default, 'Feijoada Completa', 'Prato Principal', 45.00, 'Médio', 'Feijão preto, carne seca, costelinha, linguiça e bacon', 'Brasileira'),
(default, 'Lasanha à Bolonhesa', 'Massa', 38.50, 'Médio', 'Massa de lasanha, carne moída, molho de tomate e queijo muçarela', 'Italiana'),
(default, 'Strogonoff de Frango', 'Prato Principal', 32.00, 'Individual', 'Peito de frango, creme de leite, champignon e batata palha', 'Russa'),
(default, 'Moqueca Baiana', 'Frutos do Mar', 65.00, 'Grande', 'Peixe fresco, camarão, leite de coco, azeite de dendê e pimentões', 'Brasileira'),
(default, 'Combo Sushi Tradicional', 'Oriental', 89.90, 'Grande', 'Salmão, atum, arroz para sushi, alga nori e gergelim', 'Japonesa'),
(default, 'Bacalhau à Brás', 'Peixes', 58.00, 'Individual', 'Bacalhau desfiado, batata palha, ovo, cebola e azeitonas', 'Portuguesa'),
(default, 'Risoto de Funghi', 'Massa', 42.00, 'Individual', 'Arroz arbóreo, cogumelos funghi secco, vinho branco e parmesão', 'Italiana'),
(default, 'Tacos al Pastor', 'Lanche', 28.00, 'Pequeno', 'Tortillas de milho, carne de porco marinada, abacaxi e coentro', 'Mexicana'),
(default, 'Picanha na Chapa', 'Carnes', 75.00, 'Grande', 'Picanha fatiada, alho assado, farofa e vinagrete', 'Brasileira'),
(default, 'Pad Thai', 'Oriental', 39.00, 'Individual', 'Macarrão de arroz, camarão, broto de feijão, amendoim e molho tamarindo', 'Tailandesa'),
(default, 'Baião de Dois', 'Prato Principal', 35.00, 'Médio', 'Arroz, feijão de corda, queijo coalho e carne de sol', 'Brasileira'),
(default, 'Paella Valenciana', 'Frutos do Mar', 72.00, 'Grande', 'Arroz, açafrão, camarão, lula, mexilhão e pimentões', 'Espanhola');




alter table pratos
add column calorias int after preco;

alter table pratos
add column observaçao varchar(100) after ingredientes;

alter table pratos
change column observaçao observacao varchar(100);



alter table pratos
modify column observacao varchar(150);


alter table pratos
change column observacao detalhes varchar(150);

desc pratos;

CREATE TABLE clientes (
id_cliente INT not null AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(20),
cidade VARCHAR(50),
nascimento DATE,
nacionalidade VARCHAR(30) DEFAULT 'Brasileiro',
primary key(id_cliente)
)default charset=utf8;

DESCRIBE clientes;

INSERT INTO clientes 
(id_cliente, nome, telefone, cidade, nascimento, nacionalidade) 
VALUES 
    (default,'Ana Silva', '(11) 98765-4321', 'São Paulo', '1990-05-15', default),
    (default,'Carlos Eduardo', '(21) 97654-3210', 'Rio de Janeiro', '1985-08-22', default),
    (default,'Mariana Souza', '(31) 96543-2109', 'Belo Horizonte', '1998-12-03', default),
    (default,'John Smith', '+1 555-0192', 'Nova York', '1988-03-10', 'Americano'),
    (default,'Fernanda Lima', '(41) 95432-1098', 'Curitiba', '1992-07-19', default),
    (default,'Lucas Mendes', '(51) 94321-0987', 'Porto Alegre', '2000-01-30', default),
    (default,'Camila Torres', '(71) 93210-9876', 'Salvador', '1995-11-12', default),
    (default,'Pierre Dupont', '+33 1 42 68 55 00', 'Paris', '1982-09-05', 'Francês'),
    (default,'Beatriz Rocha', '(81) 92109-8765', 'Recife', '1997-04-25', default),
    (default,'Gabriel Alves', '(61) 91098-7654', 'Brasília', '2001-06-18', default);
    
    SELECT * FROM clientes;
    
UPDATE pratos 
SET preco = 42.00 
WHERE id_pratos = 2;


UPDATE pratos 
SET categoria = 'Comida Japonesa' 
WHERE id_pratos = 5;


UPDATE pratos 
SET calorias = 550 
WHERE id_pratos = 7;


UPDATE pratos 
SET preco = 32.00, 
calorias = 420 
WHERE id_pratos = 8;


SELECT * FROM pratos;

UPDATE clientes 
SET telefone = '(11) 99999-8888' 
WHERE id_cliente = 1;


UPDATE clientes 
SET cidade = 'Niterói' 
WHERE id_cliente = 2;

UPDATE clientes 
SET cidade = 'Contagem' 
WHERE id_cliente = 3;

UPDATE clientes 
SET idade = 26 
WHERE id_cliente = 6;



SELECT * FROM clientes;


DELETE FROM pratos 
WHERE id_pratos = 3;


DELETE FROM pratos 
WHERE id_pratos = 6;



DELETE FROM clientes 
WHERE id_cliente = 4;


DELETE FROM clientes 
WHERE id_cliente = 8;




SELECT * FROM pratos;
SELECT * FROM clientes;


ALTER TABLE pratos 
ADD disponivel enum('Sim', 'Não');


ALTER TABLE clientes 
MODIFY nome VARCHAR(150) NOT NULL;


ALTER TABLE pratos 
change column tamanho porçao enum('Pequeno','Médio','Grande');


ALTER TABLE clientes 
DROP COLUMN nacionalidade;


ALTER TABLE clientes
RENAME TO clientes_restaurante;





DESC pratos;
DESC clientes_restaurante;



SELECT * FROM pratos;
SELECT * FROM clientes_restaurante;


