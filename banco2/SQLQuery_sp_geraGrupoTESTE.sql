CREATE PROCEDURE sp_geraGrupoTESTE (@A INT)
AS
	DECLARE @randomNumero INT,

			@cheioGrupoA INT,
			@cheioGrupoB INT,
			@cheioGrupoC INT,
			@cheioGrupoD INT,

			@codTime2 INT,
			@codTime3 INT,
			@codTime4 INT,

			@nomeGrupo1 CHAR,
			@nomeGrupo2 CHAR,
			@nomeGrupo3 CHAR,
			@nomeGrupo4 CHAR,

			@TIME5 INT,
			@TIME6 INT,
			@TIME7 INT,
			@TIME8 INT,
			@TIME9 INT,
			@TIME10 INT,
			@TIME11 INT,
			@TIME12 INT,
			@TIME13 INT,
			@TIME14 INT,
			@TIME15 INT,
			@TIME16 INT,

			@SAOPAULO INT,
			@PALMEIRAS INT,
			@CORINTIANS INT,
			@SANTOS INT

----------------------ENCHENDO AS VARIAVEIS------------------

	SET @cheioGrupoA = 0
	SET @cheioGrupoB = 0
	SET @cheioGrupoC = 0
	SET @cheioGrupoD = 0

	SET @nomeGrupo4 = 'D'
	SET @nomeGrupo3 = 'C'
	SET @nomeGrupo2 = 'B'
	SET @nomeGrupo1 = 'A'

	SET	@codTime2 = 0
	SET	@codTime3 = 0
	SET	@codTime4 = 0

	SET	@TIME5 = 5
	SET	@TIME6 = 6
	SET	@TIME7 = 7
	SET	@TIME8 = 8
	SET	@TIME9 = 9
	SET	@TIME10 = 10
	SET	@TIME11 = 11
	SET	@TIME12 = 12
	SET	@TIME13 = 13
	SET	@TIME14 = 14
	SET	@TIME15 = 15
	SET	@TIME16 = 16

	SET @SAOPAULO = 1
	SET	@PALMEIRAS = 2
	SET	@CORINTIANS = 3
	SET	@SANTOS = 4

---------------------------INICIANDO A LÓGICA--------------------

WHILE (@cheioGrupoA <> 1) ---------------------------ENCENDO GRUPO A--------------------
BEGIN
	SET @randomNumero = (SELECT CAST(RAND()*(16-5+1)+5 AS INT))
	IF (@codTime2 = 0) --------------ENCHENDO codTime2
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime2 = @TIME5
			SET @TIME5 = 0
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime2 = @TIME6
			SET @TIME6 = 0
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime2 = @TIME7
			SET @TIME7 = 0
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime2 = @TIME8
			SET @TIME8 = 0
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime2 = @TIME9
			SET @TIME9 = 0
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime2 = @TIME10
			SET @TIME10 = 0
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime2 = @TIME11
			SET @TIME11 = 0
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime2 = @TIME12
			SET @TIME12 = 0
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime2 = @TIME13
			SET @TIME13 = 0
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime2 = @TIME14
			SET @TIME14 = 0
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime2 = @TIME15
			SET @TIME15 = 0
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime2 = @TIME16
			SET @TIME16 = 0
		END
	END
	IF (@codTime3 = 0) --------------ENCHENDO codTime3
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime3 = @TIME5
			SET @TIME5 = 0
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime3 = @TIME6
			SET @TIME6 = 0
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime3 = @TIME7
			SET @TIME7 = 0
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime3 = @TIME8
			SET @TIME8 = 0
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime3 = @TIME9
			SET @TIME9 = 0
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime3 = @TIME10
			SET @TIME10 = 0
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime3 = @TIME11
			SET @TIME11 = 0
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime3 = @TIME12
			SET @TIME12 = 0
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime3 = @TIME13
			SET @TIME13 = 0
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime3 = @TIME14
			SET @TIME14 = 0
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime3 = @TIME15
			SET @TIME15 = 0
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime3 = @TIME16
			SET @TIME16 = 0
		END
	END
	IF (@codTime4 = 0) --------------ENCHENDO codTime4
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime4 = @TIME5
			SET @TIME5 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime4 = @TIME6
			SET @TIME6 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime4 = @TIME7
			SET @TIME7 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime4 = @TIME8
			SET @TIME8 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime4 = @TIME9
			SET @TIME9 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime4 = @TIME10
			SET @TIME10 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime4 = @TIME11
			SET @TIME11 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime4 = @TIME12
			SET @TIME12 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime4 = @TIME13
			SET @TIME13 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime4 = @TIME14
			SET @TIME14 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime4 = @TIME15
			SET @TIME15 = 0
			SET @cheioGrupoA = 1
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime4 = @TIME16
			SET @TIME16 = 0
			SET @cheioGrupoA = 1
		END
	END
END --------------FINAL WHILE GRUPO A

INSERT INTO Grupos (NomeGrupo, CodigoTime1, CodigoTime2, CodigoTime3, CodigoTime4) VALUES (@nomeGrupo1, @SAOPAULO, @codTime2, @codTime3, @codTime4)
------------------------------------------------------QUEBRA PARA O PROXIMO GRUPO ----------------------------------

