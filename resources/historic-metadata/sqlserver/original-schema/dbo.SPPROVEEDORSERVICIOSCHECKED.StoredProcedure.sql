USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPPROVEEDORSERVICIOSCHECKED]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*----------------------------------------------------------------------------*/
/* Source File:   SPPROVEEDORSERVICIOSCHECKED                                 */
/* Description:   Retrieve all checked services for a supplier.               */
/*                Used in EDITPROVEEDOR.ASP                                   */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Feb.09/2004                                                 */
/* Last Modified: Feb.09/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.09/2004 File created.
------------------------------------------------------------------------------*/
CREATE  PROCEDURE [dbo].[SPPROVEEDORSERVICIOSCHECKED]
  @idprv INT
AS
SELECT IDTipoServicioDetalle
INTO #T1
FROM ProveedorServicios
where idproveedor = @idprv

SELECT S.szNombre AS Servicio, D.IdTipoServicioDetalle, D.szNombre AS Detalle
INTO #T2
FROM TipoServicios AS S INNER JOIN
     TipoServicioDetalles AS D ON S.IdTipoServicio=D.IdTipoServicio

SELECT CASE WHEN A.IdTipoServicioDetalle IS NULL THEN ''
          ELSE ' checked'
       END chk, *
FROM #T1 A RIGHT JOIN
     #T2 B ON A.IDTIPOSERVICIODETALLE = B.IDTIPOSERVICIODETALLE

DROP TABLE #T1
DROP TABLE #T2




GO
