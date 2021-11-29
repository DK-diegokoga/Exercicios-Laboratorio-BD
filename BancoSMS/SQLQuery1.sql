go
--Criando a função
CREATE FUNCTION fn_media (@MATERIA INT, @P1 DECIMAL(10,2), @P2 DECIMAL(10,2), @T DECIMAL(10,2), @PE DECIMAL(10,2))
RETURNS @TABLE TABLE(
RA_ALUNO INT,
NOME_ALUNO VARCHAR(200),
NOTA_P1 DECIMAL(10,2),
NOTA_P2 DECIMAL(10,2),
NOTA_T DECIMAL(10,2),
NOTA_PRE DECIMAL(10,2),
MEDIA_FINAL DECIMAL(10,2),
SITUACAO VARCHAR(200)
)
AS
BEGIN
DECLARE @RA BIGINT,
		@FK_RA BIGINT,
		@MEDIA_FINAL DECIMAL(10,2),
		@SITUACAO VARCHAR(200)
    
	SELECT @RA  = PK_RA FROM tbAluno WHERE PK_RA = 1110481922056
	SELECT @FK_RA = FK_RA_Aluno FROM tbNotas WHERE FK_RA_Aluno = 




    RETURN;
END;
 
go
--Calculando a média de todos os alunos
SELECT aluno,
       dbo.fn_media(aluno) AS Media
  FROM notas;
go
--Trazendo a maior média
SELECT aluno,
       dbo.fn_media(aluno)
  FROM notas
 WHERE dbo.fn_media(aluno) = (SELECT MAX(dbo.fn_media(n.aluno)) FROM notas n);