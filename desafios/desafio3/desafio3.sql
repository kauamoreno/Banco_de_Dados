CREATE DATABASE DBSenai

CREATE TABLE Alunos(
	id_aluno INT,
	registro_aluno INT,
	nome_aluno VARCHAR(100),
	cpf_aluno VARCHAR(14),
	data_nascimento DATETIME
)

CREATE TABLE Professores(
	id_professor INT,
	registro_professor INT,
	nome_professor VARCHAR(100),
	cpf_professor VARCHAR(14),
	salario_mensal INT,
	grau_academico VARCHAR(20),
	data_nascimento DATETIME
)