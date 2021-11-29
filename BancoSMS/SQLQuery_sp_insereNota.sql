CREATE PROCEDURE sp_insereNotas(@RA BIGINT, @DISCIPLINA INT,@MATERIA INT, @P1 DECIMAL(10,2), @P2 DECIMAL(10,2), @T DECIMAL(10,2), @PE DECIMAL(10,2))
AS
DECLARE @NOTA DECIMAL(10,2),
		@Peso1 DECIMAL(10,2),
		@Peso2 DECIMAL(10,2),
		@PesoT DECIMAL(10,2),
		@PesoPre DECIMAL(10,2),
		@APROVADO VARCHAR(200),
		@REPROVADO VARCHAR(200),
		@AUX BIT 

		SET @APROVADO = 'APROVADO'
		SET @REPROVADO = 'REPROVADO'

IF @RA = (SELECT PK_RA FROM tbAluno WHERE PK_RA = @RA)
BEGIN
	SET @AUX = 1
	IF @DISCIPLINA = (SELECT PK_Codigo FROM tbDisciplina WHERE PK_Codigo = @DISCIPLINA)
	BEGIN
		SET @AUX = 1 
	END
	ELSE
	BEGIN
		RAISERROR('DISCIPLINA NÃO EXISTE',16,1)
		SET @AUX = 0
	END
END
ELSE
BEGIN
	RAISERROR('ALUNO NÃO EXISTE',16,1)
	SET @AUX = 0
END


