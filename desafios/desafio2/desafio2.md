<h1 align="center">Desafio 1</h1> <br>


### Crie um Banco de Dados com o nome de DBSenai

* Crie uma tabela com o nome Cursos;
* Crie 3 colunas nessa tabela e complete com os tipos de dados adequados aos valores:
1. id_curso
2. nome_curso
3. carga_horária

~~~sql
CREATE DATABASE DBSenai

CREATE TABLE Cursos(
	id_curso INT,
	nome_curso VARCHAR(200),
	carga_horaria INT
)
~~~

<br>

* Adicione os seguintes dados:
1. Registro – (1, Téc. Eletroeletrônica, 1600),
2. Registro – (2, Téc. Mecatrônica, 1600),
3. Registro – (3, Téc. Des. Sistemas, 1600),
4. Registro – (4, Téc. Mecânica de fabricação, 1600),
5. Registro – (5, CAI eletricista de manutenção, 1600),
6. Registro – (6, CAI mecânico de manutenção, 1600),

~~~sql
INSERT INTO Cursos(id_curso, nome_curso, carga_horaria)
VALUES
		(1, 'Téc. Eletroeletrônica', 1600),
		(2, 'Téc. Mecatrônica', 1600),
		(3, 'Téc. Des. Sistemas', 1600),
		(4, 'Téc. Mecânica de fabricação', 1600),
		(5, 'CAI eletricista de manutenção', 1600),
		(6, 'CAI mecânico de manutenção', 1600)
~~~

<br>

* Exibir toda a tabela cursos
