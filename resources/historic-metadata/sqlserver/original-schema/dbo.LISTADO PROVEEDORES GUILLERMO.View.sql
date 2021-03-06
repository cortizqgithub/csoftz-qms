USE [sqm]
GO
/****** Object:  View [dbo].[LISTADO PROVEEDORES GUILLERMO]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[LISTADO PROVEEDORES GUILLERMO]
AS
SELECT     dbo.ProveedorServicios.IdProveedor, dbo.Proveedores.szNit AS NIT, dbo.Proveedores.szNombre AS [NOMBRE PROV], 
                      dbo.TipoServicios.szNombre AS SERVICIO, dbo.ProveedorServicios.IdTipoServicioDetalle, dbo.TipoServicioDetalles.szNombre, 
                      dbo.Proveedores.szTelefono, dbo.Proveedores.iGradoControl, dbo.Proveedores.iGradoImportancia
FROM         dbo.ProveedorServicios INNER JOIN
                      dbo.TipoServicioDetalles ON dbo.ProveedorServicios.IdTipoServicioDetalle = dbo.TipoServicioDetalles.IdTipoServicioDetalle INNER JOIN
                      dbo.TipoServicios ON dbo.TipoServicioDetalles.IdTipoServicio = dbo.TipoServicios.IdTipoServicio INNER JOIN
                      dbo.Proveedores ON dbo.ProveedorServicios.IdProveedor = dbo.Proveedores.IdProveedor

GO
