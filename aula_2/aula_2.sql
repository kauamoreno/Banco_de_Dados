--------------------------- OPERAÇÔES CRUD ---------------------------

-- Criar Banco de Dados ----------------------------------------------
CREATE DATABASE DBTeste
USE DBTeste -- Para evitar estar em outro DB


-- Criar Tabela ------------------------------------------------------
CREATE TABLE Produtos(
	id_produto INT,
	nome_produto VARCHAR(200), -- String de tamanho 200
	data_validade DATETIME,
	preco_produto FLOAT
)


-- Add dados de uma tabela para outra --------------------------------
SELECT * FROM  Produtos -- Para visualização


INSERT INTO Produtos(id_produto, nome_produto, data_validade, preco_produto)
SELECT
		ProductKey,
		ProductName,
		AvailableForSaleDate,
		UnitPrice
FROM
		ContosoRetailDW.dbo.DimProduct


-- Excluir tabela ----------------------------------------------------
DROP TABLE Produtos


-- Add dados a uma tabela do zero ------------------------------------
INSERT INTO Produtos(
		id_produto, 
		nome_produto, 
		data_validade, 
		preco_produto)
VALUES
		(1, 'Aveia em flocos', '31/12/2024', 20),
		(2, 'Creme de leite', '23/10/2024', 12.55),
		(3, 'Biscoito', '02/06/2040', 34.99)


-- Atribuir valores em ordem diferente -------------------------------
INSERT INTO Produtos(
		nome_produto,
		id_produto, 
		data_validade)
VALUES
		('Ameixa', 4, 30/4/2034)


-- Atualizar um atributo da coluna -----------------------------------
UPDATE Produtos
SET nome_produto = 'Azeitona recheada'
WHERE id_produto = 2

UPDATE Produtos
SET preco_produto = 18.22
WHERE id_produto = 4


-- Excluir um registro da tabela -------------------------------------
DELETE 
FROM Produtos 
WHERE id_produto = 2