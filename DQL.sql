SELECT *, BIN_TO_UUID(id) FROM tb_funcionario 
 
 SELECT *, BIN_TO_UUID(id) FROM tb_curso 
 SELECT * FROM tb_curso WHERE id = UUID_TO_BIN ("2b905c2f-4478-11ef-8aba-b445067b827e")
 
SELECT *, BIN_TO_UUID(id) FROM tb_alunos
SELECT * FROM tb_alunos WHERE id = UUID_TO_BIN("7b82474a-4476-11ef-8aba-b445067b827e")

SELECT MIN(salario) FROM tb_funcionario
 
 SELECT MAX(salario) FROM tb_funcionario
 
 SELECT COUNT(id) FROM tb_funcionario
 
 SELECT *, BIN_TO_UUID(id_aluno), BIN_TO_UUID(id_curso) FROM tb_curso_aluno
 SELECT * FROM tb_curso_aluno;