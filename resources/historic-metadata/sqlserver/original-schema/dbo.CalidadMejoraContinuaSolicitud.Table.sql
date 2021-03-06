USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadMejoraContinuaSolicitud]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadMejoraContinuaSolicitud](
	[IdCalidadMejoraContinuaSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[dtFechaSolicitud] [int] NOT NULL,
	[bTramitado] [int] NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[szTipoAccionCalidad] [char](2) NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[dtFechaIdentificacion] [int] NOT NULL,
	[idTipoAreaDetectoraCalidad] [int] NOT NULL,
	[szNroAuditoria] [varchar](50) NULL,
	[idCalidadDocumentoAuditoriaInternaInformeFinalNC] [int] NOT NULL,
	[szDescNoConformidad] [text] NOT NULL,
	[idCalidadNumerales] [int] NOT NULL,
	[idImpacto] [int] NOT NULL,
	[idCalidadTema] [int] NULL,
 CONSTRAINT [PK_CalidadMejoraContinuaSolicitud] PRIMARY KEY CLUSTERED 
(
	[IdCalidadMejoraContinuaSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CalidadMejoraContinuaSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_CalidadMejoraContinuaSolicitud_CalidadTema] FOREIGN KEY([idCalidadTema])
REFERENCES [dbo].[CalidadTema] ([idCalidadTema])
GO
ALTER TABLE [dbo].[CalidadMejoraContinuaSolicitud] CHECK CONSTRAINT [FK_CalidadMejoraContinuaSolicitud_CalidadTema]
GO
