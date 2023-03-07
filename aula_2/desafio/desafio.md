<h1 align="center">Desafio 1</h1> <br>


### Crie um Banco de Dados com o nome de DBSenai
* Crie uma tabela com o nome Alunos;
* Crie 5 colunas nessa tabela e complete com os tipos de dados adequados aos valores:
1. id_aluno
2. registro_aluno
3. nome_aluno
4. cpf_aluno
5. data_nascimento

<br>

* Adicione os seguintes dados:
1. Registro 1 – (1, 100, 'Marcelo Silva', '123.789.654-01', '05/07/2006'),
2. Registro 2 – (2, 1002045, 'Cleonice Barros', 546.679.654-05', '24/04/2006'),
3. Registro 3 – (3, 1002284, 'Benedito Ferraz', '346.943.439-14', '13/01/2007'),

* Exibir toda a tabela Alunos

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

![Print1](https://user-images.githubusercontent.com/119445003/223440581-aa1eb0f5-4f3e-4fae-9c28-963e63df6018.png)

##

<br>

##

### Adicione mais um registro
1. Registro 4 – (1003571, 4, 'Wesley Gomes', '28/08/2004'),
* Exibir toda a tabela Alunos


~~~sql
INSERT INTO Alunos(registro_aluno, id_aluno, nome_aluno, data_nascimento)
VALUES
		(1003571, 4, 'Wesley Gomes', '28/08/2004')
		
SELECT * FROM Alunos
~~~~

![Print2](https://user-images.githubusercontent.com/119445003/223442602-abd7facd-bf03-4c9e-840e-1bd6f246b15a.png)

##

<br>

##

### Atualize o registro 4
1. Registro 4 – (‘557.047.865-22’)
* Exibir toda a tabela Alunos

~~~sql
UPDATE Alunos
SET cpf_aluno = '557.047.865-22'
WHERE id_aluno = 4
~~~~

![Print3](https://user-images.githubusercontent.com/119445003/223443591-7d66b53a-f1ec-4838-a1e1-4f8866fd168c.png)

##

<br>

##

### Exclua o Registro 2
* Exibir toda a tabela Alunos
* Adicione mais uma coluna na tabela Alunos com o nome telefone
* Adicione os seguintes dados:
1. id_aluno = 1, (11)91234-5678
2. id_aluno = 2, (11)94321-8765
3. id_aluno = 3, (11)92254-5665
* Exibir toda a tabela Alunos

~~~sql
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
~~~~

![Print5](https://user-images.githubusercontent.com/119445003/223444737-e3762398-f60e-44d1-9f8b-e35cd077f506.png)

<br>

> Este exercício foi resolvido por mim com o objetivo de exercitar meus conhecimentos práticos na criação e manipulação de um banco de dados. Através deste exercício, pude aprender como criar tabelas, inserir dados, atualizar e excluir registros, além de adicionar novas colunas na tabela existente. O projeto serviu como uma forma de aplicar o que aprendi durante as aulas e consolidar meu conhecimento em banco de dados.
