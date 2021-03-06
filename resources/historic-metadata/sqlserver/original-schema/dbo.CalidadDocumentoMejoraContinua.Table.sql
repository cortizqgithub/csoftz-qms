USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoMejoraContinua]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoMejoraContinua](
	[IdCalidadDocumentoMejoraContinua] [int] IDENTITY(1,1) NOT NULL,
	[szTipoAccionCalidad] [char](2) NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[iSecuencia] [int] NULL,
	[szNomenclatura] [varchar](50) NULL,
	[szNuevaAccion] [varchar](50) NULL,
	[idNuevaAccion] [int] NULL,
	[IdUsuarioSolicita] [int] NOT NULL,
	[IdUsuarioAprueba] [int] NULL,
	[IdUsuarioVerifica] [int] NULL,
	[IdUsuarioCierre] [int] NULL,
	[dtFechaSolicitud] [int] NOT NULL,
	[dtFechaAprueba] [int] NULL,
	[dtFechaVerifica] [int] NULL,
	[dtFechaCierre] [int] NULL,
	[dtFechaIdentificacion] [int] NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[idTipoAreaDetectoraCalidad] [int] NOT NULL,
	[szNroAuditoria] [varchar](50) NULL,
	[idCalidadDocumentoAuditoriaInternaInformeFinalNC] [int] NULL,
	[szDescNoConformidad] [text] NOT NULL,
	[idCalidadNumerales] [int] NOT NULL,
	[szCausas] [text] NULL,
	[bViable] [smallint] NOT NULL,
	[szViabilidad] [text] NULL,
	[szCierre] [text] NULL,
	[iStatus] [smallint] NULL,
	[iEstadoDoc] [smallint] NULL,
	[idImpacto] [int] NOT NULL,
	[bAvance] [smallint] NOT NULL,
	[bEficacia] [smallint] NOT NULL,
	[dtUltimaModificacion] [int] NULL,
	[bAprobado] [smallint] NULL,
	[idCalidadTema] [int] NULL,
	[szEvalEficacia] [text] NULL,
 CONSTRAINT [PK_CalidadDocumentoMejoraContinua] PRIMARY KEY CLUSTERED 
(
	[IdCalidadDocumentoMejoraContinua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_CalidadDocumentoMejoraContinua_Nomenclatura]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [IDX_CalidadDocumentoMejoraContinua_Nomenclatura] ON [dbo].[CalidadDocumentoMejoraContinua]
(
	[szNomenclatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
GO
ALTER TABLE [dbo].[CalidadDocumentoMejoraContinua] ADD  CONSTRAINT [DF_CalidadDocumentoMejoraContinua_bViable]  DEFAULT (1) FOR [bViable]
GO
ALTER TABLE [dbo].[CalidadDocumentoMejoraContinua] ADD  CONSTRAINT [DF_CalidadDocumentoMejoraContinua_bAvance]  DEFAULT (0) FOR [bAvance]
GO
ALTER TABLE [dbo].[CalidadDocumentoMejoraContinua] ADD  CONSTRAINT [DF_CalidadDocumentoMejoraContinua_bEficacia]  DEFAULT (0) FOR [bEficacia]
GO
ALTER TABLE [dbo].[CalidadDocumentoMejoraContinua]  WITH CHECK ADD  CONSTRAINT [FK_CalidadDocumentoMejoraContinua] FOREIGN KEY([idCalidadTema])
REFERENCES [dbo].[CalidadTema] ([idCalidadTema])
GO
ALTER TABLE [dbo].[CalidadDocumentoMejoraContinua] CHECK CONSTRAINT [FK_CalidadDocumentoMejoraContinua]
GO
