CREATE DATABASE DBSenai

CREATE TABLE Cursos(
	id_curso INT,
	nome_curso VARCHAR(200),
	carga_horaria INT
)

INSERT INTO Cursos(id_curso, nome_curso, carga_horaria)
VALUES
		(1, 'Téc. Eletroeletrônica', 1600),
		(2, 'Téc. Mecatrônica', 1600),
		(3, 'Téc. Des. Sistemas', 1600),
		(4, 'Téc. Mecânica de fabricação', 1600),
		(5, 'CAI eletricista de manutenção', 1600),
		(6, 'CAI mecânico de manutenção', 1600)

SELECT * FROM Cursos