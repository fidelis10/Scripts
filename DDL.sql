CREATE DATABASE senai 

USE senai

CREATE TABLE tb_alunos (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL,
endereco VARCHAR(255),
cep VARCHAR(10),
PRIMARY KEY (id)
);

CREATE TABLE tb_funcionario (
 id BINARY(16) NOT NULL,
 nome VARCHAR(255) NOT NULL,
 cargo VARCHAR(255) NOT NULL,
 salario DECIMAL(10,2) NOT NULL,
 departamento VARCHAR(255) NOT NULL,
 idade INT(3), 
 cpf VARCHAR(11) NOT NULL UNIQUE, 
 PRIMARY KEY (id)
 );
 
 CREATE TABLE tb_curso (
 id BINARY(16) NOT NULL,
 nome VARCHAR(255) NOT NULL, 
 disciplinas VARCHAR(255) NOT NULL,
 tempo_duracao INT(4) NOT NULL,
 professor_responsavel VARCHAR(255) NOT NULL,
 PRIMARY KEY (id)
 );
 
 select * from tb_curso
 
 drop table tb_funcionario
 
 drop table tb_curso
 
 INSERT INTO tb_alunos VALUES (
 UUID_TO_BIN(UUID()),
 "Lucas",
 "lucas.fidelis@icloud.com",
 "yudi40028922",
 "Rua Amar Demais, 230",
 "07453045"
 );
 
 INSERT INTO tb_alunos VALUES (
 UUID_TO_BIN(UUID()),
 "Gabriella",
 "gabriella.almeida@icloud.com",
 "gabriella08062007",
 "Rua Amar Muito, 245",
 "07452920"
 );
 
 
 
 INSERT INTO tb_funcionario VALUES (
 UUID_TO_BIN(UUID()),
 "Thiago da Massa",
 "Professor craque",
 "4500.00",
 "Departamento_escolar",
 "38",
 "8626467AE10"
 );
 
 INSERT INTO tb_funcionario VALUES (
 UUID_TO_BIN(UUID()),
 "Caique do Tijolo",
 "Professor mestre",
 "7500.00",
 "Departamento_escolar",
 "45",
 "95303972GJ1"
 );
 
 INSERT INTO tb_curso VALUES (
 UUID_TO_BIN(UUID()),
 "CAI - Aprendizagem Industrial",
 "Iot, Eletronica, Banco de dados",
 "2000",
 "Thiago da Massa"
 );
 
 INSERT INTO tb_curso VALUES (
 UUID_TO_BIN(UUID()),
 "Mecatronica",
 "Matematica, Eletronica, Dispositivos Semicondutores",
 "2000",
 "Caique do Tijolo"
 );
 