UPDATE tb_alunos SET endereco = "Barao de Maua" WHERE id =  UUID_TO_BIN ("e5fea2a9-4475-11ef-8aba-b445067b827e")
DELETE FROM tb_curso WHERE id = UUID_TO_BIN ("c9e4a788-4477-11ef-8aba-b445067b827e") 
 
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
 
 INSERT INTO tb_curso_aluno VALUES (
UUID_TO_BIN("e5fea2a9-4475-11ef-8aba-b445067b827e"),
UUID_TO_BIN("e40690fa-4477-11ef-8aba-b445067b827e")
);

