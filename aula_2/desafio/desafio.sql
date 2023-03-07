CREATE DATABASE DBSenai

CREATE TABLE Alunos(
	id_aluno INT,
	registro_aluno INT,
	nome_aluno VARCHAR(100),
	cpf_aluno VARCHAR(14),
	data_nascimento DATETIME
)

INSERT INTO Alunos(id_aluno, registro_aluno, nome_aluno, cpf_aluno, data_nascimento)
VALUES
		(1, 100, 'Marcelo Silva', '123.789.654-01', '05/07/2006'),
		(2, 1002045, 'Cleonice Barros', '546.679.654-05', '24/04/2006'),
		(3, 1002284, 'Benedito Ferraz', '346.943.439-14', '13/01/2007')

SELECT * FROM Alunos

INSERT INTO Alunos(registro_aluno, id_aluno, nome_aluno, data_nascimento)
VALUES
		(1003571, 4, 'Wesley Gomes', '28/08/2004')

UPDATE Alunos
SET cpf_aluno = '557.047.865-22'
WHERE id_aluno = 4

DELETE
FROM Alunos
WHERE id_aluno = 2

ALTER TABLE Alunos
ADD telefone VARCHAR(14)

UPDATE Alunos
SET id_aluno = 2
WHERE id_aluno = 3

UPDATE Alunos
SET id_aluno = 3
WHERE id_aluno = 4

SELECT * FROM Alunos

UPDATE Alunos
SET telefone = '(11)91234-5678'
WHERE id_aluno = 1

UPDATE Alunos
SET telefone = '(11)94321-8765'
WHERE id_aluno = 2

UPDATE Alunos
SET telefone = '(11)92254-5665'
WHERE id_aluno = 3