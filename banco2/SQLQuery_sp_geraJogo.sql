CREATE PROCEDURE sp_geraJogo (@codJogo INT, @timeA INT, @timeB INT, @rodada INT, @dataJogo VARCHAR(200))
AS
	DECLARE @randomNumero INT,
			@golsTimeA INT,
			@golsTimeB INT

	SET @golsTimeA = (SELECT CAST(RAND()*(9) AS INT))
	SET @golsTimeB = (SELECT CAST(RAND()*(9) AS INT))

	INSERT INTO Jogos (CodigoJogo, CodigoTimeA, CodigoTimeB, GolsTimeA, GolsTImeB, DataJogo, CodRodada) 
	VALUES (@codJogo, @timeA, @timeB, @golsTimeA, @golsTimeB, @dataJogo, @rodada);
