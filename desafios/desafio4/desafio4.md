<h1 align="center">Desafio 4</h1> <br>

### Banco de Dados Contoso.

* Contar o número de departamentos
~~~sql
SELECT
		COUNT(DISTINCT DepartmentName) AS 'Qtd. de Departamentos'
FROM
		DimEmployee
~~~
<br>

* Identificar quais departamentos existem
* Contar o número de funcionários da Contoso
* Quantos funcionários por departamentos
* Total de funcionários por departamento em ordem crescente
* Total de funcionários do sexo masculino e feminino
* Qual departamento tem mais funcionárias
* Qual departamento tem mais funcionários
* Qual departamento tem menos funcionárias
* Qual departamento tem menos funcionários
