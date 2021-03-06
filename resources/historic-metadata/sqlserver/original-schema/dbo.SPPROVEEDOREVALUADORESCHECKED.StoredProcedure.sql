USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPPROVEEDOREVALUADORESCHECKED]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   SPPROVEEDOREVALUADORESCHECKED                               */
/* Description:   Retrieve all suppliers checked for an evaluator.            */
/*                Used in EDITAREVALUADORES.ASP                               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Feb.19/2004                                                 */
/* Last Modified: Feb.23/2004                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.19/2004 File created.
 Feb.23/2004 Changed field name.
------------------------------------------------------------------------------*/
CREATE PROCEDURE [dbo].[SPPROVEEDOREVALUADORESCHECKED]
  @idusr INT, @iSortOrder INT
AS
SELECT IdUsuario, idProveedor, bRealizada
INTO #T
FROM PROVEEDOREVALUADORES
WHERE IDUSUARIO = @idusr

SELECT CASE WHEN A.IdProveedor IS NOT NULL THEN 'checked' ELSE '' END checked,
       B.IdProveedor,
       B.bActivo,
       B.iGradoImportancia, B.iGradoControl, B.szNIT, B.szNombre
INTO #TRSLT
FROM #T          A RIGHT JOIN
     PROVEEDORES B ON A.IDPROVEEDOR = B.IDPROVEEDOR
WHERE B.bActivo = 1
ORDER BY B.idProveedor

IF @iSortOrder = 1 BEGIN
   SELECT * FROM #TRSLT ORDER BY bActivo DESC
END
IF @iSortOrder = 2 BEGIN
   SELECT * FROM #TRSLT ORDER BY iGradoImportancia DESC
END
IF @iSortOrder = 3 BEGIN
   SELECT * FROM #TRSLT ORDER BY iGradoControl DESC
END
IF @iSortOrder = 4 BEGIN
   SELECT * FROM #TRSLT ORDER BY szNit
END
IF @iSortOrder = 5 BEGIN
   SELECT * FROM #TRSLT ORDER BY szNombre
END

DROP TABLE #T
DROP TABLE #TRSLT



GO
