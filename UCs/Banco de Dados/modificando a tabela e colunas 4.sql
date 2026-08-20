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


/*Nova tabela*/

create table if not exists cursos(
nome varchar(50) not null unique,
descricao text,
carga int unsigned,
totalaulas int,
ano year default 2026
) default charset = utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

alter table cursos
modify idcurso int not null auto_increment;



/* Aula 12/08/2026*/

INSERT INTO cursos
(nome, descricao, carga, totalaulas, ano)
VALUES
('Algoritmos', 'Lógica de programação para desenvolvimento de algoritmos e soluções computacionais.', 40, 10, 2026),
('Excel Essencial', 'Criação de planilhas, gráficos, fórmulas, funções e armazenamento em nuvem.', 40, 10, 2027),
('Excel Avançado I', 'Funções avançadas para cálculos, relatórios, gráficos e banco de dados.', 24, 6, 2028),
('Excel Avançado II', 'Recursos avançados do Excel para automação e análise de dados.', 24, 6, 2025),
('Formação Excel do Básico ao Avançado', 'Curso completo de Excel 365 do nível básico ao avançado.', 72, 18, 2026),
('Desenvolvedor Web Front-end I', 'Desenvolvimento de sites responsivos utilizando HTML e CSS.', 60, 15, 2027),
('Desenvolvedor Web Front-end II JavaScript', 'Desenvolvimento de interatividade em páginas web utilizando JavaScript.', 40, 12, 2028),
('PHP com MySQL', 'Desenvolvimento de sistemas web utilizando PHP e banco de dados MySQL.', 40, 12, 2025),
('Lógica de Programação com PHP', 'Desenvolvimento de algoritmos utilizando a linguagem PHP.', 40, 12, 2026),
('PHP Básico', 'Desenvolvimento de aplicações utilizando PHP.', 24, 6, 2027),
('PHP Avançado', 'Recursos avançados da linguagem PHP para aplicações web.', 32, 8, 2028),
('Photoshop', 'Tratamento, edição e manipulação de imagens utilizando Adobe Photoshop.', 36, 9, 2025),
('Photoshop para Mídias Sociais', 'Produção de artes digitais para redes sociais.', 36, 9, 2026),
('Python', 'Desenvolvimento de aplicações utilizando linguagem Python.', 32, 8, 2027),
('Python I - Fundamentos', 'Introdução à linguagem Python e seus principais recursos.', 44, 11, 2028),
('Python II - Desenvolvimento Web', 'Desenvolvimento de aplicações web utilizando Python e banco de dados.', 60, 15, 2025),
('Introdução à Linguagem Java', 'Desenvolvimento de aplicações básicas utilizando Java.', 40, 10, 2026),
('Formação Front-end', 'HTML5, CSS3 e JavaScript e desenvolvimento de sites responsivos.', 108, 27, 2027),
('Desenvolvedor Web Back-end Node.js', 'Desenvolvimento de APIs REST utilizando Node.js.', 48, 12, 2028),
('Programação Orientada a Objetos', 'Conceitos de orientação a objetos aplicados ao desenvolvimento de software.', 60, 15, 2025),
('C++', 'Desenvolvimento de programas utilizando a linguagem C++.', 40, 10, 2026),
('C#', 'Desenvolvimento de aplicações utilizando a linguagem C#.', 24, 6, 2027),
('PowerPoint', 'Criação de apresentações profissionais utilizando PowerPoint.', 24, 6, 2028),
('Word', 'Edição e formatação de documentos utilizando Microsoft Word.', 24, 6, 2025),
('Pacote Office', 'Curso completo de Word, Excel e PowerPoint.', 60, 15, 2026),
('Hardware', 'Montagem, manutenção e configuração de computadores.', 36, 9, 2027),
('Redes de Computadores', 'Conceitos fundamentais de redes e infraestrutura.', 40, 10, 2028),
('Segurança da Informação', 'Conceitos de proteção de dados e segurança digital.', 16, 4, 2025),
('Banco de Dados MySQL', 'Modelagem e manipulação de bancos de dados utilizando MySQL.', 40, 10, 2026),
('Banco de Dados SQL Server', 'Administração e consultas em SQL Server.', 40, 10, 2027),
('PostgreSQL', 'Desenvolvimento e administração de bancos de dados PostgreSQL.', 40, 10, 2028),
('MongoDB', 'Banco de dados NoSQL utilizando MongoDB.', 32, 8, 2025),
('Git e GitHub', 'Controle de versões e colaboração em projetos de software.', 24, 6, 2026),
('Docker', 'Criação e gerenciamento de containers para aplicações.', 32, 8, 2027),
('Linux Básico', 'Administração básica do sistema operacional Linux.', 40, 10, 2028),
('Linux Avançado', 'Administração avançada de servidores Linux.', 60, 15, 2025),
('HTML5 e CSS', 'Desenvolvimento de páginas web modernas.', 40, 10, 2026),
('Bootstrap', 'Desenvolvimento de interfaces responsivas utilizando Bootstrap.', 24, 6, 2027),
('React.js', 'Desenvolvimento de aplicações web utilizando React.', 60, 15, 2028),
('Angular', 'Desenvolvimento de aplicações SPA utilizando Angular.', 60, 15, 2025),
('Vue.js', 'Desenvolvimento de interfaces utilizando Vue.js.', 40, 10, 2026),
('TypeScript', 'Programação utilizando TypeScript.', 32, 8, 2027),
('JavaScript Avançado', 'Recursos avançados da linguagem JavaScript.', 40, 10, 2028),
('Java Web', 'Desenvolvimento de aplicações web utilizando Java.', 60, 15, 2025),
('Spring Boot', 'Desenvolvimento de APIs REST com Spring Boot.', 60, 15, 2026),
('Android Studio', 'Desenvolvimento de aplicativos Android.', 60, 15, 2027),
('Kotlin', 'Desenvolvimento de aplicativos Android utilizando Kotlin.', 40, 10, 2028),
('Desenvolvimento Mobile Flutter', 'Desenvolvimento de aplicativos multiplataforma utilizando Flutter.', 60, 15, 2025),
('Desenvolvimento Mobile React Native', 'Desenvolvimento de aplicativos móveis utilizando React Native.', 60, 15, 2026),
('Power BI', 'Criação de dashboards e análise de dados.', 40, 10, 2027),
('Business Intelligence', 'Conceitos e ferramentas para inteligência de negócios.', 40, 10, 2028),
('Machine Learning', 'Introdução aos algoritmos de aprendizado de máquina.', 60, 15, 2025),
('Inteligência Artificial', 'Fundamentos e aplicações da inteligência artificial.', 60, 15, 2026),
('Ciência dos Dados', 'Manipulação e análise de dados utilizando Python.', 60, 15, 2027),
('Desenvolvimento de APIs REST', 'Construção de APIs utilizando boas práticas de desenvolvimento.', 40, 10, 2028),
('Scrum', 'Metodologias ágeis utilizando Scrum.', 24, 6, 2025),
('Kanban', 'Organização e gerenciamento de projetos utilizando Kanban.', 16, 4, 2026),
('UX Design', 'Princípios de experiência do usuário.', 40, 10, 2027),
('UI Design', 'Desenvolvimento de interfaces modernas para aplicações.', 40, 10, 2028),
('Figma', 'Criação de protótipos e interfaces utilizando Figma.', 24, 6, 2025),
('Cloud Computing', 'Fundamentos da computação em nuvem.', 40, 10, 2026),
('AWS Fundamentos', 'Introdução aos serviços da Amazon Web Services.', 40, 10, 2027),
('Azure Fundamentos', 'Introdução aos serviços Microsoft Azure.', 40, 10, 2028),
('Google Cloud Platform', 'Introdução à plataforma Google Cloud.', 40, 10, 2025);

