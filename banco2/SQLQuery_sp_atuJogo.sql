CREATE PROCEDURE sp_atuJogo (@codJogo INT)
AS

DECLARE @golsTimeA INT,
		@golsTimeB INT

SELECT @golsTimeA = GolsTimeA, @golsTimeB = GolsTImeB FROM Jogos WHERE CodigoJogo = @codJogo

if (@golsTimeA > @golsTimeB)
BEGIN
	UPDATE Jogos SET Resultado = 'Time A venceu' WHERE CodigoJogo = @codJogo
END

if (@golsTimeB > @golsTimeA)
BEGIN
	UPDATE Jogos SET Resultado = 'Time B venceu' WHERE CodigoJogo = @codJogo
END

if (@golsTimeA = @golsTimeB)
BEGIN
	UPDATE Jogos SET Resultado = 'Empate' WHERE CodigoJogo = @codJogo
END