--Criando um loop
DECLARE @Contador INT
SET @Contador = 1

WHILE @Contador <= 10
BEGIN
	PRINT	'Nº: ' + CONVERT(VARCHAR, @Contador)
	SET @Contador += 1
END
------------------------------------------------------------------------
--Break, interrompendo um loop
DECLARE @varContador2 INT
SET @varContador2 = 1

WHILE @varContador2 <= 10
BEGIN
	PRINT	'Nº: ' + CONVERT(VARCHAR, @varContador2)
	IF @varContador2 = 8
	BREAK
	SET @varContador2 = @varContador2 + 1
END

--Loop While: CONTINUE
--Faça um contador de 1 a 15, onde os números 7 e 13 não sejam impressos na tela
DECLARE @varContador INT = 0
--SET @varContador = 0

While @varContador < 15
BEGIN
	SET @varContador += 1
	IF @varContador = 7 OR @varContador = 13
	CONTINUE
	PRINT 'O valor é: ' + CONVERT(VARCHAR, @varContador)
END