USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadAuditores]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadAuditores](
	[idUsuarioAuditor] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[bActivo] [smallint] NOT NULL,
	[bAuditorPrincipal] [smallint] NOT NULL,
 CONSTRAINT [PK_CalidadAuditores] PRIMARY KEY CLUSTERED 
(
	[idUsuarioAuditor] ASC,
	[idCalidadSistema] ASC,
	[idCalidadEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
