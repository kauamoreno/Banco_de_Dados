<h1 align="center">Desafio 4</h1> <br>

## Banco de Dados Contoso

<br>

* Contar o número de departamentos
~~~sql
SELECT
		COUNT(DISTINCT DepartmentName) AS 'Qtd. de Departamentos'
FROM
		DimEmployee
~~~
<br><br>

* Identificar quais departamentos existem
~~~sql
SELECT
		DepartmentName
FROM
		DimEmployee
GROUP BY DepartmentName
~~~
<br><br>

* Contar o número de funcionários da Contoso
~~~sql
SELECT COUNT(FirstName) AS 'Qtd. de Funcionário'
FROM DimEmployee
~~~
<br><br>

* Quantos funcionários por departamentos
~~~sql
SELECT
		DepartmentName,
		COUNT(*) AS 'Qtd. de Funcionários'
FROM
		DimEmployee
GROUP BY DepartmentName
~~~
<br><br>

* Total de funcionários por departamento em ordem crescente
~~~sql
SELECT
		DepartmentName,
		COUNT(*) AS 'Qtd. de Funcionários' 
FROM
		DimEmployee
GROUP BY DepartmentName
ORDER BY 'Qtd. de Funcionários' ASC
~~~
<br><br>

* Total de funcionários do sexo masculino e feminino
* Qual departamento tem mais funcionárias
* Qual departamento tem mais funcionários
* Qual departamento tem menos funcionárias
* Qual departamento tem menos funcionários
