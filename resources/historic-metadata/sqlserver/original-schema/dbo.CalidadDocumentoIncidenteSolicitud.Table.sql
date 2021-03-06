USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoIncidenteSolicitud]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoIncidenteSolicitud](
	[IdCalidadDocumentoIncidenteSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[dtFechaSolicitud] [int] NOT NULL,
	[bTramitado] [int] NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[dtFechaIdentificacion] [int] NOT NULL,
	[szDescripcion] [text] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoIncidenteSolicitud] PRIMARY KEY CLUSTERED 
(
	[IdCalidadDocumentoIncidenteSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