SET	@codTime2 = 0
SET	@codTime3 = 0
SET	@codTime4 = 0

WHILE (@cheioGrupoB <> 1) ---------------------------ENCHENDO GRUPO B-------------------
BEGIN
	SET @randomNumero = (SELECT CAST(RAND()*(16-5+1)+5 AS INT))
	IF (@codTime2 = 0) --------------ENCHENDO codTime2
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime2 = @TIME5
			SET @TIME5 = 0
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime2 = @TIME6
			SET @TIME6 = 0
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime2 = @TIME7
			SET @TIME7 = 0
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime2 = @TIME8
			SET @TIME8 = 0
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime2 = @TIME9
			SET @TIME9 = 0
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime2 = @TIME10
			SET @TIME10 = 0
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime2 = @TIME11
			SET @TIME11 = 0
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime2 = @TIME12
			SET @TIME12 = 0
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime2 = @TIME13
			SET @TIME13 = 0
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime2 = @TIME14
			SET @TIME14 = 0
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime2 = @TIME15
			SET @TIME15 = 0
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime2 = @TIME16
			SET @TIME16 = 0
		END
	END
	IF (@codTime3 = 0) --------------ENCHENDO codTime3
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime3 = @TIME5
			SET @TIME5 = 0
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime3 = @TIME6
			SET @TIME6 = 0
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime3 = @TIME7
			SET @TIME7 = 0
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime3 = @TIME8
			SET @TIME8 = 0
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime3 = @TIME9
			SET @TIME9 = 0
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime3 = @TIME10
			SET @TIME10 = 0
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime3 = @TIME11
			SET @TIME11 = 0
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime3 = @TIME12
			SET @TIME12 = 0
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime3 = @TIME13
			SET @TIME13 = 0
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime3 = @TIME14
			SET @TIME14 = 0
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime3 = @TIME15
			SET @TIME15 = 0
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime3 = @TIME16
			SET @TIME16 = 0
		END
	END
	IF (@codTime4 = 0) --------------ENCHENDO codTime4
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime4 = @TIME5
			SET @TIME5 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime4 = @TIME6
			SET @TIME6 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime4 = @TIME7
			SET @TIME7 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime4 = @TIME8
			SET @TIME8 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime4 = @TIME9
			SET @TIME9 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime4 = @TIME10
			SET @TIME10 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime4 = @TIME11
			SET @TIME11 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime4 = @TIME12
			SET @TIME12 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime4 = @TIME13
			SET @TIME13 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime4 = @TIME14
			SET @TIME14 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime4 = @TIME15
			SET @TIME15 = 0
			SET @cheioGrupoB = 1
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime4 = @TIME16
			SET @TIME16 = 0
			SET @cheioGrupoB = 1
		END
	END
END --------------FINAL WHILE GRUPO B

INSERT INTO Grupos (NomeGrupo, CodigoTime1, CodigoTime2, CodigoTime3, CodigoTime4) VALUES (@nomeGrupo3, @PALMEIRAS, @codTime2, @codTime3, @codTime4)
------------------------------------------------------QUEBRA PARA O PROXIMO GRUPO ----------------------------------


SET	@codTime2 = 0
SET	@codTime3 = 0
SET	@codTime4 = 0

WHILE (@cheioGrupoC <> 1) ---------------------------ENCHENDO GRUPO C-------------------
BEGIN
	SET @randomNumero = (SELECT CAST(RAND()*(16-5+1)+5 AS INT))
	IF (@codTime2 = 0) --------------ENCHENDO codTime2
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime2 = @TIME5
			SET @TIME5 = 0
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime2 = @TIME6
			SET @TIME6 = 0
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime2 = @TIME7
			SET @TIME7 = 0
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime2 = @TIME8
			SET @TIME8 = 0
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime2 = @TIME9
			SET @TIME9 = 0
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime2 = @TIME10
			SET @TIME10 = 0
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime2 = @TIME11
			SET @TIME11 = 0
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime2 = @TIME12
			SET @TIME12 = 0
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime2 = @TIME13
			SET @TIME13 = 0
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime2 = @TIME14
			SET @TIME14 = 0
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime2 = @TIME15
			SET @TIME15 = 0
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime2 = @TIME16
			SET @TIME16 = 0
		END
	END
	IF (@codTime3 = 0) --------------ENCHENDO codTime3
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime3 = @TIME5
			SET @TIME5 = 0
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime3 = @TIME6
			SET @TIME6 = 0
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime3 = @TIME7
			SET @TIME7 = 0
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime3 = @TIME8
			SET @TIME8 = 0
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime3 = @TIME9
			SET @TIME9 = 0
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime3 = @TIME10
			SET @TIME10 = 0
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime3 = @TIME11
			SET @TIME11 = 0
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime3 = @TIME12
			SET @TIME12 = 0
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime3 = @TIME13
			SET @TIME13 = 0
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime3 = @TIME14
			SET @TIME14 = 0
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime3 = @TIME15
			SET @TIME15 = 0
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime3 = @TIME16
			SET @TIME16 = 0
		END
	END
	IF (@codTime4 = 0) --------------ENCHENDO codTime4
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime4 = @TIME5
			SET @TIME5 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime4 = @TIME6
			SET @TIME6 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime4 = @TIME7
			SET @TIME7 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime4 = @TIME8
			SET @TIME8 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime4 = @TIME9
			SET @TIME9 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime4 = @TIME10
			SET @TIME10 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime4 = @TIME11
			SET @TIME11 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime4 = @TIME12
			SET @TIME12 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime4 = @TIME13
			SET @TIME13 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime4 = @TIME14
			SET @TIME14 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime4 = @TIME15
			SET @TIME15 = 0
			SET @cheioGrupoC = 1
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime4 = @TIME16
			SET @TIME16 = 0
			SET @cheioGrupoC = 1
		END
	END
