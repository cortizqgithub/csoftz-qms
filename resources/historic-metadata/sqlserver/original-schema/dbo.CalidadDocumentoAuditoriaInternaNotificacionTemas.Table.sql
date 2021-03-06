USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoAuditoriaInternaNotificacionTemas]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoAuditoriaInternaNotificacionTemas](
	[idCalidadDocumentoAuditoriaInternaNotificacionTemas] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoAuditoriaInternaNotificacion] [int] NOT NULL,
	[szTema] [text] NULL,
	[idAuditado] [int] NOT NULL,
	[idAuditor] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[dtHoraInicio] [int] NOT NULL,
	[dtHoraFinal] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoAuditoriaInternaNotificacionTemas] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoAuditoriaInternaNotificacionTemas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
