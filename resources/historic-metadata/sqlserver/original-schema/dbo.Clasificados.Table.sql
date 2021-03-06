USE [sqm]
GO
/****** Object:  Table [dbo].[Clasificados]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificados](
	[IdClasificado] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NULL,
	[IdOpcion] [int] NULL,
	[bAprobado] [int] NULL,
	[dtFechaFin] [int] NULL,
	[szDescripcion] [ntext] NULL,
	[szNombre] [nvarchar](255) NULL,
	[szApellido] [nvarchar](255) NULL,
	[szCiudad] [nvarchar](255) NULL,
	[szTelefonos] [nvarchar](255) NULL,
	[szEMail] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
