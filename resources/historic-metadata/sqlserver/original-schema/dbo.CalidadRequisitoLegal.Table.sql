USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadRequisitoLegal]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadRequisitoLegal](
	[idCalidadRequisitoLegal] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[idCalidadTipoDisposicionLegal] [int] NOT NULL,
	[idCalidadReqLegalEmpresaOrigen] [int] NOT NULL,
	[idCalidadReqLegalRiesgo] [int] NULL,
	[idCalidadReqLegalMedio] [int] NULL,
	[idCalidadReqLegalPeligro] [int] NULL,
	[iNumero] [int] NOT NULL,
	[dtFecha] [int] NOT NULL,
	[szNombre] [varchar](255) NOT NULL,
	[szNombre2] [varchar](255) NULL,
	[szDescripcion] [varchar](4000) NULL,
	[szEstadoCumplimiento] [varchar](4000) NULL,
	[szArchivo] [varchar](255) NULL,
	[iCntModificadoPor] [int] NOT NULL,
	[iCntModificaA] [int] NOT NULL,
	[iCntDocReferencias] [int] NOT NULL,
	[iCntProcesoDocReferencias] [int] NOT NULL,
	[iCntUpdates] [int] NOT NULL,
	[dtFechaIngreso] [int] NOT NULL,
	[dtFechaActualiza] [int] NOT NULL,
	[bActivo] [smallint] NOT NULL,
	[iStatus] [smallint] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[szCriterioVerificacion] [varchar](4000) NULL,
 CONSTRAINT [PK_CalidadRequisitoLegal] PRIMARY KEY CLUSTERED 
(
	[idCalidadRequisitoLegal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegal_CalidadEmpresas] FOREIGN KEY([idCalidadEmpresa])
REFERENCES [dbo].[CalidadEmpresas] ([IdCalidadEmpresa])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal] CHECK CONSTRAINT [FK_CalidadRequisitoLegal_CalidadEmpresas]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegal_CalidadReqLegalEmpresaOrigen] FOREIGN KEY([idCalidadReqLegalEmpresaOrigen])
REFERENCES [dbo].[CalidadReqLegalEmpresaOrigen] ([idCalidadReqLegalEmpresaOrigen])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal] CHECK CONSTRAINT [FK_CalidadRequisitoLegal_CalidadReqLegalEmpresaOrigen]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegal_CalidadReqLegalMedio] FOREIGN KEY([idCalidadReqLegalMedio])
REFERENCES [dbo].[CalidadReqLegalMedio] ([idCalidadReqLegalMedio])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal] CHECK CONSTRAINT [FK_CalidadRequisitoLegal_CalidadReqLegalMedio]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegal_CalidadReqLegalPeligro] FOREIGN KEY([idCalidadReqLegalPeligro])
REFERENCES [dbo].[CalidadReqLegalPeligro] ([idCalidadReqLegalPeligro])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal] CHECK CONSTRAINT [FK_CalidadRequisitoLegal_CalidadReqLegalPeligro]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegal_CalidadReqLegalRiesgo] FOREIGN KEY([idCalidadReqLegalRiesgo])
REFERENCES [dbo].[CalidadReqLegalRiesgo] ([idCalidadReqLegalRiesgo])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal] CHECK CONSTRAINT [FK_CalidadRequisitoLegal_CalidadReqLegalRiesgo]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegal_CalidadSistema] FOREIGN KEY([idCalidadSistema])
REFERENCES [dbo].[CalidadSistema] ([idCalidadSistema])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal] CHECK CONSTRAINT [FK_CalidadRequisitoLegal_CalidadSistema]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegal_CalidadTipoDisposicionLegal] FOREIGN KEY([idCalidadTipoDisposicionLegal])
REFERENCES [dbo].[CalidadTipoDisposicionLegal] ([idCalidadTipoDisposicionLegal])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegal] CHECK CONSTRAINT [FK_CalidadRequisitoLegal_CalidadTipoDisposicionLegal]
GO
