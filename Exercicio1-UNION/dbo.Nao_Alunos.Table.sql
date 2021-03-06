USE [EXERCICIO 1 - UNION]
GO
/****** Object:  Table [dbo].[Nao_Alunos]    Script Date: 07/08/2021 22:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nao_Alunos](
	[RG] [varchar](9) NOT NULL,
	[ORGAO_EXP] [char](5) NOT NULL,
	[NOME] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Nao_Alunos] PRIMARY KEY CLUSTERED 
(
	[RG] ASC,
	[ORGAO_EXP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
