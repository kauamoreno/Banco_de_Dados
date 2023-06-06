### 1.	O total de Clientes;
```sql
SELECT COUNT(*) AS 'Total de Clientes' 
FROM Cliente
```
![1](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/2bf40c60-ac46-4c4d-a9c0-bd3ab9d05ce8)

<br><br>
### 2.	O total de Vendedores;
```sql
SELECT COUNT(*) AS 'Total de Vendedores'
FROM Vendedor
```
![2](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/1e8d9880-c88f-4306-86b2-67e0d0d1c036)

<br><br>
### 3.	O total de Produtos;
```sql
SELECT COUNT(*) AS 'Total de Produto'
FROM Produto
```
![3](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/d7fe012a-c5db-46aa-968e-6c0d2c04fddf)

<br><br>
### 4.	Quais as cores dos produtos ofertado;
```sql
SELECT cor FROM Produto
GROUP BY cor
```
![4](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/25748799-3333-4c09-be1e-d714a7f04159)

<br><br>
### 5.	Número de clientes por gênero;
```sql
SELECT 
	DISTINCT sexo AS 'Sexo',
	COUNT(sexo) AS 'Quantidade'
FROM Cliente
GROUP BY sexo
```
![5](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/b51d938d-e448-4441-855f-8a821240e59f)

<br><br>
### 6.	Exibir a tabela e os gráficos abaixo.
![image](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/eb4fd7a3-6a10-4aad-b7e3-1626cae1806c)
![image](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/2f1c0c21-0113-4fe1-89b7-a92c96d3beb1)
![image](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/c21c368b-701e-4520-9a1c-cf2ef61152b3)

<br><br>
## Gráfico Completo SQL SERVER

![image](https://github.com/kauamoreno/Banco_de_Dados/assets/119445003/0c0a7ad3-8101-47cd-a7e2-dd490dd36807)
> Clique na imagem para melhor visualização

<br>

```sql
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

```

<br><br>

### Arquivos SQL e EXEL utilizados 👉👉 [Diretório](https://github.com/kauamoreno/Banco_de_Dados/tree/main/formativa_06-06-23/materiais_da_resolucao)
