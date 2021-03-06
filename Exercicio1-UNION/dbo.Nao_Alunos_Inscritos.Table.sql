USE [EXERCICIO 1 - UNION]
GO
/****** Object:  Table [dbo].[Nao_Alunos_Inscritos]    Script Date: 07/08/2021 22:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nao_Alunos_Inscritos](
	[CODIGO_PALESTRA] [int] NOT NULL,
	[RG] [varchar](9) NOT NULL,
	[ORGAO_EXP] [char](5) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Nao_Alunos_Inscritos]  WITH CHECK ADD  CONSTRAINT [FK_Nao_Alunos_Inscritos_Nao_Alunos] FOREIGN KEY([RG], [ORGAO_EXP])
REFERENCES [dbo].[Nao_Alunos] ([RG], [ORGAO_EXP])
GO
ALTER TABLE [dbo].[Nao_Alunos_Inscritos] CHECK CONSTRAINT [FK_Nao_Alunos_Inscritos_Nao_Alunos]
GO
ALTER TABLE [dbo].[Nao_Alunos_Inscritos]  WITH CHECK ADD  CONSTRAINT [FK_Nao_Alunos_Inscritos_Palestra] FOREIGN KEY([CODIGO_PALESTRA])
REFERENCES [dbo].[Palestra] ([CODIGO_PALESTRA])
GO
ALTER TABLE [dbo].[Nao_Alunos_Inscritos] CHECK CONSTRAINT [FK_Nao_Alunos_Inscritos_Palestra]
GO
