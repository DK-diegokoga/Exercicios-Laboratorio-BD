--CRIAR NUM_DOCUMENTO, NOME_PESSOA, TITULO_PALESTRA, CARGA_HORARIA E DATA

CREATE VIEW v_Palestra
AS
	SELECT TITULO AS Titulo_Palestra, NOME AS Nome_Palestrante,CARGA_HORARIA, DATA,
		   p.CODIGO_PALESTRA
	FROM Palestra p, Palestrante pl
	WHERE p.CODIGO_PALESTRANTE = pl.CODIGO_PALESTRANTE

go

CREATE VIEW v_ALunos
AS
	SELECT a.RA AS Num_Documento, NOME AS Nome_Pessoa, 
		   CODIGO_PALESTRA
	FROM Aluno a, Alunos_Inscritos ai
	WHERE a.RA = ai.RA
	UNION
	SELECT na.RG + na.ORGAO_EXP AS Num_Documento, NOME AS Nome_Pessoa,
		   CODIGO_PALESTRA
	FROM Nao_Alunos na, Nao_Alunos_Inscritos nai
	WHERE na.RG = nai.RG AND na.ORGAO_EXP = nai.ORGAO_EXP

go


CREATE VIEW v_Lista1
AS
	SELECT a.Num_Documento,a.Nome_Pessoa, p.Titulo_Palestra, p.Nome_Palestrante,
		   p.CARGA_HORARIA, p.DATA
	FROM v_ALunos a, v_Palestra p
	WHERE a.CODIGO_PALESTRA = p.CODIGO_PALESTRA AND a.CODIGO_PALESTRA = 1

go

CREATE VIEW v_Lista2
AS
	SELECT a.Num_Documento,a.Nome_Pessoa, p.Titulo_Palestra, p.Nome_Palestrante,
		   p.CARGA_HORARIA, p.DATA
	FROM v_ALunos a, v_Palestra p
	WHERE a.CODIGO_PALESTRA = p.CODIGO_PALESTRA AND a.CODIGO_PALESTRA = 2

go

SELECT * FROM v_Lista1
ORDER BY Nome_Pessoa

go

SELECT * FROM v_Lista2
ORDER BY Nome_Pessoa