END --------------FINAL WHILE GRUPO C

INSERT INTO Grupos (NomeGrupo, CodigoTime1, CodigoTime2, CodigoTime3, CodigoTime4) VALUES (@nomeGrupo2, @CORINTIANS, @codTime2, @codTime3, @codTime4)
------------------------------------------------------QUEBRA PARA O PROXIMO GRUPO ----------------------------------


SET	@codTime2 = 0
SET	@codTime3 = 0
SET	@codTime4 = 0

WHILE (@cheioGrupoD <> 1) ---------------------------ENCHENDO GRUPO D-------------------
BEGIN
	SET @randomNumero = (SELECT CAST(RAND()*(16-5+1)+5 AS INT))
	IF (@codTime2 = 0) --------------ENCHENDO codTime2
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime2 = @TIME5
			SET @TIME5 = 0
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime2 = @TIME6
			SET @TIME6 = 0
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime2 = @TIME7
			SET @TIME7 = 0
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime2 = @TIME8
			SET @TIME8 = 0
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime2 = @TIME9
			SET @TIME9 = 0
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime2 = @TIME10
			SET @TIME10 = 0
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime2 = @TIME11
			SET @TIME11 = 0
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime2 = @TIME12
			SET @TIME12 = 0
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime2 = @TIME13
			SET @TIME13 = 0
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime2 = @TIME14
			SET @TIME14 = 0
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime2 = @TIME15
			SET @TIME15 = 0
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime2 = @TIME16
			SET @TIME16 = 0
		END
	END
	IF (@codTime3 = 0) --------------ENCHENDO codTime3
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime3 = @TIME5
			SET @TIME5 = 0
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime3 = @TIME6
			SET @TIME6 = 0
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime3 = @TIME7
			SET @TIME7 = 0
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime3 = @TIME8
			SET @TIME8 = 0
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime3 = @TIME9
			SET @TIME9 = 0
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime3 = @TIME10
			SET @TIME10 = 0
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime3 = @TIME11
			SET @TIME11 = 0
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime3 = @TIME12
			SET @TIME12 = 0
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime3 = @TIME13
			SET @TIME13 = 0
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime3 = @TIME14
			SET @TIME14 = 0
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime3 = @TIME15
			SET @TIME15 = 0
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime3 = @TIME16
			SET @TIME16 = 0
		END
	END
	IF (@codTime4 = 0) --------------ENCHENDO codTime4
	BEGIN
		IF (@randomNumero = @TIME5)
		BEGIN
			SET @codTime4 = @TIME5
			SET @TIME5 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME6)
		BEGIN
			SET @codTime4 = @TIME6
			SET @TIME6 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME7)
		BEGIN
			SET @codTime4 = @TIME7
			SET @TIME7 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME8)
		BEGIN
			SET @codTime4 = @TIME8
			SET @TIME8 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME9)
		BEGIN
			SET @codTime4 = @TIME9
			SET @TIME9 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME10)
		BEGIN
			SET @codTime4 = @TIME10
			SET @TIME10 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME11)
		BEGIN
			SET @codTime4 = @TIME11
			SET @TIME11 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME12)
		BEGIN
			SET @codTime4 = @TIME12
			SET @TIME12 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME13)
		BEGIN
			SET @codTime4 = @TIME13
			SET @TIME13 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME14)
		BEGIN
			SET @codTime4 = @TIME14
			SET @TIME14 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME15)
		BEGIN
			SET @codTime4 = @TIME15
			SET @TIME15 = 0
			SET @cheioGrupoD = 1
		END
		IF (@randomNumero = @TIME16)
		BEGIN
			SET @codTime4 = @TIME16
			SET @TIME16 = 0
			SET @cheioGrupoD = 1
		END
	END
END --------------FINAL WHILE GRUPO D

INSERT INTO Grupos (NomeGrupo, CodigoTime1, CodigoTime2, CodigoTime3, CodigoTime4) VALUES (@nomeGrupo4, @SANTOS, @codTime2, @codTime3, @codTime4)

SELECT * FROM Grupos

go

EXEC sp_geraGrupoTESTE 1
--DROP PROCEDURE sp_geraGrupoTESTE