USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorSolicitudServicios]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorSolicitudServicios](
	[IdProveedorSolicitudServicio] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedorSolicitud] [int] NULL,
	[IdTipoServicioDetalle] [int] NULL,
 CONSTRAINT [PK_ProveedorSolicitudServicios] PRIMARY KEY CLUSTERED 
(
	[IdProveedorSolicitudServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
