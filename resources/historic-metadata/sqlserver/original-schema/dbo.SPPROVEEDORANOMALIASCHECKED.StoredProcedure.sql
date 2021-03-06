USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPPROVEEDORANOMALIASCHECKED]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   SPPROVEEDORANOMALIASCHECKED                                 */
/* Description:   Retrieve all checked anomalies for a supplier tracking.     */
/*                Used in EDITARSEGUIMIENTOS.ASP                              */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Feb.09/2004                                                 */
/* Last Modified: Feb.23/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.23/2004 File created.
------------------------------------------------------------------------------*/
CREATE PROCEDURE [dbo].[SPPROVEEDORANOMALIASCHECKED]
  @idprvtracking INT
AS 
SELECT IdTipoAnomaliaDetalle
INTO #T1
FROM PROVEEDORANOMALIAS
WHERE IDPROVEEDORSEGUIMIENTO = @idprvtracking

SELECT A.szNombre ANom, B.IDTipoAnomaliaDetalle, B.szNombre ANomDetalle
INTO #T2
FROM TIPOANOMALIA A INNER JOIN
     TIPOANOMALIADETALLES B ON A.IdTipoAnomalia = B.IdTipoAnomalia

SELECT CASE WHEN A.IdTipoAnomaliaDetalle IS NULL THEN ''
          ELSE ' checked'
       END chk, ANom, B.IdTipoAnomaliaDetalle, AnomDetalle
FROM #T1 A RIGHT JOIN
     #T2 B ON A.IDTIPOANOMALIADETALLE = B.IDTIPOANOMALIADETALLE

DROP TABLE #T1
DROP TABLE #T2


GO
