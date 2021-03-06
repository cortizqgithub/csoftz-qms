USE [sqm]
GO
/****** Object:  Table [dbo].[JuridicaCategorias]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JuridicaCategorias](
	[idJuridicaCategoria] [int] IDENTITY(1,1) NOT NULL,
	[szNombre] [varchar](500) NULL,
 CONSTRAINT [PK_JuridicaCategorias] PRIMARY KEY CLUSTERED 
(
	[idJuridicaCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
