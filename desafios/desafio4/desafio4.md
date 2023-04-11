<h1 align="center">Desafio 4</h1> <br>
A empresa XYZ está passando por uma reestruturação e precisa analisar as informações dos seus funcionários para tomar decisões estratégicas. Eles têm o banco de dados Contoso com as informações necessárias para realizar essa análise. <br><br>

Você, como analista de dados da empresa XYZ, foi designado para realizar consultas no banco de dados Contoso para obter as informações necessárias. <br>
Com essas informações, você poderá apresentar um relatório para a equipe de gestão da empresa, ajudando-os a tomar decisões mais informadas sobre a reestruturação.
<br><br>

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
~~~sql
SELECT
		Gender,
		COUNT(Gender) AS 'Quantidade do genero'
FROM
		DimEmployee
GROUP BY Gender
~~~
<br><br>

* Qual departamento tem mais funcionárias
~~~sql
SELECT
		DepartmentName,
		COUNT(Gender) AS 'Qtd. de Funcionários por sexo'
FROM
		DimEmployee
WHERE Gender = 'F' 
GROUP BY DepartmentName, Gender 
ORDER BY COUNT(Gender) DESC
~~~
<br><br>

* Qual departamento tem mais funcionários
~~~sql
SELECT
		DepartmentName,
		COUNT(Gender) AS 'Qtd. de Funcionários por sexo'
FROM
		DimEmployee
WHERE Gender = 'M' 
GROUP BY DepartmentName, Gender 
ORDER BY COUNT(Gender) DESC
~~~
<br><br>

* Qual departamento tem menos funcionárias
~~~sql
SELECT
		DepartmentName,
		COUNT(Gender) AS 'Qtd. de Funcionárias'
FROM 
		DimEmployee
WHERE Gender = 'F' 
GROUP BY DepartmentName, Gender 
ORDER BY COUNT(Gender) 
~~~
<br><br>

* Qual departamento tem menos funcionários
~~~sql
SELECT
		DepartmentName,
		COUNT(Gender) AS 'Qtd. de Funcionários'
FROM
		DimEmployee
WHERE Gender = 'M' 
GROUP BY DepartmentName, Gender 
ORDER BY COUNT(Gender) 
~~~
<br>

> No Desafio 4, a gente colocou em prática nossas habilidades em SQL com consultas no banco de dados Contoso. Esse banco é bem famoso pra treinamentos e estudos de caso e tem muita informação sobre os funcionários de uma empresa, incluindo departamentos, gênero, cargo e outras coisas importantes.
