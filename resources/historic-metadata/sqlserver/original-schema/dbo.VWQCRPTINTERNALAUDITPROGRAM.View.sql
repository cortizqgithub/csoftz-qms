USE [sqm]
GO
/****** Object:  View [dbo].[VWQCRPTINTERNALAUDITPROGRAM]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCRPTINTERNALAUDITPROGRAM                                 */
/* Description:   This view retrieves all NC by program.                      */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.26/2006                                                 */
/* Last Modified: May.31/2006                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2006 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES: Uses VWQCSHOWDOCFULLINTERNALAUDITNC
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 May.26/2006 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCRPTINTERNALAUDITPROGRAM]
AS
-- Let's first find all programs that don't have NC and name all needed fields
-- in order to make report, also it must relate to any enterprise system.
SELECT B.idCalidadDocumentoAuditoriaInternaPrograma, B.iNumPrograma, B.idCalidadEmpresa, C.szDescripcion EmpName, 
       E.idCalidadSistema, E.szDescripcion SysName, B.idTipoAuditoriaCalidad, D.szDescripcion AuditTypeName,
       B.iYear, B.iCiclo, B.dtFI, B.dtFF, 0 NUMNC
FROM VWQCSHOWDOCFULLINTERNALAUDITNC A                                                                                                          RIGHT JOIN 
     CalidadDocumentoAuditoriaInternaPrograma B ON A.idCalidadDocumentoAuditoriaInternaPrograma = B.idCalidadDocumentoAuditoriaInternaPrograma INNER JOIN
     CalidadEmpresas                          C ON B.idCalidadEmpresa = C.idCalidadEmpresa                                                     INNER JOIN
     TipoAuditoriaCalidad                     D ON B.idTipoAuditoriaCalidad = D.idTipoAuditoriaCalidad                                         CROSS JOIN
     CalidadSistema                           E
WHERE E.idCalidadEmpresa = B.idCalidadEmpresa AND A.idCalidadDocumentoAuditoriaInternaPrograma IS NULL
UNION ALL
-- Now let's retrieve all programs which have NC associated to them.
SELECT A.idCalidadDocumentoAuditoriaInternaPrograma, A.iNumPrograma, A.idCalidadEmpresa, D.szDescripcion EmpName,
       C.idCalidadSistema, F.szDescripcion SysName, A.idTipoAuditoriaCalidad, E.szDescripcion AuditTypeName,
       A.iYear, A.iCiclo, A.dtFI, A.dtFF, C.NUMNC
FROM CalidadDocumentoAuditoriaInternaPrograma A INNER JOIN   
     (
      SELECT idCalidadDocumentoAuditoriaInternaPrograma, idCalidadEmpresa, idCalidadSistema, COUNT(1) NUMNC
      FROM VWQCSHOWDOCFULLINTERNALAUDITNC
      GROUP BY idCalidadDocumentoAuditoriaInternaPrograma, idCalidadEmpresa, idCalidadSistema
      ) 
      C ON A.idCalidadDocumentoAuditoriaInternaPrograma = C.idCalidadDocumentoAuditoriaInternaPrograma INNER JOIN
      CalidadEmpresas      D ON A.idCalidadEmpresa = D.idCalidadEmpresa                                INNER JOIN
      TipoAuditoriaCalidad E ON A.idTipoAuditoriaCalidad = E.idTipoAuditoriaCalidad                    INNER JOIN
      CalidadSistema       F ON A.idCalidadEmpresa = F.idCalidadEmpresa AND
                                C.idCalidadSistema = F.idCalidadSistema


GO
