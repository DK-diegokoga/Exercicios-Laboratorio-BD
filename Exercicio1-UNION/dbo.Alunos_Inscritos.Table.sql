USE [EXERCICIO 1 - UNION]
GO
/****** Object:  Table [dbo].[Alunos_Inscritos]    Script Date: 07/08/2021 22:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alunos_Inscritos](
	[RA] [char](7) NOT NULL,
	[CODIGO_PALESTRA] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alunos_Inscritos]  WITH CHECK ADD  CONSTRAINT [FK_Alunos_Inscritos_Aluno] FOREIGN KEY([RA])
REFERENCES [dbo].[Aluno] ([RA])
GO
ALTER TABLE [dbo].[Alunos_Inscritos] CHECK CONSTRAINT [FK_Alunos_Inscritos_Aluno]
GO
ALTER TABLE [dbo].[Alunos_Inscritos]  WITH CHECK ADD  CONSTRAINT [FK_Alunos_Inscritos_Palestra] FOREIGN KEY([CODIGO_PALESTRA])
REFERENCES [dbo].[Palestra] ([CODIGO_PALESTRA])
GO
ALTER TABLE [dbo].[Alunos_Inscritos] CHECK CONSTRAINT [FK_Alunos_Inscritos_Palestra]
GO
