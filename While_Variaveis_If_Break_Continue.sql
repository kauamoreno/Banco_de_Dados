--Criando um loop
DECLARE @Contador INT
SET @Contador = 1

WHILE @Contador <= 10
BEGIN
	PRINT	'N�: ' + CONVERT(VARCHAR, @Contador)
	SET @Contador += 1
END
------------------------------------------------------------------------
--Break, interrompendo um loop
DECLARE @varContador2 INT
SET @varContador2 = 1

WHILE @varContador2 <= 10
BEGIN
	PRINT	'N�: ' + CONVERT(VARCHAR, @varContador2)
	IF @varContador2 = 8
	BREAK
	SET @varContador2 = @varContador2 + 1
END

--Loop While: CONTINUE
--Fa�a um contador de 1 a 15, onde os n�meros 7 e 13 n�o sejam impressos na tela
DECLARE @varContador INT = 0
--SET @varContador = 0

While @varContador < 15
BEGIN
	SET @varContador += 1
	IF @varContador = 7 OR @varContador = 13
	CONTINUE
	PRINT 'O valor �: ' + CONVERT(VARCHAR, @varContador)
END