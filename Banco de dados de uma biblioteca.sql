/* Criacao de um banco de dados*/
CREATE DATABASE Biblioteca;

/* Para acessar o banco de dados*/
USE Biblioteca;

CREATE TABLE tb_autores (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
data_nascimento DATETIME NOT NULL,
PRIMARY KEY (id) 
);

CREATE TABLE tb_livros (
id BINARY(16) NOT NULL,
titulo VARCHAR(255) NOT NULL,
ano_publicacao DATETIME NOT NULL,
id_autor BINARY(16) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_autor) REFERENCES tb_autores(id)
);

CREATE TABLE tb_membros (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
data_adesao DATETIME NOT NULL,
PRIMARY KEY (id)
);	

CREATE TABLE tb_emprestimo(
id BINARY(16) NOT NULL,
id_membro BINARY(16) NOT NULL,
id_livro BINARY(16) NOT NULL,
data_emprestimo DATETIME NOT NULL,
data_devolucao DATETIME NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_membro) REFERENCES tb_membros(id),
FOREIGN KEY (id_livro) REFERENCES tb_livros(id)
);

INSERT INTO tb_autores VALUES (
UUID_TO_BIN(UUID()),
"George R. R. Martin",
"1950-05-20"
);

INSERT INTO tb_autores VALUES (
UUID_TO_BIN(UUID()),
"Machado de Assis",
"1839-06-21"
);

INSERT INTO tb_autores VALUES (
UUID_TO_BIN(UUID()),
"William Shakespeare",
"1616-04-23"
);

INSERT INTO tb_livros VALUES (
UUID_TO_BIN(UUID()),
"Cronicas de Gelo e Fogo",
"2002-12-09",
UUID_TO_BIN("808342f2-45f5-11ef-8aba-b445067b827e")
);


INSERT INTO tb_livros VALUES (
UUID_TO_BIN(UUID()),
"Memórias Póstumas de Brás Cubas",
"1881-07-19",
UUID_TO_BIN("c302598d-45f5-11ef-8aba-b445067b827e")
);

INSERT INTO tb_livros VALUES (
UUID_TO_BIN(UUID()),
"Hamlet",
"1623-02-06",
UUID_TO_BIN("d3f147e2-45f5-11ef-8aba-b445067b827e")
);

INSERT INTO tb_membros VALUES (
UUID_TO_BIN(UUID()),
"Lucas",
"2017-08-02"
);

INSERT INTO tb_membros VALUES (
UUID_TO_BIN(UUID()),
"Thiago",
"2011-01-01"
);

INSERT INTO tb_membros VALUES (
UUID_TO_BIN(UUID()),
"Maike",
"2022-10-11"
);

INSERT INTO tb_emprestimo VALUES (
UUID_TO_BIN(UUID()),
UUID_TO_BIN("c7d7feec-45f8-11ef-8aba-b445067b827e"),
UUID_TO_BIN("b79407a5-45f7-11ef-8aba-b445067b827e"),
"2022-06-05",
"2022-08-10"
);

INSERT INTO tb_emprestimo VALUES (
UUID_TO_BIN(UUID()),
UUID_TO_BIN("d4e861e9-45f8-11ef-8aba-b445067b827e"),
UUID_TO_BIN("4b29d3b8-45f7-11ef-8aba-b445067b827e"),
"2023-02-15",
"2023-04-20"
);

INSERT INTO tb_emprestimo VALUES (
UUID_TO_BIN(UUID()),
UUID_TO_BIN("de93fde2-45f8-11ef-8aba-b445067b827e"),
UUID_TO_BIN("b989ca75-45f7-11ef-8aba-b445067b827e"),
"2024-01-12",
"2024-11-12"
);

SELECT *, BIN_TO_UUID(id) FROM tb_membros;

SELECT *, BIN_TO_UUID(id) FROM tb_livros;

SELECT *, BIN_TO_UUID(id) FROM tb_emprestimo;


SELECT MIN(ano_publicacao) FROM tb_livros;

SELECT MAX(ano_publicacao) FROM tb_livros;

/* Quantidade de livros cadastrados*/
SELECT COUNT(id) FROM tb_livros;

/* Ordene o nome dos autores em ordem crescente*/
SELECT * FROM tb_autores ORDER BY nome ASC;

/* Ordene o nome dos livros em ordem decrescente*/
SELECT * FROM tb_livros ORDER BY titulo DESC;

