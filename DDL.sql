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
 
 
 

 CREATE TABLE tb_curso_aluno (
  id_aluno BINARY (16) NOT NULL,
  id_curso BINARY (16) NOT NULL,
  FOREIGN KEY (id_aluno) REFERENCES tb_alunos(id),
  FOREIGN KEY (id_curso) REFERENCES tb_curso(id)
 );
 

 
 
 