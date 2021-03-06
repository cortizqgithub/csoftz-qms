USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoIncidenteRecuperacion]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoIncidenteRecuperacion](
	[IdCalidadDocumentoIncidenteRecuperacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCalidadDocumentoIncidente] [int] NOT NULL,
	[szRecuperacion] [text] NOT NULL,
	[dtFecha] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoIncidenteRecuperacion] PRIMARY KEY CLUSTERED 
(
	[IdCalidadDocumentoIncidenteRecuperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDAD]

GO
ALTER TABLE [dbo].[CalidadDocumentoIncidenteRecuperacion]  WITH CHECK ADD  CONSTRAINT [FK_CalidadDocumentoIncidenteRecuperacion_CalidadDocumentoIncidente] FOREIGN KEY([IdCalidadDocumentoIncidente])
REFERENCES [dbo].[CalidadDocumentoIncidente] ([IdCalidadDocumentoIncidente])
GO
ALTER TABLE [dbo].[CalidadDocumentoIncidenteRecuperacion] CHECK CONSTRAINT [FK_CalidadDocumentoIncidenteRecuperacion_CalidadDocumentoIncidente]
GO
