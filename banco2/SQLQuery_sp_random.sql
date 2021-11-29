CREATE PROCEDURE sp_random (@A INT)
AS
	DECLARE @randomNumero INT

	SET @randomNumero = (SELECT CAST(RAND()*(16-1+1)+1 AS INT))
	SELECT * FROM Times WHERE CodigoTime = @randomNumero
GO

EXEC sp_random 1

--DROP PROCEDURE sp_random
