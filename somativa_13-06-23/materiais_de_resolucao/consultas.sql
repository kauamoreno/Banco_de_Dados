-- Consulta
USE DBSportVestuario

SELECT * FROM Produto
SELECT * FROM Cliente
SELECT * FROM Vendedor
SELECT * FROM Venda
SELECT * FROM Pedido



-- 1.	Total vendido por mês; (R$)------------
--CREATE VIEW VendasMes AS
SELECT
	DATEPART(month, dataVenda) AS 'Mês',
	SUM(precoUnitario * qtde) AS 'Total de Vendas'
FROM Venda
GROUP BY DATEPART(month, dataVenda)

SELECT * FROM VendasMes
-----------------------------------------------



-- 2.	Total de unidade vendida por tamanho;---
--CREATE VIEW QuantidadePorTamanho AS
SELECT
	DISTINCT Produto.tamanho AS 'Tamanho',
	COUNT(Venda.qtde) AS 'Total de Unidades'
FROM Produto
LEFT JOIN Venda
	ON Produto.cod_produto = Venda.cod_produto
GROUP BY Produto.tamanho

SELECT * FROM QuantidadePorTamanho
-----------------------------------------------



-- 3.	Total vendido por cidades (R$);----------
--CREATE VIEW VendasPorCidade AS
SELECT
	DISTINCT Cliente.cidade AS 'Cidade',
	SUM(Venda.precoUnitario * Venda.qtde) AS 'Total Vendido'
FROM Cliente
LEFT JOIN Pedido
	ON Cliente.cod_cliente = Pedido.cod_cliente
	LEFT JOIN Venda
		ON Pedido.cod_pedido = Venda.cod_pedido
GROUP BY Cliente.cidade

SELECT * FROM VendasPorCidade
-----------------------------------------------



-- 4.	Total de modelos vendidos.---------------
--CREATE VIEW VendasPorModelo AS
SELECT
	DISTINCT Produto.nomeProduto AS 'Modelo',
	COUNT(Venda.cod_produto) AS 'Qtd. Vendida'
FROM Produto
LEFT JOIN Venda
	ON Produto.cod_produto = Venda.cod_produto
GROUP BY Produto.nomeProduto

SELECT * FROM VendasPorModelo
-----------------------------------------------
