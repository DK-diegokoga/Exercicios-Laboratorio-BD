USE [EXERCICIO 1 - UNION]
GO
/****** Object:  View [dbo].[v_Lista2]    Script Date: 07/08/2021 22:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Lista2]
AS
	SELECT a.Num_Documento,a.Nome_Pessoa, p.Titulo_Palestra, p.Nome_Palestrante,
		   p.CARGA_HORARIA, p.DATA
	FROM v_ALunos a, v_Palestra p
	WHERE a.CODIGO_PALESTRA = p.CODIGO_PALESTRA AND a.CODIGO_PALESTRA = 2
GO
