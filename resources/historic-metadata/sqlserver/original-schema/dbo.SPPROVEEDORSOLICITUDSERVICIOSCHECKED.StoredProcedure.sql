USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPPROVEEDORSOLICITUDSERVICIOSCHECKED]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




/*----------------------------------------------------------------------------*/
/* Source File:   SPPROVEEDORDOLICITUDSERVICIOSCHECKED                        */
/* Description:   Retrieve all checked services for a supplier request.       */
/*                Used in ADDPROVEEDOR.ASP                                   */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Feb.13/2004                                                 */
/* Last Modified: Feb.13/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.13/2004 File created.
------------------------------------------------------------------------------*/
CREATE  PROCEDURE [dbo].[SPPROVEEDORSOLICITUDSERVICIOSCHECKED]
  @idprvrq INT
AS
SELECT IDTipoServicioDetalle
INTO #T1
FROM ProveedorSolicitudServicios
where idproveedorsolicitud = @idprvrq

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
