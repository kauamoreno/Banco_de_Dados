SELECT * FROM DimEmployee

--Contar o número de departamentos
SELECT
		COUNT(DISTINCT DepartmentName) AS 'Qtd. de Departamentos'
FROM
		DimEmployee


--Selecionando os nomes dos departamentos
SELECT
		DepartmentName
FROM
		DimEmployee
GROUP BY DepartmentName


--Contar o numero de funcionários
SELECT COUNT(FirstName) AS 'Qtd. de Funcionário'
FROM DimEmployee
	

--Contar o numero de funcionarios por departamentos
SELECT
		DepartmentName,
		COUNT(*) AS 'Qtd. de Funcionários'
FROM
		DimEmployee
GROUP BY DepartmentName


--Total de funcionários por departamento em ordem crescente
SELECT
		DepartmentName,
		COUNT(*) AS 'Qtd. de Funcionários' 
FROM
		DimEmployee
GROUP BY DepartmentName
ORDER BY 'Qtd. de Funcionários' ASC
		