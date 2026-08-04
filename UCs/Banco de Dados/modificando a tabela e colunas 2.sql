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



insert into cursos
(idcurso, nome, descricao, carga, totalaulas, ano)
values
(default, 'Algoritnmos', 'Logica de programação, Você aprenderá sobre desenvolvimento de soluções com aplicações da lógica...', 40, '10', 2026);

insert into cursos
(idcurso, nome, descricao, carga, totalaulas, ano)
values
(default, 'Algoritimos', 'Lógica de programação para desenvolvimento de algoritmos e soluções computacionais.', 40, 10, 2026),
(default, 'Exel Essencial', 'Criação de planilhas', 'gráficos', 'fórmulas', 'funções e armazenamento em nuvem.', 40, 10, 2027),
(default, 'Exel Avançado I', 'Funções avançadas para cálculos', 'relatórios', 'gráficos e banco de dados.', 24, 6, 2028),
(default, 'Exel Avançado II', 'Recursos avançados do Excel para automação e análise de dados.', 24, 6, 2025),
(default, 'Formação Exel do Básico ao Avançado', 'Curso completo de Excel 365 do nível básico ao avançado.', 72, 18, 2026,)
(default, 'Deseedor Web Front-end I', 'Desenvolvimento de sites responsivos utilizando HTML e CSS.', 60, 15, 2027,)
(default, 'Dnvolvedor Web Front-end II Javascritp', 'Desenvolvimento de interatividade em páginas web utilizando JavaScript.', 40, 12, 2028,)
(default, 'P com MySQl, Desenvolvimento de sistemas web utilizando PHP e banco de dados MySQL.', 40, 12, 2025,)
(default, 'Lójica de Programação com PHP', 'Desenvolvimento de algoritmos utilizando a linguagem PHP.', 40, 12, 2026,)
(default, 'PHP Basico', 'Desenvolvimento de aplicações utilizando PHP.', 24, 6, 2027)
(default, 'PP Avançdo', 'Recursos avançados da linguagem PHP para aplicações web.', 32, 8, 2028,)
(default, 'Photoshp', 'Tratamento', 'edição e manipulação de imagens utilizando Adobe Photoshop.', 36, 9, 2025,)
(default, 'Photoshop para Midias Sociais', 'Produção de artes digitais para redes sociais.', 36, 9, 2026,)
(default, 'Phyton, Desenvolvimento de aplicações utilizando linguagem Python.', 32, 8, 2027,)
(default, 'Phyton I Fundamentos, Introdução à linguagem Python e seus principais recursos.', 44, 11, 2028,)
(default, 'Phyton II Desenvolvimento Web', 'Desenvolvimento de aplicações web utilizando Python e banco de dados.', 60, 15, 2025,)
(default, 'Intução à Linggem Jva', 'Desenvolvimento de aplicações básicas utilizando Java.', 40, 10, 2026,)
(default, 'Foação Front-en', 'HTML5, CSS3 e JavaScript e desenvolvimento de sites responsivos.', 108, 27, 2027,)
(default, 'Desenvolvedor Web Back-end Nodejs', 'Desenvolvimento de APIs REST utilizando Node.js.', 48, 12, 2028,)
(default, 'Programação Orientada a Obijetos', 'Conceitos de orientação a objetos aplicados ao desenvolvimento de software.', 60, 15, 2025,)
(default, 'C++', 'Desenvolvimento de programas utilizando a linguagem C++.', 40, 10, 2026,)
(default, 'C##', 'Desenvolvimento de aplicações utilizando a linguagem C#.', 24, 6, 2027,)
(default, 'Power Point', 'Criação de apresentações profissionais utilizando PowerPoint.', 24, 6, 2028,)
(default, 'Wrod', 'Edição e formatação de documentos utilizando Microsoft Word.', 24, 6, 2025,)
(default, 'Pacote Ofice', 'Curso completo de Word', 'Excel e PowerPoint.', 60, 15, 2026,)
(default, 'Hardwere', 'Montagem', 'manutenção e configuração de computadores.', 36, 9, 2027,)
(default, 'Redes de Computadores', 'Conceitos fundamentais de redes e infraestrutura.', 40, 10, 2028,)
(default, 'Segurança da Infomação', 'Conceitos de proteção de dados e segurança digital.', 16, 4, 2025,)
(default, 'Banco de Dados MySQl', 'Modelagem e manipulação de bancos de dados utilizando MySQL.', 40, 10, 2026,)
(default, 'Banco de Dados SQL Sever', 'Administração e consultas em SQL Server.', 40, 10, 2027,)
(default, 'PostgreeSQL', 'Desenvolvimento e administração de bancos de dados PostgreSQL.', 40, 10, 2028,)
(default, 'Mongo DB', 'Banco de dados NoSQL utilizando MongoDB.', 32, 8, 2025,)
(default, 'Git e Git Hub', 'Controle de versões e colaboração em projetos de software.', 24, 6, 2026,)
(default, 'Docker', 'Criação e gerenciamento de containers para aplicações.', 32, 8, 2027,)
(default, 'Linux Básico', 'Administração básica do sistema operacional Linux.', 40, 10, 2028,)
(default, 'Linux Avançdo', 'Administração avançada de servidores Linux.', 60, 15, 2025,)
(default, 'HTML5 e CSS', 'Desenvolvimento de páginas web modernas.', 40, 10, 2026,)
(default, 'Bootsrap', 'Desenvolvimento de interfaces responsivas utilizando Bootstrap.', 24, 6, 2027,)
(default, 'React Js', 'Desenvolvimento de aplicações web utilizando React.', 60, 15, 2028,)
(default, 'Angular', 'Desenvolvimento de aplicações SPA utilizando Angular.', 60, 15, 2025,)
(default, 'Vue Js', 'Desenvolvimento de interfaces utilizando Vue.js.', 40, 10, 2026,)
(default, 'Type Script', 'Programação utilizando TypeScript.', 32, 8, 2027,)
(default, 'JavaScritp Avançado', 'Recursos avançados da linguagem JavaScript.', 40, 10, 2028,)
(default, 'Java Web', 'Desenvolvimento de aplicações web utilizando Java.', 60, 15, 2025,)
(default, 'SpringBoot', 'Desenvolvimento de APIs REST com Spring Boot.', 60, 15, 2026,)
(default, 'Android Estudio', 'Desenvolvimento de aplicativos Android.', 60, 15, 2027,)
(default, 'Kotlyn','Desenvolvimento de aplicativos Android utilizando Kotlin.', 40, 10, 2028,)
(default, 'Desenvolvimento Mobile Fluter', 'Desenvolvimento de aplicativos multiplataforma utilizando Flutter.', 60, 15, 2025,)
(default, 'Desenvolvimento Mobile React Nativ', 'Desenvolvimento de aplicativos móveis utilizando React Native.', 60, 15, 2026,)
(default, 'Power BI', 'Criação de dashboards e análise de dados.', 40, 10, 2027,)
(default, 'Business Inteligence', 'Conceitos e ferramentas para inteligência de negócios.', 40, 10, 2028,)
(default, 'Machine Learnig', 'Introdução aos algoritmos de aprendizado de máquina.', 60, 15, 2025,)
(default, 'Inteligência Artifical', 'Fundamentos e aplicações da inteligência artificial.', 60, 15, 2026,)
(default, 'Ciência dos Dados',' Manipulação e análise de dados utilizando Python.', 60, 15, 2027,)
(default, 'Desenvolvimento de APIs Rest', 'Construção de APIs utilizando boas práticas de desenvolvimento.', 40, 10, 2028,)
(default, 'Scrun', 'Metodologias ágeis utilizando Scrum.', 24, 6, 2025,)
(default, 'Kanbam', 'Organização e gerenciamento de projetos utilizando Kanban.', 16, 4, 2026,)
(default, 'UX Desing',' Princípios de experiência do usuário.', 40, 10, 2027,)
(default, 'UI Desing', 'Desenvolvimento de interfaces modernas para aplicações.', 40, 10, 2028,)
(default, 'Fgma',' Criação de protótipos e interfaces utilizando Figma.', 24, 6, 2025,)
(default, 'Cloud Computng', 'Fundamentos da computação em nuvem.', 40, 10, 2026,)
(default, 'AWS Fundamentos', 'Introdução aos serviços da Amazon Web Services.', 40, 10, 2027,)
(default, 'Azure Fundamntos', 'Introdução aos serviços Microsoft Azure.', 40, 10, 2028,
(default,' Google Clud Platform Introdução à plataforma Google Cloud., 40, 10, 2025;)










