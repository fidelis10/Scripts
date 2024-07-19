CREATE DATABASE clínica_veterinária;

USE clínica_veterinária;

CREATE TABLE tb_veterinarios (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
especialidade VARCHAR(255) NOT NULL,
Telefone VARCHAR(255) NOT NULL,
PRIMARY KEY (id) 
);

CREATE TABLE tb_clientes (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
endereco VARCHAR(255) NOT NULL,
Telefone VARCHAR(255) NOT NULL,
PRIMARY KEY (id) 
);

CREATE TABLE tb_pets (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
raca VARCHAR(255) NOT NULL,
data_nascimento DATETIME NOT NULL,
id_cliente BINARY(16) NOT NULL,
PRIMARY KEY (id) ,
FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id)
);

CREATE TABLE tb_atendimentos (
id BINARY(16) NOT NULL,
id_pet BINARY(16) NOT NULL,
id_veterinario BINARY(16) NOT NULL,
data_atendimento DATETIME NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id) ,
FOREIGN KEY (id_pet) REFERENCES tb_pets(id),
FOREIGN KEY (id_veterinario) REFERENCES tb_veterinarios(id)
);

INSERT INTO tb_veterinarios VALUES (
UUID_TO_BIN(UUID()),
"Pedro",
"Acupuntura",
"11 96614-3935"
);

INSERT INTO tb_veterinarios VALUES (
UUID_TO_BIN(UUID()),
"Marcos",
"Dermatologia",
"11 99310-7395"
);

INSERT INTO tb_veterinarios VALUES (
UUID_TO_BIN(UUID()),
"Mateus",
"Homeopatia",
"11 90238-3910"
);

INSERT INTO tb_clientes VALUES (
UUID_TO_BIN(UUID()),
"Diego",
"Rua Simoes, 73",
"11 92849-2830"
);

INSERT INTO tb_clientes VALUES (
UUID_TO_BIN(UUID()),
"Amanda",
"Rua Barao de Maua, 25",
"11 92910-8294"
);

INSERT INTO tb_clientes VALUES (
UUID_TO_BIN(UUID()),
"Leandro",
"Rua Pigmeu, 863",
"11 92782-1795"
);

INSERT INTO tb_pets VALUES (
UUID_TO_BIN(UUID()),
"Pacoca",
"Cachorro",
"Pastor-alemão",
"2015-04-02",
UUID_TO_BIN("136eec00-4607-11ef-8aba-b445067b827e")
);

INSERT INTO tb_pets VALUES (
UUID_TO_BIN(UUID()),
"Piupiu",
"Passaro",
"Calopsita",
"2017-07-22",
UUID_TO_BIN("2021d4e1-4607-11ef-8aba-b445067b827e")
);

INSERT INTO tb_pets VALUES (
UUID_TO_BIN(UUID()),
"Arana",
"Aranha",
"Tarântula",
"2022-12-18",
UUID_TO_BIN("eda66d7c-4606-11ef-8aba-b445067b827e")
);

INSERT INTO tb_atendimentos VALUES (
UUID_TO_BIN(UUID()),
UUID_TO_BIN("70a2de72-4608-11ef-8aba-b445067b827e"),
UUID_TO_BIN("7ff8a6a4-4606-11ef-8aba-b445067b827e"),
"2024-05-04",
"O animal passou por uma cirurgia e ocorreu tudo bem"
);

INSERT INTO tb_atendimentos VALUES (
UUID_TO_BIN(UUID()),
UUID_TO_BIN("a1de4142-4608-11ef-8aba-b445067b827e"),
UUID_TO_BIN("a26eee9f-4606-11ef-8aba-b445067b827e"),
"2023-01-02",
"O animal teve alta apos tomar remedios"
);

INSERT INTO tb_atendimentos VALUES (
UUID_TO_BIN(UUID()),
UUID_TO_BIN("d7943ca5-4608-11ef-8aba-b445067b827e"),
UUID_TO_BIN("a40f3a5f-4606-11ef-8aba-b445067b827e"),
"2020-10-23",
"O animal teve sua perna amputada devido complicacoes na sua perna"
);

SELECT *, BIN_TO_UUID(id) FROM tb_clientes;

ALTER TABLE tb_pets RENAME COLUMN tipo TO especie;

SELECT * FROM tb_atendimentos;

SELECT *, BIN_TO_UUID(id) FROM tb_pets;

SELECT *, BIN_TO_UUID(id) FROM tb_veterinarios;

SELECT * FROM tb_pets;

/* a.    O pet com a data de nascimento mais antigo  */
SELECT MIN(data_nascimento) FROM tb_pets;
/* b.    O pet com a data de nascimento mais recente */
SELECT MAX(data_nascimento) FROM tb_pets;
/* c.     A quantidade de pets cadastrados no banco de dados */
SELECT COUNT(id) FROM tb_pets;
/* d.     Ordene o nome dos pets em ordem crescente */
SELECT * FROM tb_pets ORDER BY nome ASC;
/* e.    Ordene o nome dos pets em ordem decrescente */
SELECT * FROM tb_pets ORDER BY nome DESC;
/* f.     Ordene o nome dos veterinários em ordem crescente */
SELECT * FROM tb_veterinarios ORDER BY nome ASC;
/* g.    Ordene o nome dos veterinários em ordem decrescente */
SELECT * FROM tb_veterinarios ORDER BY nome DESC;
/* h.    A data de atendimento mais antiga */
SELECT MIN(data_atendimento) FROM tb_atendimentos;
/* i.     A data de atendimento mais recente */
SELECT MAX(data_atendimento) FROM tb_atendimentos;