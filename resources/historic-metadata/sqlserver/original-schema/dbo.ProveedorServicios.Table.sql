USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorServicios]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorServicios](
	[IdProveedorServicio] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NULL,
	[IdTipoServicioDetalle] [int] NULL,
 CONSTRAINT [PK_ProveedorServicios] PRIMARY KEY CLUSTERED 
(
	[IdProveedorServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [idproveedor]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [idproveedor] ON [dbo].[ProveedorServicios]
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
