-- Primeiros passos no SQL Server

-- (1) Selecionar uma tabela --------------------------------
SELECT * FROM DimEmployee;


-- (2) Selecionar tabelas especificas -----------------------
SELECT
		FirstName,
		LastName,
		EmailAddress
FROM 
		DimEmployee


-- (3) Ordenar colunas --------------------------------------

--Maneira 1
SELECT 
		FirstName,
		LastName,
		EmailAddress
FROM 
		DimEmployee
ORDER BY
		FirstName ASC -- ASC == Crescente
		

--Maneira 2
SELECT 
		FirstName,
		LastName,
		EmailAddress
FROM 
		DimEmployee
ORDER BY
		FirstName,
		LastName


--Maneira 3
SELECT 
		FirstName,
		LastName,
		EmailAddress
FROM 
		DimEmployee
ORDER BY
		FirstName DESC, -- DESC == Decrescente
		LastName ASC


-- (4) Encontrar informações de colunas ---------------------

--Maneira 1
SELECT
		*
FROM
		DimProduct
WHERE
		ColorName = 'Red';


--Maneira 2
SELECT
		*
FROM
		DimProduct
WHERE
		ColorName IN ('Blue', 'Red');


-- Exercicíos -----------------------------------------------

-- ex01
SELECT
		EmployeeKey,
		FirstName,
		LastName,
		Gender	
FROM
		DimEmployee
WHERE
		Gender = 'F'


-- ex02
SELECT
		*
FROM
		DimGeography
WHERE
		RegionCountryName = 'Spain'


-- ex03
SELECT
		*
FROM
		DimGeography
WHERE
		RegionCountryName = 'China'


-- ex04
SELECT
		TOP(10) --As 10 primeiras linhas
		*
FROM
		DimEmployee


-- ex05
SELECT
		TOP(10) PERCENT --10% primeiros
		*
FROM
		DimEmployee


-- ex06
SELECT
		DISTINCT ColorName --Retorna tipos de itens da col
FROM
		DimProduct


-- ex07
SELECT
		FirstName AS PrimeiroNome, --Renomear coluna
		LastName AS Sobrenome
FROM
		DimEmployee