CREATE PROCEDURE sp_insereFalta(@RA BIGINT, @CodMateria INT, @Presenca1 VARCHAR(1), @Presenca2 VARCHAR(1), @Presenca3 VARCHAR(1), @Presenca4 VARCHAR(1), @Data VARCHAR(12))
AS

INSERT INTO tbFaltas (FK_RA_Aluno, FK_Codigo_Disciplina, PK_Data, Presenca1, Presenca2, Presenca3, Presenca4) VALUES(
@RA, @codMateria, @Data, @Presenca1, @Presenca2, @Presenca3, @Presenca4);

--DROP PROCEDURE sp_insereFalta