select * from cursos;


update cursos
set nome = 'Algoritimos'
where idcurso = 1;

update cursos
set nome = 'Exel Essencial'
where idcurso = 2;

update cursos
set nome = ' Exel Essencial', carga = 20, totalaulas = 4
where idcurso = 2;

update cursos
set ano = 2030, carga = 1000
where ano = 2026;

update cursos
set ano = 2032 
where ano = 2027
limit 3;

delete from cursos
where idcurso = 2;

delete from cursos
where ano = 2030;

/*Apagar o registros*/
truncate table estudantes;

drop database cadastro;

desc cursos;

desc estudantes;

/* Adicionar a coluna profissao depois da coluna nome */
alter table estudantes
add column profissao varchar(50) after nome;

/* Adicionar a a coluna id com chave primaria*/
alter table estudantes
add column id int auto_increment primary key first;

/* Adiconar a chave primaria */
alter table cursos
add column idcurso int auto_increment primary key first;

/* Excluir uma coluna*/
ALTER TABLE estudantes
DROP COLUMN prof;

INSERT INTO estudantes
(nome, profissao, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Ana Beatriz Almeida Souza', 'Enfermeira', '1998-03-15', 'f', 58, 1.65, 'Brasileira'),
('Carlos Eduardo Pereira Lima', 'Engenheiro', '1995-07-22', 'm', 82, 1.78, 'Português'),
('Mariana Oliveira Santos', 'Professora', '2001-11-09', 'f', 64, 1.70, 'Brasileira'),
('João Victor Rodrigues Costa', 'Analista de Sistemas', '1997-01-30', 'm', 85, 1.80, 'Angolano'),
('Fernanda Martins Ribeiro', 'Enfermeira', '1999-05-18', 'f', 55, 1.62, 'Brasileira'),
('Lucas Henrique Alves Rocha', 'Advogado', '1996-12-03', 'm', 76, 1.75, 'Argentino'),
('Juliana Ferreira Gomes', 'Médica', '2000-08-27', 'f', 60, 1.68, 'Brasileira'),
('Pedro Henrique Barbosa Silva', 'Contador', '1994-04-14', 'm', 88, 1.82, 'Chileno'),
('Camila Dias Carvalho', 'Designer', '2002-09-06', 'f', 52, 1.60, 'Colombiana'),
('Rafael Moreira Araújo', 'Administrador', '1993-02-25', 'm', 79, 1.77, 'Brasileiro'),
('Bruna Cardoso Monteiro', 'Psicóloga', '1998-10-12', 'f', 59, 1.66, 'Portuguesa'),
('Felipe Nascimento Teixeira', 'Desenvolvedor', '1997-06-19', 'm', 90, 1.83, 'Brasileiro'),
('Larissa Batista Correia', 'Arquiteta', '2001-03-08', 'f', 63, 1.69, 'Mexicana'),
('Gabriel Mendes Lopes', 'Técnico em Informática', '1995-11-21', 'm', 74, 1.74, 'Brasileiro'),
('Isabela Ramos Fernandes', 'Nutricionista', '1999-07-02', 'f', 57, 1.63, 'Espanhola'),
('Thiago Gonçalves Vieira', 'Policial', '1996-01-17', 'm', 84, 1.79, 'Brasileiro'),
('Amanda Castro Moura', 'Farmacêutica', '2000-12-29', 'f', 61, 1.67, 'Italiana'),
('Daniel Freitas Andrade', 'Empresário', '1994-05-10', 'm', 87, 1.81, 'Brasileiro'),
('Letícia Coutinho Duarte', 'Dentista', '2002-02-13', 'f', 56, 1.64, 'Francesa'),
('Vinícius Pires Machado', 'Professor', '1993-09-24', 'm', 78, 1.76, 'Brasileiro'),
('Bianca Figueiredo Barros', 'Jornalista', '1998-04-07', 'f', 65, 1.71, 'Alemã'),
('Gustavo Campos Tavares', 'Engenheiro Civil', '1997-08-16', 'm', 92, 1.84, 'Brasileiro'),
('Natália Rezende Melo', 'Veterinária', '2001-06-05', 'f', 50, 1.59, 'Canadense'),
('Eduardo Siqueira Matos', 'Mecânico', '1995-10-28', 'm', 80, 1.77, 'Brasileiro'),
('Patricia Azevedo Brandão', 'Secretária', '1999-01-11', 'f', 62, 1.68, 'Uruguaia'),
('Rodrigo Peixoto Neves', 'Bombeiro', '1996-03-26', 'm', 75, 1.73, 'Brasileiro'),
('Caroline Antunes Borges', 'Publicitária', '2000-07-14', 'f', 66, 1.72, 'Peruana'),
('Marcelo Cavalcante Torres', 'Gerente', '1994-12-20', 'm', 95, 1.85, 'Brasileiro'),
('Beatriz Sales Pinto', 'Esteticista', '2002-05-03', 'f', 54, 1.61, 'Venezuelana'),
('André Luiz Nogueira', 'Eletricista', '1993-11-15', 'm', 83, 1.78, 'Brasileiro'),
('Sabrina Rocha Albuquerque', 'Tradutora', '1998-02-22', 'f', 58, 1.65, 'Japonesa'),
('Henrique Paiva Santana', 'Programador', '1997-09-09', 'm', 89, 1.82, 'Brasileiro'),
('Vanessa Moraes Delgado', 'Biomédica', '2001-04-18', 'f', 60, 1.66, 'Chinesa'),
('Caio César Martins', 'Motorista', '1995-06-30', 'm', 81, 1.79, 'Brasileiro'),
('Débora Cristina Lopes', 'Fisioterapeuta', '1999-08-12', 'f', 57, 1.64, 'Coreana'),
('Leonardo Franco Bastos', 'Consultor', '1996-10-04', 'm', 91, 1.83, 'Brasileiro'),
('Aline Cristina Cardoso', 'Administradora', '2000-01-27', 'f', 63, 1.70, 'Australiana'),
('Bruno Henrique Farias', 'Empresário', '1994-03-19', 'm', 98, 1.86, 'Brasileiro'),
('Tatiane Lopes Guimarães', 'Cozinheira', '2002-07-08', 'f', 55, 1.62, 'Indiana'),
('Igor Almeida Brito', 'Técnico em Redes', '1993-12-01', 'm', 77, 1.75, 'Brasileiro'),
('Renata Vieira de Souza', 'Assistente Social', '1998-05-23', 'f', 62, 1.69, 'Sul-africana'),
('Murilo Fernandes Castro', 'Analista Financeiro', '1997-11-14', 'm', 86, 1.80, 'Brasileiro'),
('Priscila Andrade Lima', 'Recepcionista', '2001-02-06', 'f', 56, 1.63, 'Argentina'),
('Alexandre Rodrigues Moreira', 'Auditor', '1995-09-17', 'm', 93, 1.84, 'Brasileiro'),
('Yasmin Silva Couto', 'Fotógrafa', '1999-04-29', 'f', 49, 1.58, 'Marroquina'),
('Jonathan Pereira Duarte', 'Vendedor', '1996-08-21', 'm', 79, 1.77, 'Brasileiro'),
('Elaine dos Santos Lima', 'Pedagoga', '2000-10-10', 'f', 61, 1.67, 'Egípcia'),
('Mateus Ribeiro da Costa', 'Engenheiro Mecânico', '1994-06-02', 'm', 88, 1.81, 'Brasileiro'),
('Raquel Martins Nunes', 'Bióloga', '2002-03-25', 'f', 53, 1.60, 'Holandesa'),
('Diego Alves Teixeira', 'Militar', '1993-07-13', 'm', 84, 1.78, 'Brasileiro'),
('Cristiane Rocha Mendes', 'Enfermeira', '1998-12-07', 'f', 59, 1.65, 'Sueca'),
('Otávio Barbosa Freitas', 'Professor', '1997-05-16', 'm', 90, 1.82, 'Brasileiro'),
('Simone Carvalho Dias', 'Contadora', '2001-01-05', 'f', 60, 1.66, 'Suíça'),
('Wellington Araújo Pinto', 'Engenheiro Elétrico', '1995-04-22', 'm', 83, 1.79, 'Brasileiro'),
('Jéssica Fernandes Ramos', 'Designer Gráfica', '1999-09-30', 'f', 57, 1.64, 'Russa'),
('Fábio Gonçalves Ribeiro', 'Empresário', '1996-02-18', 'm', 96, 1.85, 'Brasileiro'),
('Karina Batista Lopes', 'Química', '2000-06-11', 'f', 62, 1.68, 'Turca'),
('Leandro Moreira Campos', 'Analista de Dados', '1994-08-28', 'm', 92, 1.83, 'Brasileiro'),
('Talita Nogueira Santos', 'Professora', '2002-11-19', 'f', 54, 1.61, 'Estadunidense'),
('Márcio Henrique Oliveira', 'Administrador', '1993-10-09', 'm', 87, 1.80, 'Brasileiro');

select * from cursos;
select * from estudantes;

drop database cadastro;

use cadastro;
desc estudantes;
desc cursos;

truncate table estudantes;


/*Aula 19/08/2026*/

select * from estudantes
order by nome desc;

select nome, carga, ano from cursos
order by ano;

select * from cursos
where ano = 2028
order by nome;

select nome, descricao, totalaulas from  cursos
where ano = 2025 
order by nome;

select nome, carga, totalaulas from  cursos
where carga >= 40
order by nome;

select * from cursos
where totalaulas between 20 and 30
order by nome;

select nome, carga, totalaulas from cursos
where totalaulas between 16 and 30
order by nome;

select nome, carga from cursos
where carga in (15,24)
order by nome;

select nome, carga, totalaulas from cursos
where carga > 24 and totalaulas < 16
order by nome;


select nome, carga, totalaulas from cursos
where carga > 24 or totalaulas < 16
order by nome;

select * from cursos 
where nome  = 'algoritmos';

/*Iniciar com a letra E*/
select * from cursos 
where nome  like 'E%';

/*Iniciar com a letra D*/
select * from cursos 
where nome  like 'D%';

/*Termina com a letra e*/
select * from cursos 
where nome  like '%E';


/*Tem que ter a letra A em qualquer lugar*/
select * from cursos 
where nome  like '%a%';

/*Não pode conter a letra A em lugar nenhum*/
select * from cursos 
where nome  not like '%a%';

select * from cursos 
where nome not like 'e%l%';

select * from cursos 
where nome like 'c%_';

select * from cursos 
where nome like 'ph%p_';


select * from cursos 
where nome like 'p_t%';


