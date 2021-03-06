USE [EXERCICIO 1 - UNION]
GO
/****** Object:  View [dbo].[v_ALunos]    Script Date: 07/08/2021 22:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_ALunos]
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
GO
