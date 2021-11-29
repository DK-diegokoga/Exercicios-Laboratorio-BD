CREATE PROCEDURE sp_insereFalta(@RA BIGINT, @CodMateria INT, @Presenca1 VARCHAR(1), @Presenca2 VARCHAR(1), @Presenca3 VARCHAR(1), @Presenca4 VARCHAR(1), @Data VARCHAR(12))
AS
DECLARE @TOTAL INT

SET @TOTAL = 0

IF @Presenca1 = 'F'
BEGIN
	SET @TOTAL = 1
END

IF @Presenca2 = 'F'
BEGIN
	SET @TOTAL += 1
END

IF @Presenca3 = 'F'
BEGIN
	SET @TOTAL += 1
END

IF @Presenca4 = 'F'
BEGIN
	SET @TOTAL += 1
END

INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4, TOTALFALTAS) VALUES(
@RA, @codMateria, @Data, @Presenca1, @Presenca2, @Presenca3, @Presenca4, @TOTAL);

--DROP PROCEDURE sp_insereFalta
