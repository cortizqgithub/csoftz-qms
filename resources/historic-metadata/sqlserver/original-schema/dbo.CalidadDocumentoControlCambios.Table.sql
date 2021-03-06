USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoControlCambios]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoControlCambios](
	[IdCalidadDocumentoControlCambios] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioSolicita] [int] NOT NULL,
	[idUsuarioCambio] [int] NOT NULL,
	[dtFechaSolicitud] [int] NOT NULL,
	[dtFechaCambio] [int] NOT NULL,
	[iTipoModificacion] [int] NOT NULL,
	[szDescripcionCambio] [text] NULL,
	[szDescripcionJustificacion] [text] NULL,
	[dtFechaVersionNueva] [int] NULL,
	[iVersionNueva] [int] NULL,
	[iCalidadEmpresa] [int] NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[szCodigoTipoDocumento] [char](4) NOT NULL,
	[iSecuencia] [int] NOT NULL,
	[szNomenclatura] [varchar](50) NOT NULL,
	[szNombre] [varchar](255) NOT NULL,
	[szLink] [varchar](255) NOT NULL,
	[iVersion] [int] NOT NULL,
	[dtFechaVersion] [int] NOT NULL,
	[szAprobo] [varchar](255) NULL,
	[szEmpresaOrigenDocExt] [varchar](50) NULL,
	[szResponsableDocExt] [varchar](50) NULL,
	[szMedioRegistro] [varchar](100) NULL,
	[szLugarAlmacenamiento] [varchar](100) NULL,
	[szTiempo] [varchar](100) NULL,
	[szAcceso] [varchar](100) NULL,
	[bTipico] [int] NOT NULL,
	[bActivo] [int] NOT NULL,
	[iReportNum] [int] NULL,
	[dtFechaIngreso] [int] NULL,
	[dtFechaActualiza] [int] NULL,
	[iCntReferencias] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoControlCambios] PRIMARY KEY CLUSTERED 
(
	[IdCalidadDocumentoControlCambios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_CalidadDocumentoControlCambios_Nomenclatura]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [IDX_CalidadDocumentoControlCambios_Nomenclatura] ON [dbo].[CalidadDocumentoControlCambios]
(
	[szNomenclatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
GO
