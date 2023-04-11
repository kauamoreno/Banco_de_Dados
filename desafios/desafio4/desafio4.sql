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
		

--Total de funcionários do sexo masculino e feminino
SELECT
		Gender,
		COUNT(*) AS 'Qtd. de Funcionários por sexo'
FROM
		DimEmployee
GROUP BY Gender


--Qual departamento tem mais funcionárias
SELECT
		DepartmentName,
		COUNT(Gender) AS 'Qtd. de Funcionários por sexo'
FROM
		DimEmployee
WHERE Gender = 'F' 
GROUP BY DepartmentName, Gender 
ORDER BY COUNT(Gender) DESC


--Qual departamento tem mais funcionários
SELECT
		DepartmentName,
		COUNT(Gender) AS 'Qtd. de Funcionários por sexo'
FROM
		DimEmployee
WHERE Gender = 'M' 
GROUP BY DepartmentName, Gender 
ORDER BY COUNT(Gender) DESC


--Qual departamento tem menos funcionárias
SELECT
		DepartmentName,
		COUNT(Gender) AS 'Qtd. de Funcionárias'
FROM 
		DimEmployee
WHERE Gender = 'F' 
GROUP BY DepartmentName, Gender 
ORDER BY COUNT(Gender) 


--Qual departamento tem menos funcionários
SELECT
		DepartmentName,
		COUNT(Gender) AS 'Qtd. de Funcionários'
FROM
		DimEmployee
WHERE Gender = 'M' 
GROUP BY DepartmentName, Gender 
ORDER BY COUNT(Gender) 