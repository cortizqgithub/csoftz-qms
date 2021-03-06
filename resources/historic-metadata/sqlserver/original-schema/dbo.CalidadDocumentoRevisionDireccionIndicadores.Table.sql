USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoRevisionDireccionIndicadores]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoRevisionDireccionIndicadores](
	[idCalidadDocumentoRevisionDireccionIndicadores] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[iYear] [smallint] NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[szNomenclatura] [varchar](50) NULL,
	[iSecuencia] [int] NULL,
	[idUsuarioResponsable] [int] NOT NULL,
	[dtInicio] [int] NOT NULL,
	[dtFin] [int] NOT NULL,
	[idUsuarioSolicita] [int] NOT NULL,
	[dtSolicitud] [int] NOT NULL,
	[iStatus] [smallint] NOT NULL,
	[bAprobado] [smallint] NOT NULL,
	[dtUltimaActualizacion] [int] NULL,
 CONSTRAINT [PK_CalidadDocumentoRevisionDireccionIndicadores] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoRevisionDireccionIndicadores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_CalidadDocumentoRevisionDireccionIndicadores_Nomenclatura]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [IDX_CalidadDocumentoRevisionDireccionIndicadores_Nomenclatura] ON [dbo].[CalidadDocumentoRevisionDireccionIndicadores]
(
	[szNomenclatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
GO
