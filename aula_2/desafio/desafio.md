<h1 align="center">Desafio 1</h1> <br>

•	Crie um Banco de Dados com o nome de DBSenai;
•	Crie uma tabela com o nome Alunos;
Crie 5 colunas nessa tabela e complete com os tipos de dados adequados aos valores:
- id_aluno
- registro_aluno
- nome_aluno
- cpf_aluno
- data_nascimento
•	Adicione os seguintes dados:
	Registro 1 – (1, 100, 'Marcelo Silva', '123.789.654-01', '05/07/2006'),
	Registro 2 – (2, 1002045, 'Cleonice Barros', 546.679.654-05', '24/04/2006'),
Registro 3 – (3, 1002284, 'Benedito Ferraz', '346.943.439-14', '13/01/2007'),
•	Exibir toda a tabela Alunos

~~~sql
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
~~~



•	Adicione mais um registro
Registro 4 – (1003571, 4, 'Wesley Gomes', '28/08/2004'),
•	Exibir toda a tabela Alunos
•	Atualize o registro 4
	Registro 4 – (‘557.047.865-22’)
•	Exibir toda a tabela Alunos
•	Exclua o Registro 2
•	Exibir toda a tabela Alunos
•	Adicione mais uma coluna na tabela Alunos com o nome telefone
•	Adicione os seguintes dados:
- id_aluno = 1, (11)91234-5678
- id_aluno = 2, (11)94321-8765
- id_aluno = 3, (11)92254-5665
•	Exibir toda a tabela Alunos
