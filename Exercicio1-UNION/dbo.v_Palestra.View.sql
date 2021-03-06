USE [EXERCICIO 1 - UNION]
GO
/****** Object:  View [dbo].[v_Palestra]    Script Date: 07/08/2021 22:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Palestra]
AS
	SELECT TITULO AS Titulo_Palestra, NOME AS Nome_Palestrante,CARGA_HORARIA, DATA,
		   p.CODIGO_PALESTRA
	FROM Palestra p, Palestrante pl
	WHERE p.CODIGO_PALESTRANTE = pl.CODIGO_PALESTRANTE
GO
