/*
Exercício: Baseado na SP já criada no exercício anterior (Validação de CPF), 
criar uma DATABASE, com uma tabela cadastro (cpf, nome, logradouro, numero), 
a inserção de dados na tabela deve vir de uma SP que recebe cpf, nome, 
logradouro e número e, apenas realizeo insert se o CPF for válido. 
Lançar um RAISE ERROR para CPF inválido
*/


CREATE DATABASE BD_CADASTRO

GO

USE BD_CADASTRO

CREATE TABLE cadastro(
	cpf CHAR(11) PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL,
	logradouro VARCHAR(10) NOT NULL,
	numero INT NOT NULL
)

GO

CREATE PROCEDURE realizar_Cadastro(@opc AS CHAR(1),@cpf AS CHAR(11), @nome AS VARCHAR(50), 
				 @numero AS INT,@logradouro AS VARCHAR(10),@saida BIT OUTPUT)
AS
	DECLARE @soma as INT,
			@count as INT,
			@d1 as CHAR(1),
			@d2 as CHAR(1),
			@aux AS CHAR(1),
			@output AS BIT
	
	SET @aux = SUBSTRING(@CPF, 1, 1)
    SET @count = 11

	IF (UPPER(@opc) = 'I')
	BEGIN
		WHILE(@count > 0) 
		BEGIN
			if (CONVERT(CHAR, SUBSTRING(@CPF,@count,1)) <> @aux) 
			BEGIN 
				BREAK 
			END
			SET @count = @count - 1
		END
		IF (@count = 0) 
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

		IF (@output = 1)
		BEGIN
			INSERT INTO cadastro VALUES
			(@cpf,
		     @nome,
			 @logradouro,
			 @numero
			)
		END
		ELSE 
		BEGIN 
			RAISERROR('NÃO FOI POSSIVEL INSERIR OS VALORES', 16, 1)
		END
	END

GO

DECLARE @teste1 VARCHAR (200)
EXEC realizar_Cadastro 'I', '62337386015', 'Diego', 222, 'casa', @teste1 OUTPUT
PRINT @teste1
SELECT * FROM cadastro

GO

DECLARE @teste2 VARCHAR (200)
EXEC realizar_Cadastro 'I', '10101010101', 'Gustavo', 333, 'casa', @teste2 OUTPUT
PRINT @teste2
SELECT * FROM cadastro

GO

DECLARE @teste3 VARCHAR (200)
EXEC realizar_Cadastro 'I', '33333333333', 'Reginaldo', 444, 'casa', @teste3 OUTPUT
PRINT @teste3
SELECT * FROM cadastro

/*
DROP PROCEDURE realizar_Cadastro
*/