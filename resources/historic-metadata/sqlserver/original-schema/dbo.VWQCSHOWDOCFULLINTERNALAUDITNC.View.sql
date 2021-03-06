USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCFULLINTERNALAUDITNC]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCFULLINTERNALAUDITNC                              */
/* Description:   This view is centered around the NC records. Thus for each  */
/*                record we can have all related IDs up to internal audit     */
/*                program structure.                                          */
/*                Use with extreme care as it yields all records registerd    */
/*                for all internal audit program with NC records.             */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.25/2006                                                 */
/* Last Modified: May.26/2006                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2006 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES:
  This query is the basis for internal audit reports having the integrated
  system structure attached to it.  If you need additional information about
  plan/notification or final report for an internal audit, then you must
  join this view accordingly.
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 May.25/2006 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCFULLINTERNALAUDITNC]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaInformeFinalNC,
       A.idCalidadDocumentoAuditoriaInternaInformeFinal, 
       A.idCalidadSistema, 
       A.idCalidadNumerales,
       A.IdCalidadDocumentoMejoraContinua,
       A.szDescripcion,
       A.bSel,
       B.idCalidadDocumentoAuditoriaInternaNotificacion,
       C.idCalidadDocumentoAuditoriaInterna,
       D.idCalidadDocumentoAuditoriaInternaPrograma,
       E.idCalidadEmpresa,
       E.idTipoAuditoriaCalidad,
       E.iYear,
       E.iCiclo,
       E.dtFI,
       E.dtFF,
       E.iNumPrograma,
       F.szDescripcion EmpName,
       G.szDescripcion SysName,
       H.szDescripcion AuditTypeName
FROM CalidadDocumentoAuditoriaInternaInformeFinalNC A                                                                                                        INNER JOIN
     CalidadDocumentoAuditoriaInternaInformeFinal   B ON A.idCalidadDocumentoAuditoriaInternaInformeFinal = B.idCalidadDocumentoAuditoriaInternaInformeFinal INNER JOIN
     CalidadDocumentoAuditoriaInternaNotificacion   C ON B.idCalidadDocumentoAuditoriaInternaNotificacion = C.idCalidadDocumentoAuditoriaInternaNotificacion INNER JOIN
     CalidadDocumentoAuditoriaInterna               D ON C.idCalidadDocumentoAuditoriaInterna = D.idCalidadDocumentoAuditoriaInterna                         INNER JOIN
     CalidadDocumentoAuditoriaInternaPrograma       E ON D.idCalidadDocumentoAuditoriaInternaPrograma = E.idCalidadDocumentoAuditoriaInternaPrograma         INNER JOIN
     CalidadEmpresas                                F ON E.idCalidadEmpresa = F.idCalidadEmpresa                                                             INNER JOIN
     CalidadSistema                                 G ON E.idCalidadEmpresa = G.idCalidadEmpresa AND
                                                         A.idCalidadSistema = G.idCalidadSistema                                                             INNER JOIN
     TipoAuditoriaCalidad                           H ON E.idTipoAuditoriaCalidad = H.idTipoAuditoriaCalidad


GO
