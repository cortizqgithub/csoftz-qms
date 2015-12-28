USE [sqm]
GO
/****** Object:  Table [dbo].[SocialesNacimientos]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialesNacimientos](
	[IdNacimiento] [int] IDENTITY(1,1) NOT NULL,
	[dtFecha] [int] NULL,
	[szNombre] [nvarchar](255) NULL,
	[szDescripcion] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
