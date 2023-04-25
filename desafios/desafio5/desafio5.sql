
SELECT * FROM Aluno
SELECT * FROM AtribuiçãoAula
SELECT * FROM Curso
SELECT * FROM Formacao
SELECT * FROM ListaAluno
SELECT * FROM Professor
SELECT * FROM Turma
SELECT * FROM Unidade_Curricular

-------------------------------------------------------------------------
-- 1. O total de professores cadastrados;
SELECT COUNT(id_professor) AS 'Qtd. Professores'
FROM Professor


-------------------------------------------------------------------------
-- 2. O total de professores do sexo feminino e masculino;
-- Não informado o sexo dos professores no banco de dados


-------------------------------------------------------------------------
-- 3. O nome dos professores em ordem crescente;
SELECT 
	nome_professor
FROM Professor
ORDER BY (nome_professor) ASC


-------------------------------------------------------------------------
-- 4. Que atribuição de aula foram dadas para cada professor;
SELECT
	id_atribuicao,
	nome_turma,
	nome_unidade_Curricular,
	nome_Professor
FROM
	AtribuiçãoAula
LEFT JOIN Professor
	ON AtribuiçãoAula.id_professor = Professor.id_professor
LEFT JOIN Turma
	ON AtribuiçãoAula.id_turma = Turma.id_turma
LEFT JOIN Unidade_Curricular
	ON AtribuiçãoAula.id_unid_Curricular = Unidade_Curricular.id_unid_Curricular


-------------------------------------------------------------------------
-- 5. Quais os professores que não receberam nenhuma atribuição;
SELECT
	nome_professor AS 'Professor',
	nome_unidade_Curricular
FROM
	AtribuiçãoAula	
FULL JOIN Professor
	ON AtribuiçãoAula.id_professor = Professor.id_professor
LEFT JOIN Unidade_Curricular
	ON AtribuiçãoAula.id_unid_Curricular = Unidade_Curricular.id_unid_Curricular
WHERE nome_unidade_Curricular IS NULL

-------------------------------------------------------------------------
-- 6. Qual o total de curso para cada formação; CT, CAI e FIC;
-- Não há compatibilidade entre as duas tabelas


-------------------------------------------------------------------------
-- 7. Qual o número de professor destinado a mesma turma;
SELECT 
	Turma.nome_turma,
	COUNT(Professor.id_professor) AS 'Qtd. Professores'
FROM
	AtribuiçãoAula
LEFT JOIN Turma
	ON AtribuiçãoAula.id_turma = Turma.id_turma
LEFT JOIN Professor
	ON AtribuiçãoAula.id_professor = Professor.id_professor
GROUP BY Turma.nome_turma 


-------------------------------------------------------------------------
-- 8. Quais os professores que pegaram mais de uma turma e quantas foram;
SELECT
	nome_professor,
	COUNT(DISTINCT nome_turma) AS 'qtd. Turma'
FROM
	AtribuiçãoAula
LEFT JOIN Professor
	ON AtribuiçãoAula.id_professor = Professor.id_professor
LEFT JOIN Turma
	ON AtribuiçãoAula.id_turma = Turma.id_turma
GROUP BY nome_professor
HAVING COUNT(DISTINCT nome_turma) > 1;


-------------------------------------------------------------------------
-- 9. O total de turma registrada;
SELECT
COUNT(*) AS 'Total de Turmas'
FROM
	Turma


-------------------------------------------------------------------------
-- 10. Qual o total de turmas formadas;
SELECT
	COUNT(nome_turma) AS 'qtd de turmas'
FROM
	Turma


-------------------------------------------------------------------------
-- 11. Quantos alunos existem em cada turma;
SELECT
	nome_turma,
	COUNT(primeiroNome) 'qtd. Aluno'
FROM
	ListaAluno
LEFT JOIN Turma
	ON ListaAluno.id_turma = Turma.id_turma
LEFT JOIN Aluno
	ON ListaAluno.id_aluno = Aluno.id_aluno
GROUP BY nome_turma


-------------------------------------------------------------------------
-- 12. Quais alunos foram matriculados em mais de curso, e quais os cursos;
-- Não é possivel verificar, pois não possui uma entidade intermediaria


-------------------------------------------------------------------------
-- 13. Qual a turma que tem mais alunos;
SELECT
	nome_turma,
	COUNT(primeiroNome) 'qtd. Aluno'
FROM
	ListaAluno
LEFT JOIN Turma
	ON ListaAluno.id_turma = Turma.id_turma
LEFT JOIN Aluno
	ON ListaAluno.id_aluno = Aluno.id_aluno
GROUP BY nome_turma
ORDER BY COUNT(primeiroNome) DESC


-------------------------------------------------------------------------
-- 14. Qual a turma que tem menos alunos.
SELECT
	nome_turma,
	COUNT(primeiroNome) 'qtd. Aluno'
FROM
	ListaAluno
LEFT JOIN Turma
	ON ListaAluno.id_turma = Turma.id_turma
LEFT JOIN Aluno
	ON ListaAluno.id_aluno = Aluno.id_aluno
GROUP BY nome_turma
ORDER BY COUNT(primeiroNome) ASC