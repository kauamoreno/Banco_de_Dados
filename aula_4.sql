USE DBSenai

-- Criar tabela de compras e devolução
CREATE TABLE ComprasDevolução(
	id_pedido INT,
	nome_produto VARCHAR(100),
	departamento VARCHAR(50),
	valor_unitário FLOAT,
	quantidade INT,
	total_compra FLOAT,
	total_devolução FLOAT,
	data_registrada DATETIME
)

--------------------------------------------------------------------------------------

SELECT * FROM ComprasDevolução


-- Inserir dados de compra na tabela de compras
INSERT INTO ComprasDevolução(id_pedido,
					nome_produto,
					departamento,
					valor_unitário,
					quantidade,
					total_compra,
					data_registrada)
VALUES
	(1, 'Livro Lógica de Programação', 'Mecatrônica', 120.42, 100, 12042.00, 15/12/2022),
	(2, 'Livro Banco de Dados', 'TI', 108.40, 200, 21680, 15/12/2022),
	(3, 'Livro Eletricidade Básica', 'Elétrica', 160.84, 400, 64336, 22/12/2022),
	(4, 'Livro Eletrônica Digital', 'Eletrônica', 140.25, 200, 28050, 09/01/2023),
	(5, 'Livro Eletrônica Analógica', 'Eletrônica', 185.70, 200, 37140, 10/01/2023),
	(6, 'Livro Eletrônica de Potência', 'Eletrônica', 205.00, 200, 41000, 10/01/2023),
	(7, 'Livro Comandos Elétricos', 'Elétrica', 160.80, 400, 64320, 23/01/2023),
	(8, 'Livro Máquinas e Acionamentos', 'Elétrica', 192.46, 200, 38492, 25/01/2023),
	(9, 'Livro Instalações Elétricas', 'Elétrica', 216.46, 600, 129876, 10/02/2023),
	(10, 'Livro Instalações Prediais', 'Elétrica', 120.42, 100, 12042.00, 16/02/2023)

--------------------------------------------------------------------------------------------------

-- Inserir dados de devolução na tabela de compras
INSERT INTO ComprasDevolução(id_pedido,
					nome_produto,
					departamento,
					valor_unitário,
					quantidade,
					total_devolução,
					data_registrada)
VALUES

	(11, 'Livro Eletricidade Básica', 'Elétrica', 160.84, 200, 32168, 22/02/2023)

---------------------------------------------------------------------------------------------

-- Inserir dados de compra na tabela de compras
INSERT INTO ComprasDevolução(id_pedido,
					nome_produto,
					departamento,
					valor_unitário,
					quantidade,
					total_compra,
					data_registrada)
VALUES

	(12, 'Livro Eletrônica de Potência', 'Eletrônica', 205.00, 100, 20500, 27/02/2023),
	(13, 'Livro Banco de Dados', 'TI', 108.40, 300, 32520, 03/03/2022)


-------------------------------------------------------------------------------------------------

-- Inserir dados de devoluções na tabela de compras
INSERT INTO ComprasDevolução(id_pedido,
					nome_produto,
					departamento,
					valor_unitário,
					quantidade,
					total_devolução,
					data_registrada)
VALUES
	(14, 'Livro Máquinas e Acionamentos', 'Elétrica', 192.46, 200, 38492, 06/03/2023)

----------------------------------------------------------------------------------------------------------

-- Inserir dados de compra na tabela de compras
INSERT INTO ComprasDevolução(id_pedido,
					nome_produto,
					departamento,
					valor_unitário,
					quantidade,
					total_compra,
					data_registrada)
VALUES
	(15, 'Placa De Desenvolvimento Wifi Bluetooth Esp32s', 'Eletrônica', 36.00, 34, 1224.00, 07/03/2023),
	(16, 'Cabo Micro Usb 50 Cm Arduino Nodemcu Esp32 Celular', 'Eletrônica', 14.90, 34, 506.6, 07/03/2023),
	(17, 'Arduino Uno R3 SMD CH340', 'Eletrônica', 85.40, 20, 1708.00, 09/03/2023),
	(18, 'Arduino Uno R3 SMD CH340', 'Eletrônica', 85.40, 20, 1708.00, 09/03/2023)


