
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



-------------------------------------------------------------------------
-- 6. Qual o total de curso para cada formação; CT, CAI e FIC;


-------------------------------------------------------------------------
-- 7. Qual o número de professor destinado a mesma turma;


-- 8. Quais os professores que pegaram mais de uma turma e quantas foram;
-- 9. O total de turma registrada;
-- 10. Qual o total de turmas formadas;
-- 11. Quantos alunos existem em cada turma;
-- 12. Quais alunos foram matriculados em mais de curso, e quais os cursos;
-- 13. Qual a turma que tem mais alunos;
-- 14. Qual a turma que tem menos alunos.