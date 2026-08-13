CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) unsigned DEFAULT NULL,
  `totalaulas` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT 2026,
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Algoritmos','Lógica de programação para desenvolvimento de algoritmos e soluções computacionais.',40,10,2026),(2,'Excel Essencial','Criação de planilhas, gráficos, fórmulas, funções e armazenamento em nuvem.',40,10,2027),(3,'Excel Avançado I','Funções avançadas para cálculos, relatórios, gráficos e banco de dados.',24,6,2028),(4,'Excel Avançado II','Recursos avançados do Excel para automação e análise de dados.',24,6,2025),(5,'Formação Excel do Básico ao Avançado','Curso completo de Excel 365 do nível básico ao avançado.',72,18,2026),(6,'Desenvolvedor Web Front-end I','Desenvolvimento de sites responsivos utilizando HTML e CSS.',60,15,2027),(7,'Desenvolvedor Web Front-end II JavaScript','Desenvolvimento de interatividade em páginas web utilizando JavaScript.',40,12,2028),(8,'PHP com MySQL','Desenvolvimento de sistemas web utilizando PHP e banco de dados MySQL.',40,12,2025),(9,'Lógica de Programação com PHP','Desenvolvimento de algoritmos utilizando a linguagem PHP.',40,12,2026),(10,'PHP Básico','Desenvolvimento de aplicações utilizando PHP.',24,6,2027),(11,'PHP Avançado','Recursos avançados da linguagem PHP para aplicações web.',32,8,2028),(12,'Photoshop','Tratamento, edição e manipulação de imagens utilizando Adobe Photoshop.',36,9,2025),(13,'Photoshop para Mídias Sociais','Produção de artes digitais para redes sociais.',36,9,2026),(14,'Python','Desenvolvimento de aplicações utilizando linguagem Python.',32,8,2027),(15,'Python I - Fundamentos','Introdução à linguagem Python e seus principais recursos.',44,11,2028),(16,'Python II - Desenvolvimento Web','Desenvolvimento de aplicações web utilizando Python e banco de dados.',60,15,2025),(17,'Introdução à Linguagem Java','Desenvolvimento de aplicações básicas utilizando Java.',40,10,2026),(18,'Formação Front-end','HTML5, CSS3 e JavaScript e desenvolvimento de sites responsivos.',108,27,2027),(19,'Desenvolvedor Web Back-end Node.js','Desenvolvimento de APIs REST utilizando Node.js.',48,12,2028),(20,'Programação Orientada a Objetos','Conceitos de orientação a objetos aplicados ao desenvolvimento de software.',60,15,2025),(21,'C++','Desenvolvimento de programas utilizando a linguagem C++.',40,10,2026),(22,'C#','Desenvolvimento de aplicações utilizando a linguagem C#.',24,6,2027),(23,'PowerPoint','Criação de apresentações profissionais utilizando PowerPoint.',24,6,2028),(24,'Word','Edição e formatação de documentos utilizando Microsoft Word.',24,6,2025),(25,'Pacote Office','Curso completo de Word, Excel e PowerPoint.',60,15,2026),(26,'Hardware','Montagem, manutenção e configuração de computadores.',36,9,2027),(27,'Redes de Computadores','Conceitos fundamentais de redes e infraestrutura.',40,10,2028),(28,'Segurança da Informação','Conceitos de proteção de dados e segurança digital.',16,4,2025),(29,'Banco de Dados MySQL','Modelagem e manipulação de bancos de dados utilizando MySQL.',40,10,2026),(30,'Banco de Dados SQL Server','Administração e consultas em SQL Server.',40,10,2027),(31,'PostgreSQL','Desenvolvimento e administração de bancos de dados PostgreSQL.',40,10,2028),(32,'MongoDB','Banco de dados NoSQL utilizando MongoDB.',32,8,2025),(33,'Git e GitHub','Controle de versões e colaboração em projetos de software.',24,6,2026),(34,'Docker','Criação e gerenciamento de containers para aplicações.',32,8,2027),(35,'Linux Básico','Administração básica do sistema operacional Linux.',40,10,2028),(36,'Linux Avançado','Administração avançada de servidores Linux.',60,15,2025),(37,'HTML5 e CSS','Desenvolvimento de páginas web modernas.',40,10,2026),(38,'Bootstrap','Desenvolvimento de interfaces responsivas utilizando Bootstrap.',24,6,2027),(39,'React.js','Desenvolvimento de aplicações web utilizando React.',60,15,2028),(40,'Angular','Desenvolvimento de aplicações SPA utilizando Angular.',60,15,2025),(41,'Vue.js','Desenvolvimento de interfaces utilizando Vue.js.',40,10,2026),(42,'TypeScript','Programação utilizando TypeScript.',32,8,2027),(43,'JavaScript Avançado','Recursos avançados da linguagem JavaScript.',40,10,2028),(44,'Java Web','Desenvolvimento de aplicações web utilizando Java.',60,15,2025),(45,'Spring Boot','Desenvolvimento de APIs REST com Spring Boot.',60,15,2026),(46,'Android Studio','Desenvolvimento de aplicativos Android.',60,15,2027),(47,'Kotlin','Desenvolvimento de aplicativos Android utilizando Kotlin.',40,10,2028),(48,'Desenvolvimento Mobile Flutter','Desenvolvimento de aplicativos multiplataforma utilizando Flutter.',60,15,2025),(49,'Desenvolvimento Mobile React Native','Desenvolvimento de aplicativos móveis utilizando React Native.',60,15,2026),(50,'Power BI','Criação de dashboards e análise de dados.',40,10,2027),(51,'Business Intelligence','Conceitos e ferramentas para inteligência de negócios.',40,10,2028),(52,'Machine Learning','Introdução aos algoritmos de aprendizado de máquina.',60,15,2025),(53,'Inteligência Artificial','Fundamentos e aplicações da inteligência artificial.',60,15,2026),(54,'Ciência dos Dados','Manipulação e análise de dados utilizando Python.',60,15,2027),(55,'Desenvolvimento de APIs REST','Construção de APIs utilizando boas práticas de desenvolvimento.',40,10,2028),(56,'Scrum','Metodologias ágeis utilizando Scrum.',24,6,2025),(57,'Kanban','Organização e gerenciamento de projetos utilizando Kanban.',16,4,2026),(58,'UX Design','Princípios de experiência do usuário.',40,10,2027),(59,'UI Design','Desenvolvimento de interfaces modernas para aplicações.',40,10,2028),(60,'Figma','Criação de protótipos e interfaces utilizando Figma.',24,6,2025),(61,'Cloud Computing','Fundamentos da computação em nuvem.',40,10,2026),(62,'AWS Fundamentos','Introdução aos serviços da Amazon Web Services.',40,10,2027),(63,'Azure Fundamentos','Introdução aos serviços Microsoft Azure.',40,10,2028),(64,'Google Cloud Platform','Introdução à plataforma Google Cloud.',40,10,2025);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudantes`
--

