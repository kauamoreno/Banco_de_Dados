-- Criar Banco de Dados ---------------------------------------------------------------
CREATE DATABASE DBSportVestuario
USE DBSportVestuario -- Para evitar estar em outro DB


---------------------------------------------------------------------------------------
-- Criar tabela Cliente
CREATE TABLE Cliente(
	cod_cliente INT,
	primeiroNome VARCHAR(200),
	segundo_nome VARCHAR(200),
	sexo VARCHAR(200),
	cidade VARCHAR(200),
)

-- Inserir dados da tabela Cliente
INSERT INTO Cliente(
	cod_cliente,
	primeiroNome,
	segundo_nome,
	sexo,
	cidade
)
VALUES
	(1, 'Luiz', 'Gustavo', 'm', 'Mogi das Cruzes'),
	(2, 'Pedro', 'Amorim', 'm', 'Suzano'),
	(3, 'Jair', 'Rodrigues', 'm', 'Mogi das Cruzes'),
	(4, 'Maria', 'Fidalgo', 'f', 'Mogi das Cruzes'),
	(5, 'Sônia', 'Silva', 'f', 'Ferraz de Vasconcelo'),
	(6, 'Amaral', 'Buarque', 'm', 'Suzano'),
	(7, 'Regina', 'Montanaro', 'f', 'Poá'),
	(8, 'Tereza', 'Agostin', 'f', 'Mogi das Cruzes'),
	(9, 'Carmem', 'Lúcia', 'f', 'Poá'),
	(10, 'Lucas', 'Toledo', 'm', 'Suzano'),
	(11, 'Ricardo', 'Silva', 'm', 'Ferraz de Vasconcelo'),
	(12, 'Manoel', 'Federico', 'm', 'Mogi das Cruzes'),
	(13, 'Henrique', 'D`vila', 'm', 'Suzano'),
	(14, 'Lúcia', 'Monark', 'f', 'Mogi das Cruzes'),
	(15, 'Paloma', 'de Oliveira', 'f', 'Mogi das Cruzes'),
	(16, 'Bruna', 'Bittencort', 'f', 'Mogi das Cruzes'),
	(17, 'Marcelo', 'Ricardo', 'm', 'Ferraz de Vasconcelo'),
	(18, 'Edna', 'Rocha', 'f', 'Suzano'),
	(19, 'Vitória', 'Xavier', 'f', 'Poá'),
	(20, 'Celso', 'Moraes', 'm', 'Mogi das Cruzes')


	SELECT * FROM Cliente
---------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------
-- Criar tabela Produto
CREATE TABLE Produto(
	cod_produto INT,
	nomeProduto VARCHAR(200),
	tamanho INT,
	genero VARCHAR(200),
	cor VARCHAR(200),
)

-- Inserir dados da tabela Produtos
INSERT INTO Produto(
	cod_produto,
	nomeProduto,
	tamanho,
	genero,
	cor
)
VALUES
	(1, 'TÊNIS OLYMPIKUS EASY', 35, 'feminino', 'marrom'),
	(2, 'TÊNIS OLYMPIKUS EASY', 35, 'feminino', 'azul'),
	(3, 'TÊNIS OLYMPIKUS EASY', 35, 'feminino', 'bege'),
	(4, 'Tênis Nike Revolution 6', 37, 'Masculino', 'Preto'),
	(5, 'Tênis Nike Revolution 6', 38, 'Masculino', 'Preto'),
	(6, 'Tênis Nike Revolution 6', 39, 'Masculino', 'Preto'),
	(7, 'Tênis adidas VS Pace 2.0', 37, 'Masculino', 'Branco'),
	(8, 'Tênis adidas VS Pace 2.0', 38, 'Masculino', 'Branco'),
	(9, 'Tênis adidas VS Pace 2.0', 39, 'Masculino', 'Branco'),
	(10, 'Tênis Puma Carina Lux L BDP', 35, 'Feminino', 'Branco'),
	(11, 'Tênis Puma Carina Lux L BDP', 36, 'Feminino', 'Branco'),
	(12, 'Tênis Puma Carina Lux L BDP', 37, 'Feminino', 'Branco'),
	(13, 'Tênis Mizuno Cool Ride', 35, 'Feminino', 'Rosa'),
	(14, 'Tênis adidas Ultraboost 22', 37, 'Masculino', 'Bege'),
	(15, 'Tênis adidas Ultraboost 22', 38, 'Masculino', 'Bege'),
	(16, 'Tênis adidas Ultraboost 22', 39, 'Masculino', 'Bege')


	SELECT * FROM Produto
---------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------
-- Criar tabela Pedido
CREATE TABLE Pedido(
	cod_pedido INT,	
	cod_cliente INT	
)

