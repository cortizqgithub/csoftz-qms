USE [sqm]
GO
/****** Object:  Table [dbo].[Clas_Categorias]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clas_Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[szNombre] [nvarchar](255) NULL,
	[iTiempo] [float] NULL,
	[szImage] [nvarchar](255) NULL
) ON [PRIMARY]

GO