-----------------------------------------------------------------------------------
-- Efetuar uma compra e uma devolução de produtos
INSERT INTO ComprasDevolução(id_pedido,
					nome_produto,
					departamento,
					valor_unitário,
					quantidade,
					total_compra,
					total_devolução,
					data_registrada)
VALUES
(19, 'Arduino Uno R3 SMD CH340', 'Eletrônica', 85.40, 1, 85.40,NULL, 10/03/2023),
(20, 'Livro Máquinas e Acionamentos', 'Elétrica', 192.46, 10, NULL,1924.60, 13/03/2023)



--------------------------------------------------
--Calcular valor total em compra
SELECT
		SUM(total_compra) AS 'Total Compra'
FROM
		ComprasDevolução


--Calcular valor total devolução
SELECT
		SUM(total_devolução) AS 'Total Devolução'
FROM
		ComprasDevolução

--------------------------------------------------
SELECT
		COUNT(*) AS 'Total compras/devoluções'
FROM
		ComprasDevolução
--------------------------------------------------

--------------------------------------------------

SELECT
		COUNT(total_compra) AS 'compras'
FROM
		ComprasDevolução
--------------------------------------------------

--------------------------------------------------
SELECT
DISTINCT valor_unitário
FROM
	ComprasDevolução
ORDER BY valor_unitário ASC
--------------------------------------------------

--------------------------------------------------
SELECT 
		MAX(valor_unitário) AS 'Valor Máximo'
FROM
		ComprasDevolução
--------------------------------------------------

--------------------------------------------------
SELECT
		MAX(valor_unitário) AS 'Valor MAX',
		MIN(valor_unitário) AS 'Valor MIN'
FROM
		ComprasDevolução
--------------------------------------------------

--------------------------------------------------
SELECT 
		nome_produto,
		SUM(total_devolução) 'Tot. Devolução'
FROM
		ComprasDevolução
WHERE total_devolução > 0
GROUP BY nome_produto
--------------------------------------------------

--Valor total de compra por departamento
SELECT
		departamento,
		SUM(total_compra) AS 'Tot. compra'
FROM
		ComprasDevolução
GROUP BY departamento


--Média de compra por produto
SELECT
		nome_produto,
		AVG(total_compra) AS 'Média de valores'
FROM
		ComprasDevolução
GROUP BY nome_produto


--Maximo valor de pedido por departamento
SELECT
		departamento,
		MAX(total_compra) AS 'Máximo valor de compra'
FROM
		ComprasDevolução
GROUP BY departamento


--Max e Min valor de pedido por departamento
SELECT
		departamento,
		MAX(total_compra) AS 'Máximo valor de compra',
		MIN(total_compra) AS 'Mínimo valor de compra'
FROM
		ComprasDevolução
GROUP BY departamento


--Valor total de compra por departamento por ordem descrescente
SELECT
		departamento,
		SUM(total_compra) AS 'Tot.Compra'
FROM
		ComprasDevolução
GROUP BY departamento
ORDER BY SUM(total_compra) DESC


--Quantidade de compra ou devolução por pedido maior que 2
SELECT
		nome_produto,
		COUNT(nome_produto) AS 'Total por compra/devolução'
FROM
		ComprasDevolução
GROUP BY nome_produto
HAVING COUNT(nome_produto) > 2


--Contar total de pedidos de compras ou devoluções
SELECT
		nome_produto,
		COUNT(*) AS 'Total compras/devoluções'
FROM
		ComprasDevolução
WHERE departamento = 'Elétrica'
GROUP BY nome_produto
HAVING COUNT(*) > 1