IF @AUX = 1
BEGIN
	IF @Materia = (SELECT PK_Codigo FROM tbAvaliacao WHERE PK_Codigo = 1)
	BEGIN
		SET @Peso1 = (SELECT Peso_P1 FROM tbAvaliacao WHERE PK_Codigo = 1)
		SET @Peso2 = (SELECT Peso_P2 FROM tbAvaliacao WHERE PK_Codigo = 1)
		SET @PesoT = (SELECT Peso_T FROM tbAvaliacao WHERE PK_Codigo = 1)

		IF @P1 <= 10 AND @P1 >= 0 AND @P2 <= 10 AND @P2 >= 0 AND @T <= 10 AND @T >= 0 AND @PE <= 10 AND @PE >= 0
		BEGIN
			SET @P1 = @P1 * @Peso1
			SET @P2 = @P2 * @Peso2
			SET @T  = @T  * @PesoT
			SET @NOTA = @P1 + @P2 + @T 
			PRINT (@NOTA)
			INSERT INTO tbNotas(FK_RA_Aluno,FK_Codigo_Disciplina,FK_Codigo_Avaliacao,Nota) VALUES (@RA,@DISCIPLINA,@MATERIA,@NOTA)
			IF @NOTA >= 6
			BEGIN
				PRINT (@APROVADO)
				UPDATE tbAluno SET Situacao = @APROVADO WHERE PK_RA = @RA
			END
			IF @NOTA < 6
			BEGIN
				PRINT (@REPROVADO)
				UPDATE tbAluno SET Situacao = @REPROVADO WHERE PK_RA = @RA
			END
		END
		ELSE
		BEGIN
			RAISERROR('VALOR INVALIDO!',16,1)
		END 
	END

	IF @Materia  = (SELECT PK_Codigo FROM tbAvaliacao WHERE PK_Codigo = 2)
	BEGIN
		SET @Peso1 = (SELECT Peso_P1 FROM tbAvaliacao WHERE PK_Codigo = 2)
		SET @Peso2 = (SELECT Peso_P2 FROM tbAvaliacao WHERE PK_Codigo = 2)
		SET @PesoT = (SELECT Peso_T FROM tbAvaliacao WHERE PK_Codigo = 2)
		SET @PesoPre = (SELECT Peso_PreExame FROM tbAvaliacao WHERE PK_Codigo = 2)

		IF @P1 <= 10 AND @P1 >= 0 AND @P2 <= 10 AND @P2 >= 0 AND @T <= 10 AND @T >= 0 AND @PE <= 10 AND @PE >= 0
		BEGIN
			SET @P1 = @P1 * @Peso1
			SET @P2 = @P2 * @Peso2
			SET @T  = @T  * @PesoT
			SET @PE = @PE * @PesoPre
			SET @NOTA = @P1 + @P2 + @T + @PE 
			PRINT (@NOTA)
			INSERT INTO tbNotas(FK_RA_Aluno,FK_Codigo_Disciplina,FK_Codigo_Avaliacao,Nota) VALUES (@RA,@DISCIPLINA,@MATERIA,@NOTA)
			IF @NOTA >= 6
			BEGIN
				PRINT (@APROVADO)
				UPDATE tbAluno SET Situacao = @APROVADO WHERE PK_RA = @RA
			END
			IF @NOTA < 6
			BEGIN
				PRINT (@REPROVADO)
				UPDATE tbAluno SET Situacao = @REPROVADO WHERE PK_RA = @RA
			END
		END
		ELSE
		BEGIN
			RAISERROR('VALOR INVALIDO!',16,1)
		END 
	END

	IF @Materia  = (SELECT PK_Codigo FROM tbAvaliacao WHERE PK_Codigo = 3)
	BEGIN
		SET @Peso1 = (SELECT Peso_P1 FROM tbAvaliacao WHERE PK_Codigo = 3)
		SET @Peso2 = (SELECT Peso_P2 FROM tbAvaliacao WHERE PK_Codigo = 3)
		SET @PesoT = (SELECT Peso_T FROM tbAvaliacao WHERE PK_Codigo = 3)

		IF @P1 <= 10 AND @P1 >= 0 AND @P2 <= 10 AND @P2 >= 0 AND @T <= 10 AND @T >= 0 AND @PE <= 10 AND @PE >= 0
		BEGIN
			SET @P1 = @P1 * @Peso1
			SET @P2 = @P2 * @Peso2
			SET @T  = @T  * @PesoT
			SET @NOTA = @P1 + @P2 + @T 
			PRINT (@NOTA)
			INSERT INTO tbNotas(FK_RA_Aluno,FK_Codigo_Disciplina,FK_Codigo_Avaliacao,Nota) VALUES (@RA,@DISCIPLINA,@MATERIA,@NOTA)
			IF @NOTA >= 6
			BEGIN
				PRINT (@APROVADO)
				UPDATE tbAluno SET Situacao = @APROVADO WHERE PK_RA = @RA
			END
			IF @NOTA < 6
			BEGIN
				PRINT (@REPROVADO)
				UPDATE tbAluno SET Situacao = @REPROVADO WHERE PK_RA = @RA
			END
		END
		ELSE
		BEGIN
			RAISERROR('VALOR INVALIDO!',16,1)
		END 
	END

	IF @Materia  = (SELECT PK_Codigo FROM tbAvaliacao WHERE PK_Codigo = 4)
	BEGIN
		SET @Peso1 = (SELECT Peso_P1 FROM tbAvaliacao WHERE PK_Codigo = 4)
		SET @Peso2 = (SELECT Peso_P2 FROM tbAvaliacao WHERE PK_Codigo = 4)

		IF @P1 <= 10 AND @P1 >= 0 AND @P2 <= 10 AND @P2 >= 0 AND @T <= 10 AND @T >= 0 AND @PE <= 10 AND @PE >= 0
		BEGIN
			SET @P1 = @P1 * @Peso1
			SET @P2 = @P2 * @Peso2
			SET @NOTA = @P1 + @P2
			PRINT (@NOTA)
			INSERT INTO tbNotas(FK_RA_Aluno,FK_Codigo_Disciplina,FK_Codigo_Avaliacao,Nota) VALUES (@RA,@DISCIPLINA,@MATERIA,@NOTA)
			IF @NOTA >= 6
			BEGIN
				PRINT (@APROVADO)
				UPDATE tbAluno SET Situacao = @APROVADO WHERE PK_RA = @RA
			END
			IF @NOTA < 6
			BEGIN
				PRINT (@REPROVADO)
				UPDATE tbAluno SET Situacao = @REPROVADO WHERE PK_RA = @RA
			END
		END
		ELSE
		BEGIN
			RAISERROR('VALOR INVALIDO!',16,1)
		END 
	END
END
ELSE
BEGIN
	RAISERROR('ALUNO OU DISCIPLINA NÃO ENCONTRADO',16,1)
END

--DROP PROCEDURE sp_insereNotas
go

EXEC sp_insereNotas 1110481922056,4203010,1, 2, 2, 5, 0
EXEC sp_insereNotas 1110481922056,4203010,2, 10, 10, 5, 5
EXEC sp_insereNotas 1110481922056,4203010,3, 10, 10, 10, 0
EXEC sp_insereNotas 1110481922056,4203010,4, 10, 5, 0, 0 

GO

select * from tbNotas
SELECT * FROM tbAluno

GO 

DELETE FROM tbNotas