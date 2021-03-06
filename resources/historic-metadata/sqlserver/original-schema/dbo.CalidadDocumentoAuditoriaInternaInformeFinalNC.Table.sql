USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoAuditoriaInternaInformeFinalNC]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoAuditoriaInternaInformeFinalNC](
	[idCalidadDocumentoAuditoriaInternaInformeFinalNC] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoAuditoriaInternaInformeFinal] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[idCalidadNumerales] [int] NOT NULL,
	[IdCalidadDocumentoMejoraContinua] [int] NULL,
	[szDescripcion] [text] NULL,
	[bSel] [smallint] NULL,
 CONSTRAINT [PK_CalidadDocumentoAuditoriaInternaInformeFinalNC] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoAuditoriaInternaInformeFinalNC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
