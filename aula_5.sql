--ESTA USANDO O BANCO DE DADOS DO DESAFIO5

SELECT
		id_atribuicao,
		id_Turma,
		id_unid_Curricular,
		Professor.id_Professor,
		nome_professor
FROM
		AtribuiçãoAula
LEFT JOIN Professor
		ON AtribuiçãoAula.id_professor = Professor.id_professor


----------------------------------------------------------------------
SELECT
		id_atribuicao,
		nome_turma,
		id_unid_Curricular,
		nome_professor
FROM
		AtribuiçãoAula
LEFT JOIN Professor
		ON AtribuiçãoAula.id_professor = Professor.id_professor
LEFT JOIN Turma
		ON AtribuiçãoAula.id_Turma = Turma.id_turma


----------------------------------------------------------------------
SELECT
		id_atribuicao,
		nome_turma,
		nome_unidade_Curricular,
		nome_professor
FROM
		AtribuiçãoAula
LEFT JOIN Professor
		ON AtribuiçãoAula.id_professor = Professor.id_professor
LEFT JOIN Turma
		ON AtribuiçãoAula.id_Turma = Turma.id_turma
LEFT JOIN Unidade_Curricular
		ON AtribuiçãoAula.id_unid_Curricular = Unidade_Curricular.id_unid_Curricular