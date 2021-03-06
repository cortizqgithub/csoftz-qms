USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoSolicitud]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoSolicitud](
	[IdCalidadDocumentoSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdCalidadDocumentos] [int] NULL,
	[idCalidadDocumentoNuevo] [int] NULL,
	[IdUsuario] [int] NOT NULL,
	[dtFechaSolicitud] [int] NOT NULL,
	[bTramitado] [int] NOT NULL,
	[iTipoModificacion] [int] NOT NULL,
	[szDescripcionCambio] [text] NULL,
	[szDescripcionJustificacion] [text] NULL,
	[szNomenclaturaRef] [varchar](50) NULL,
	[szNombreRef] [varchar](255) NULL,
	[szLinkRef] [varchar](255) NULL,
	[dtFechaVersionRef] [int] NULL,
	[iVersionRef] [int] NULL,
	[szAproboRef] [varchar](255) NULL,
	[dtFechaVersionNueva] [int] NULL,
	[iVersionNueva] [int] NULL,
	[szCodigoAreaNuevoDoc] [char](2) NULL,
 CONSTRAINT [PK_CalidadDocumentoSolicitud] PRIMARY KEY CLUSTERED 
(
	[IdCalidadDocumentoSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
