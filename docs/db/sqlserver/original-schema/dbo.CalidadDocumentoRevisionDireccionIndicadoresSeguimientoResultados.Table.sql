USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoRevisionDireccionIndicadoresSeguimientoResultados]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoRevisionDireccionIndicadoresSeguimientoResultados](
	[idCalidadDocumentoRevisionDireccionIndicadoresSeguimientoResultados] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoRevisionDireccionIndicadoresSeguimiento] [int] NOT NULL,
	[szResultadoObtenido] [text] NOT NULL,
	[szPuntosProblemanticos] [text] NOT NULL,
	[szPropuestaMejora] [text] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoRevisionDireccionIndicadoresSeguimientoResultados] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoRevisionDireccionIndicadoresSeguimientoResultados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