DROP TABLE IF EXISTS `estudantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `profissao` varchar(50) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('f','m','o') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(30) DEFAULT 'Brasileiro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudantes`
--

LOCK TABLES `estudantes` WRITE;
/*!40000 ALTER TABLE `estudantes` DISABLE KEYS */;
INSERT INTO `estudantes` VALUES (1,'Gabriel Bispo',NULL,'2000-08-08','m',80.00,1.79,'Brasileiro'),(2,'Gabriel Bispo',NULL,'2000-08-08','m',80.00,1.79,'Brasileiro'),(3,'Gabriel Bispo',NULL,'2000-08-08','m',80.00,1.79,'Brasileiro'),(4,'Gabriel Bispo',NULL,'2000-08-08','m',80.00,1.79,'Brasileiro'),(5,'Roberto',NULL,'2012-08-08','m',80.00,1.79,'Brasileiro'),(6,'Leandro',NULL,'2000-08-08','m',76.00,1.79,'Brasileiro'),(7,'Gabriel',NULL,'2008-09-08','m',84.00,1.60,'Brasileiro'),(8,'Sirlene',NULL,'2000-08-08','f',65.00,1.56,'Brasileiro'),(9,'Depay',NULL,'1980-05-12','m',90.00,1.80,'Brasileiro'),(10,'Ana Beatriz Almeida Souza','Enfermeira','1998-03-15','f',58.00,1.65,'Brasileira'),(11,'Carlos Eduardo Pereira Lima','Engenheiro','1995-07-22','m',82.00,1.78,'Português'),(12,'Mariana Oliveira Santos','Professora','2001-11-09','f',64.00,1.70,'Brasileira'),(13,'João Victor Rodrigues Costa','Analista de Sistemas','1997-01-30','m',85.00,1.80,'Angolano'),(14,'Fernanda Martins Ribeiro','Enfermeira','1999-05-18','f',55.00,1.62,'Brasileira'),(15,'Lucas Henrique Alves Rocha','Advogado','1996-12-03','m',76.00,1.75,'Argentino'),(16,'Juliana Ferreira Gomes','Médica','2000-08-27','f',60.00,1.68,'Brasileira'),(17,'Pedro Henrique Barbosa Silva','Contador','1994-04-14','m',88.00,1.82,'Chileno'),(18,'Camila Dias Carvalho','Designer','2002-09-06','f',52.00,1.60,'Colombiana'),(19,'Rafael Moreira Araújo','Administrador','1993-02-25','m',79.00,1.77,'Brasileiro'),(20,'Bruna Cardoso Monteiro','Psicóloga','1998-10-12','f',59.00,1.66,'Portuguesa'),(21,'Felipe Nascimento Teixeira','Desenvolvedor','1997-06-19','m',90.00,1.83,'Brasileiro'),(22,'Larissa Batista Correia','Arquiteta','2001-03-08','f',63.00,1.69,'Mexicana'),(23,'Gabriel Mendes Lopes','Técnico em Informática','1995-11-21','m',74.00,1.74,'Brasileiro'),(24,'Isabela Ramos Fernandes','Nutricionista','1999-07-02','f',57.00,1.63,'Espanhola'),(25,'Thiago Gonçalves Vieira','Policial','1996-01-17','m',84.00,1.79,'Brasileiro'),(26,'Amanda Castro Moura','Farmacêutica','2000-12-29','f',61.00,1.67,'Italiana'),(27,'Daniel Freitas Andrade','Empresário','1994-05-10','m',87.00,1.81,'Brasileiro'),(28,'Letícia Coutinho Duarte','Dentista','2002-02-13','f',56.00,1.64,'Francesa'),(29,'Vinícius Pires Machado','Professor','1993-09-24','m',78.00,1.76,'Brasileiro'),(30,'Bianca Figueiredo Barros','Jornalista','1998-04-07','f',65.00,1.71,'Alemã'),(31,'Gustavo Campos Tavares','Engenheiro Civil','1997-08-16','m',92.00,1.84,'Brasileiro'),(32,'Natália Rezende Melo','Veterinária','2001-06-05','f',50.00,1.59,'Canadense'),(33,'Eduardo Siqueira Matos','Mecânico','1995-10-28','m',80.00,1.77,'Brasileiro'),(34,'Patricia Azevedo Brandão','Secretária','1999-01-11','f',62.00,1.68,'Uruguaia'),(35,'Rodrigo Peixoto Neves','Bombeiro','1996-03-26','m',75.00,1.73,'Brasileiro'),(36,'Caroline Antunes Borges','Publicitária','2000-07-14','f',66.00,1.72,'Peruana'),(37,'Marcelo Cavalcante Torres','Gerente','1994-12-20','m',95.00,1.85,'Brasileiro'),(38,'Beatriz Sales Pinto','Esteticista','2002-05-03','f',54.00,1.61,'Venezuelana'),(39,'André Luiz Nogueira','Eletricista','1993-11-15','m',83.00,1.78,'Brasileiro'),(40,'Sabrina Rocha Albuquerque','Tradutora','1998-02-22','f',58.00,1.65,'Japonesa'),(41,'Henrique Paiva Santana','Programador','1997-09-09','m',89.00,1.82,'Brasileiro'),(42,'Vanessa Moraes Delgado','Biomédica','2001-04-18','f',60.00,1.66,'Chinesa'),(43,'Caio César Martins','Motorista','1995-06-30','m',81.00,1.79,'Brasileiro'),(44,'Débora Cristina Lopes','Fisioterapeuta','1999-08-12','f',57.00,1.64,'Coreana'),(45,'Leonardo Franco Bastos','Consultor','1996-10-04','m',91.00,1.83,'Brasileiro'),(46,'Aline Cristina Cardoso','Administradora','2000-01-27','f',63.00,1.70,'Australiana'),(47,'Bruno Henrique Farias','Empresário','1994-03-19','m',98.00,1.86,'Brasileiro'),(48,'Tatiane Lopes Guimarães','Cozinheira','2002-07-08','f',55.00,1.62,'Indiana'),(49,'Igor Almeida Brito','Técnico em Redes','1993-12-01','m',77.00,1.75,'Brasileiro'),(50,'Renata Vieira de Souza','Assistente Social','1998-05-23','f',62.00,1.69,'Sul-africana'),(51,'Murilo Fernandes Castro','Analista Financeiro','1997-11-14','m',86.00,1.80,'Brasileiro'),(52,'Priscila Andrade Lima','Recepcionista','2001-02-06','f',56.00,1.63,'Argentina'),(53,'Alexandre Rodrigues Moreira','Auditor','1995-09-17','m',93.00,1.84,'Brasileiro'),(54,'Yasmin Silva Couto','Fotógrafa','1999-04-29','f',49.00,1.58,'Marroquina'),(55,'Jonathan Pereira Duarte','Vendedor','1996-08-21','m',79.00,1.77,'Brasileiro'),(56,'Elaine dos Santos Lima','Pedagoga','2000-10-10','f',61.00,1.67,'Egípcia'),(57,'Mateus Ribeiro da Costa','Engenheiro Mecânico','1994-06-02','m',88.00,1.81,'Brasileiro'),(58,'Raquel Martins Nunes','Bióloga','2002-03-25','f',53.00,1.60,'Holandesa'),(59,'Diego Alves Teixeira','Militar','1993-07-13','m',84.00,1.78,'Brasileiro'),(60,'Cristiane Rocha Mendes','Enfermeira','1998-12-07','f',59.00,1.65,'Sueca'),(61,'Otávio Barbosa Freitas','Professor','1997-05-16','m',90.00,1.82,'Brasileiro'),(62,'Simone Carvalho Dias','Contadora','2001-01-05','f',60.00,1.66,'Suíça'),(63,'Wellington Araújo Pinto','Engenheiro Elétrico','1995-04-22','m',83.00,1.79,'Brasileiro'),(64,'Jéssica Fernandes Ramos','Designer Gráfica','1999-09-30','f',57.00,1.64,'Russa'),(65,'Fábio Gonçalves Ribeiro','Empresário','1996-02-18','m',96.00,1.85,'Brasileiro'),(66,'Karina Batista Lopes','Química','2000-06-11','f',62.00,1.68,'Turca'),(67,'Leandro Moreira Campos','Analista de Dados','1994-08-28','m',92.00,1.83,'Brasileiro'),(68,'Talita Nogueira Santos','Professora','2002-11-19','f',54.00,1.61,'Estadunidense'),(69,'Márcio Henrique Oliveira','Administrador','1993-10-09','m',87.00,1.80,'Brasileiro');
/*!40000 ALTER TABLE `estudantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-12 17:01:07
