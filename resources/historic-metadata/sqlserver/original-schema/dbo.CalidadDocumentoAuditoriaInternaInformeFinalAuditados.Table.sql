USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoAuditoriaInternaInformeFinalAuditados]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoAuditoriaInternaInformeFinalAuditados](
	[idCalidadDocumentoAuditoriaInternaInformeFinalAuditados] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoAuditoriaInternaInformeFinal] [int] NOT NULL,
	[idAuditado] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoAuditoriaInternaInformeFinalAuditados] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoAuditoriaInternaInformeFinalAuditados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
