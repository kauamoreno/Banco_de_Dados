
--UPPER E LOWER------------------------------------------------------------
DECLARE @Nome VARCHAR(50) = 'kauã, KeViN e NiKOLAS'

SELECT @Nome AS 'Original', UPPER(@Nome) AS 'Nome Maiusculo', LOWER(@Nome) AS 'Nome Minusculo'


--REPLACE------------------------------------------------------------------
DECLARE @produto VARCHAR(100) = 'Este produto vem em azul e preto.'
SET @produto = REPLACE(@produto, 'azul', 'verde')

SELECT @produto AS 'Produto'


--TRANSLATE E STUFF--------------------------------------------------------
DECLARE @letras VARCHAR(20) = 'ABCDEFGHIJKL KIGECA'
SELECT @letras AS 'Original', STUFF(@letras, 1, 6, 'frase') AS 'STUFF', TRANSLATE(@letras, 'ACEGIK', '123456') AS 'TRANSLATE'