USE [EXERCICIO 1 - UNION]
GO
/****** Object:  Table [dbo].[Palestrante]    Script Date: 07/08/2021 22:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Palestrante](
	[CODIGO_PALESTRANTE] [int] NOT NULL,
	[NOME] [varchar](250) NOT NULL,
	[EMPRESA] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Palestrante] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PALESTRANTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
