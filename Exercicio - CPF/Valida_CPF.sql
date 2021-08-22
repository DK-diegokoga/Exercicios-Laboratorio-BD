CREATE PROCEDURE VALIDA_CPF(@CPF AS CHAR(11), @output AS BIT OUTPUT) AS
    DECLARE @soma as INT
    DECLARE @count as INT
    DECLARE @d1 as CHAR(1)
    DECLARE @d2 as CHAR(1)
    DECLARE @aux AS CHAR(1)
    
    SET @aux = SUBSTRING(@CPF, 1, 1)
    SET @count = 11

    WHILE(@count > 0) 
	BEGIN
        if (CONVERT(CHAR, SUBSTRING(@CPF,@count,1)) <> @aux) 
		BEGIN 
			BREAK 
		END
        SET @count = @count - 1
    END
    If (@count = 0) 
	BEGIN
        SET @output = 0
		    RAISERROR('O VALOR DOS DIGITOS SÃO TODOS IGUAIS', 16, 1)
        RETURN
    END
    
    SET @soma = 0;
    SET @count = 10;

    WHILE(@count >= 2) 
	BEGIN
        SET @soma = @soma + (CONVERT(INT, SUBSTRING(@CPF,11 - @count,1)) * @count)
        SET @count = @count - 1
    END
    
    IF (@soma % 11 < 2) 
	BEGIN 
		SET @d1 = '0' 
	END
    ELSE 
	BEGIN 
		SET @d1 = CONVERT(CHAR,11 - (@soma % 11)) 
	END
    
    SET @soma= 0;
    SET @count = 11;

    WHILE(@count >= 2) 
	BEGIN
        SET @soma = @soma + (CONVERT(INT, SUBSTRING(@CPF,12 - @count,1)) * @count)
        SET @count = @count - 1
    END
    
    IF (@soma % 11 < 2) 
	BEGIN 
		SET @d2 = '0' 
	END
    ELSE 
	BEGIN 
		SET @d2 = CONVERT(CHAR,11 - (@soma % 11)) 
	END
    
    if (SUBSTRING(@CPF, 10, 2) = (@d1 + @d2)) 
	BEGIN
        SET @output = 1
    END 
	ELSE 
	BEGIN 
		SET @output = 0 
	END
	
GO

DECLARE @teste1 BIT
EXEC VALIDA_CPF '62337386015', @teste1 OUTPUT
PRINT @teste1

GO

DECLARE @teste2 BIT
EXEC VALIDA_CPF '33333333333', @teste2 OUTPUT
PRINT @teste2

/*
DROP PROCEDURE VALIDA_CPF
*/