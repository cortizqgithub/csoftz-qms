USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoAuditoriaInternaNotificacionDocRefs]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoAuditoriaInternaNotificacionDocRefs](
	[idCalidadDocumentoAuditoriaInternaNotificacionDocRefs] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoAuditoriaInternaNotificacion] [int] NOT NULL,
	[idCalidadDocumentos] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoAuditoriaInternaNotificacionDocRefs] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoAuditoriaInternaNotificacionDocRefs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
