USE [sqm]
GO
/****** Object:  Table [dbo].[TipoAnomaliaDetalles]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoAnomaliaDetalles](
	[IdTipoAnomaliaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoAnomalia] [int] NULL,
	[szNombre] [varchar](255) NULL,
 CONSTRAINT [PK_TipoAnomaliaDetalles] PRIMARY KEY CLUSTERED 
(
	[IdTipoAnomaliaDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
