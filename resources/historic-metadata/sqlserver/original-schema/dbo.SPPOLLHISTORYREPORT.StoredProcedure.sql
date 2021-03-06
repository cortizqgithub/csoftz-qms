USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPPOLLHISTORYREPORT]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   SPPOLLHISTORYREPORT                                         */
/* Description:   Retrieve all poll history                                   */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Nov.18/2004                                                 */
/* Last Modified: Dec.04/2004                                                 */
/* Version:       1.3                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Nov.18/2004 File Created.
------------------------------------------------------------------------------*/

CREATE PROCEDURE [dbo].[SPPOLLHISTORYREPORT]
AS
SELECT A.idEncuesta, A.szPregunta, B.dblAcumulado, C.szOpcion
INTO #T1
FROM Encuestas        A                                INNER JOIN
     EncuestaDetalles B ON A.idEncuesta = B.idEncuesta INNER JOIN
     EncuestaOpciones C ON B.idEncuestaOpcion = C.idEncuestaOpcion
ORDER BY A.idEncuesta

SELECT A.idEncuesta, SUM(A.dblAcumulado) ACCUM
INTO #T2
FROM EncuestaDetalles A
GROUP BY A.idEncuesta
HAVING SUM(A.dblAcumulado) <> 0
ORDER BY A.idEncuesta

SELECT A.idEncuesta, A.szPregunta, A.szOpcion,
       CASE WHEN B.ACCUM = 0 THEN 0
          ELSE (A.dblAcumulado / B.ACCUM) * 100
       END P,
       CASE WHEN B.ACCUM = 0 THEN 0
          ELSE (((A.dblAcumulado / B.ACCUM) * 100) * 94) / 100
       END P1, B.ACCUM
FROM #T1 A INNER JOIN
     #T2 B ON A.IdEncuesta = B.idEncuesta
ORDER BY A.idEncuesta

DROP TABLE #T1
DROP TABLE #T2


GO