-- Inserir dados da tabela Pedido
INSERT INTO Pedido(
	cod_pedido,
	cod_cliente
)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 1),
	(8, 7),
	(9, 8),
	(10, 3),
	(11, 9),
	(12, 5),
	(13, 1),
	(14, 10),
	(15, 11),
	(16, 12),
	(17, 8),
	(18, 12),
	(19, 2),
	(20, 9),
	(21, 13),
	(22, 14),
	(23, 15),
	(24, 16),
	(25, 8),
	(26, 16),
	(27, 17),
	(28, 18),
	(29, 2),
	(30, 14),
	(31, 19),
	(32, 20),
	(33, 8),
	(34, 7),
	(35, 6),
	(36, 8)

	SELECT * FROM Pedido
---------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------
-- Criar tabela Venda
CREATE TABLE Venda(
	cod_pedido INT,
	cod_vendedor INT,
	cod_produto INT,
	preco FLOAT,
	qtd_produto INT,
	dataVenda DATETIME
)

-- Inserir dados da tabela Venda
INSERT INTO Venda(
	cod_pedido,
	cod_vendedor,
	cod_produto,
	preco,
	qtd_produto,
	dataVenda
)
VALUES
	(1, 1, 10, 449.49,1, '27/02/2020'),
	(2, 1, 5, 259.00,1, '27/02/2020'),
	(3, 1, 7, 229.99,2, '01/03/2020'),
	(4, 1, 4, 259.00,1, '01/03/2020'),
	(5, 2, 13, 262.65,3, '15/03/2020'),
	(6, 1, 16, 749.99,1, '20/03/2020'),
	(7, 2, 14, 749.99,1, '22/03/2020'),
	(8, 3, 11, 449.49,1, '02/04/2020'),
	(9, 3, 15, 749.99,1, '03/04/2020'),
	(10, 2, 8, 229.99,2, '08/04/2020'),
	(11, 1, 7, 229.99,1, '27/04/2020'),
	(12, 2, 9, 229.99,1, '11/05/2020'),
	(13, 3, 1, 149.99,1, '02/05/2020'),
	(14, 4, 3, 149.99,3, '02/05/2020'),
	(15, 2, 2, 149.99,1, '02/05/2020'),
	(16, 2, 2, 149.99,1, '06/05/2020'),
	(17, 4, 5, 149.99,1, '10/05/2020'),
	(18, 5, 5, 149.99,4, '16/05/2020'),
	(19, 4, 5, 149.99,1, '22/05/2020'),
	(20, 6, 11, 449.49,1, '02/06/2020'),
	(21, 1, 10, 449.49,1, '12/06/2020'),
	(22, 1, 11, 449.49,1, '25/06/2020'),
	(23, 4, 11, 449.49,2, '30/06/2020'),
	(24, 7, 5, 259.00,1, '03/07/2020'),
	(25, 1, 4, 259.00,2, '05/07/2020'),
	(26, 4, 5, 259.00,1, '05/07/2020'),
	(27, 5, 13, 262.65,3, '06/07/2020'),
	(28, 6, 13, 262.65,2, '09/07/2020'),
	(29, 4, 10, 449.49,1, '11/07/2020'),
	(30, 1, 2, 149.99,1, '10/07/2020'),
	(31, 4, 2, 149.99,1, '22/08/2020'),
	(32, 7, 1, 149.99,1, '22/08/2020'),
	(33, 4, 6, 259.00,3, '23/08/2020'),
	(34, 1, 5, 259.00,1, '05/09/2020'),
	(35, 4, 5, 259.00,1, '06/09/2020'),
	(36, 1, 13, 262.65,1, '10/09/2020')

	SELECT * FROM Venda
---------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------
-- Criar tabela Vendedor
CREATE TABLE Vendedor(
	cod_vendedor INT,
	nomeVendedor VARCHAR(200),
	sexo_vendedor VARCHAR(200),
	dataAdmissao DATETIME,
	dataDemissao DATETIME,
)


-- Inserir dados da tabela Vendedor
INSERT INTO Vendedor(
	cod_vendedor,
	nomeVendedor,
	sexo_vendedor,
	dataAdmissao,
	dataDemissao
)
VALUES
	(1, 'Fabio Siqueira', 'm', '20/02/2020', null),
	(2, 'Márcia Lima', 'f', '15/03/2020', '07/05/2020'),
	(3, 'João Cleber', 'm', '26/03/2020', '03/05/2020'),
	(4, 'Marisa Montreal', 'f', '02/05/2020', null),
	(5, 'Gilson Tadeu', 'm', '16/05/2020', null),
	(6, 'Munique Evans', 'f', '02/06/2020', null),
	(7, 'Hugo Pascal', 'm', '03/07/2020', null)

	SELECT * FROM Vendedor