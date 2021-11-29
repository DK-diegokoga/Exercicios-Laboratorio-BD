CREATE PROCEDURE sp_confereJogo (@timeA INT, @timeB INT,  @RESULTADO INt output )
AS
	DECLARE @NumeroA INT, @NumeroB INT --out @RESULTADO INT 

	set @RESULTADO = 0

	SELECT @NumeroA = count(codigojogo) FROM jogos  WHERE CodigoTimeA = @timeA and CodigoTimeB = @timeB	
	
	SELECT @NumeroB = count(codigojogo) FROM jogos  WHERE CodigoTimeA = @timeB and CodigoTimeB = @timeA

	SET @RESULTADO =  @NumeroA + @NumeroB

	/*IF (@RESULTADO > 1)
		BEGIN
			print(@RESULTADO)
			SELECT * FROM jogos WHERE CodigoTimeA = @timeA and CodigoTimeB = @timeB
			UNION
			SELECT * FROM jogos WHERE CodigoTimeA = @timeB and CodigoTimeB = @timeA
	END*/
	RETURN @RESULTADO;