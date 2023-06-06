-- Consulta das tabelas
SELECT * FROM Cliente
SELECT * FROM Produto
SELECT * FROM Pedido
SELECT * FROM Venda
SELECT * FROM Vendedor



-- 1. O total de clientes
SELECT COUNT(*) AS 'Total de Clientes' 
FROM Cliente



-- 2. O total de vendedores
SELECT COUNT(*) AS 'Total de Vendedores'
FROM Vendedor



-- 3. O total de produto
SELECT COUNT(*) AS 'Total de Produto'
FROM Produto



-- 4. Quais as cores dos produtos ofertados
SELECT cor FROM Produto
GROUP BY cor



-- 5. Número de clientes por gênero
SELECT 
	DISTINCT sexo AS 'Sexo',
	COUNT(sexo) AS 'Quantidade'
FROM Cliente
GROUP BY sexo



-- 6. Exibindo a tabela e os gráficos
--CREATE VIEW TabelaVendas AS
SELECT 
	Pedido.cod_cliente AS 'COD.CLIENTE',
	CONCAT(Cliente.primeiroNome, ' ', Cliente.segundo_nome) AS 'CLIENTE',
	Cliente.cidade AS 'CIDADE',
	Cliente.sexo AS 'SEXO',
	Pedido.cod_pedido AS 'COD.PEDIDO',
	Venda.cod_produto AS 'COD.PRODUTO',
	Produto.nomeProduto AS 'PRODUTO',
	Produto.tamanho AS 'TAMANHO',
	Produto.genero AS 'GÊNERO',
	Produto.cor AS 'COR',
	Venda.preco AS 'PREÇO UNITÁRIO',
	Venda.qtd_produto AS 'QUANTIDADE',
	Venda.dataVenda AS 'DATA DA VENDA',
	Venda.cod_vendedor AS 'COD.VENDEDOR',
	Vendedor.nomeVendedor AS 'VENDEDOR',
	Vendedor.dataAdmissao AS 'DATA ADMISSÃO',
	Vendedor.dataDemissao AS 'DATA DE DEMISSÃO'
FROM Pedido
LEFT JOIN Cliente
	ON Pedido.cod_cliente = Cliente.cod_cliente
LEFT JOIN Venda
	ON Pedido.cod_pedido = Venda.cod_pedido
		LEFT JOIN Produto
			ON Venda.cod_produto = Produto.cod_produto
		LEFT JOIN Vendedor
			ON Venda.cod_vendedor = Vendedor.cod_vendedor


SELECT * FROM TabelaVendas



-- TOTAL DE CLIENTES POR CIDADE
CREATE VIEW ClientePorCidade AS
SELECT 
	DISTINCT cidade AS 'Cidade',
	COUNT(*) AS 'Quantidade'
FROM Cliente
GROUP BY cidade

SELECT * FROM ClientePorCidade