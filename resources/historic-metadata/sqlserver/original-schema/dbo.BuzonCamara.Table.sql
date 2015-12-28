USE [sqm]
GO
/****** Object:  Table [dbo].[BuzonCamara]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuzonCamara](
	[IdBuzon] [int] IDENTITY(1,1) NOT NULL,
	[iTipo] [int] NULL,
	[dtFecha] [int] NULL,
	[szNombre] [nvarchar](255) NULL,
	[szEmail] [nvarchar](255) NULL,
	[szDescripcion] [ntext] NULL,
	[szRespuesta] [ntext] NULL,
	[bAprobado] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
