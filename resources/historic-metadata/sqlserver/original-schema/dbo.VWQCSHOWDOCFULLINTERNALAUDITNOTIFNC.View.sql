USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCFULLINTERNALAUDITNOTIFNC]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCFULLINTERNALAUDITNOTIFNC                         */
/* Description:   This view retrieves all NC by Notification program.         */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.31/2006                                                 */
/* Last Modified: Jun.01/2006                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2006 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES: Uses VWQCSHOWDOCFULLINTERNALAUDITNC
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 May.31/2006 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCFULLINTERNALAUDITNOTIFNC]
AS
SELECT A.idCalidadDocumentoAuditoriaInterna, 
       G.idCalidadDocumentoAuditoriaInternaNotificacion,
       K.idCalidadDocumentoAuditoriaInternaPrograma,
       A.idCalidadEmpresa idEMPMainAuditor, 
       D.szDescripcion MainAuditorEmpName,
       A.szCodigoArea, 
       F.szDescripcion AreaName, 
       A.szNomenclatura,
       A.idAuditorPrincipal, 
       C.szNombre + ' ' + C.szApellido MainAuditorName,
       A.idCalidadSistema idSYSMainAuditor, 
       E.szDescripcion AuditorMainSysName, 
       G.dtNotificacion, 
       H.NUMNC,
       H.idCalidadEmpresa, 
       H.idCalidadSistema, 
       I.szDescripcion EmpName, 
       J.szDescripcion SysName, 
       M.idTipoAuditoriaCalidad, 
       M.szDescripcion AuditTypeName,
       A.iStatus,
       K.iNumPrograma
FROM CalidadDocumentoAuditoriaInterna             A                                                                                                INNER JOIN
     CalidadAuditores                             B ON A.idAuditorPrincipal = B.idUsuarioAuditor AND
                                                       A.idCalidadSistema = B.idCalidadSistema AND
                                                       A.idCalidadEmpresa = B.idCalidadEmpresa                                                     INNER JOIN
     Usuarios                                     C ON A.idAuditorPrincipal = C.idUsuario                                                          INNER JOIN
     CalidadEmpresas                              D ON A.idCalidadEmpresa = D.idCalidadEmpresa                                                     INNER JOIN
     CalidadSistema                               E ON A.idCalidadEmpresa = E.idCalidadEmpresa AND
                                                       A.idCalidadSistema = E.idCalidadSistema                                                     INNER JOIN
     AreasCalidad                                 F ON A.idCalidadEmpresa = F.idCalidadEmpresa AND
                                                       A.szCodigoArea = F.szCodigoArea                                                             INNER JOIN
     CalidadDocumentoAuditoriaInternaNotificacion G ON A.idCalidadDocumentoAuditoriaInterna = G.idCalidadDocumentoAuditoriaInterna                 INNER JOIN
     (
      SELECT DISTINCT
             B.idCalidadDocumentoAuditoriaInternaNotificacion,
             B.idCalidadEmpresa, 
             B.idCalidadSistema,
             CASE WHEN A.idCalidadSistema IS NULL THEN 0 ELSE B.NUMNC END NUMNC
      FROM VWQCSHOWDOCFULLINTERNALAUDITNC A RIGHT JOIN 
           (
            -- First retrieve all records that don't have all systems balanced.
            SELECT M.idCalidadDocumentoAuditoriaInternaNotificacion,
                   B.idCalidadEmpresa,
                   B.idCalidadSistema,
                   M.NUMNC
            FROM (
                  SELECT A.idCalidadDocumentoAuditoriaInternaNotificacion, A.idCalidadEmpresa, A.idCalidadSistema, COUNT(1) NUMNC
                  FROM VWQCSHOWDOCFULLINTERNALAUDITNC A
                  GROUP BY A.idCalidadDocumentoAuditoriaInternaNotificacion, A.idCalidadEmpresa, A.idCalidadSistema
                  ) M CROSS JOIN CalidadSistema B
            ) B ON A.idCalidadDocumentoAuditoriaInternaNotificacion = B.idCalidadDocumentoAuditoriaInternaNotificacion AND
                   A.idCalidadEmpresa = B.idCalidadEmpresa AND
                   A.idCalidadSistema = B.idCalidadSistema
            WHERE A.idCalidadSistema IS NULL
            UNION ALL
            -- Next query retrieves those records which have balanced system id.
            SELECT A.idCalidadDocumentoAuditoriaInternaNotificacion, A.idCalidadEmpresa, A.idCalidadSistema, COUNT(1) NUMNC
            FROM VWQCSHOWDOCFULLINTERNALAUDITNC A
            GROUP BY A.idCalidadDocumentoAuditoriaInternaNotificacion, A.idCalidadEmpresa, A.idCalidadSistema
     ) H ON G.idCalidadDocumentoAuditoriaInternaNotificacion = H.idCalidadDocumentoAuditoriaInternaNotificacion 
              AND H.idCalidadEmpresa = A.idCalidadEmpresa                                                                                          INNER JOIN
     CalidadEmpresas                              I ON H.idCalidadEmpresa = I.idCalidadEmpresa                                                     INNER JOIN
     CalidadSistema                               J ON H.idCalidadEmpresa = J.idCalidadEmpresa AND
                                                       H.idCalidadSistema = J.idCalidadSistema                                                     INNER JOIN
     CalidadDocumentoAuditoriaInternaPrograma     K ON A.idCalidadDocumentoAuditoriaInternaPrograma = K.idCalidadDocumentoAuditoriaInternaPrograma INNER JOIN
     TipoAuditoriaCalidad                         M ON K.idTipoAuditoriaCalidad = M.idTipoAuditoriaCalidad
UNION ALL
-- This query locates and balances for each system belonging to one 
-- enterprise defined in program records yielding all those internal audit notifications
-- which don't have NC setting NUMNC always to 0 
SELECT M.idCalidadDocumentoAuditoriaInterna,
       M.idCalidadDocumentoAuditoriaInternaNotificacion,
       M.idCalidadDocumentoAuditoriaInternaPrograma,
       Q.idCalidadEmpresa idEMPMainAuditor, 
       R.szDescripcion MainAuditorEmpName,
       Q.szCodigoArea, 
       S.szDescripcion AreaName, 
       Q.szNomenclatura,
       Q.idAuditorPrincipal, 
       C.szNombre + ' ' + C.szApellido MainAuditorName,
       Q.idCalidadSistema idSYSMainAuditor, 
       E.szDescripcion AuditorMainSysName,
       P.dtNotificacion, 
       0 NUMNC,
       N.idCalidadEmpresa, 
       N.idCalidadSistema, 
       O.szDescripcion EmpName, 
       N.szDescripcion SysName,
       K.idTipoAuditoriaCalidad, 
       L.szDescripcion AuditTypeName,
       Q.iStatus,
       K.iNumPrograma
FROM (
      SELECT A.idCalidadDocumentoAuditoriaInternaNotificacion, 
             B.idCalidadEmpresa,
             B.idCalidadDocumentoAuditoriaInterna,
             B.idCalidadDocumentoAuditoriaInternaPrograma
      FROM CalidadDocumentoAuditoriaInternaNotificacion A INNER JOIN
           CalidadDocumentoAuditoriaInterna             B ON A.idCalidadDocumentoAuditoriaInterna = B.idCalidadDocumentoAuditoriaInterna
      WHERE A.idCalidadDocumentoAuditoriaInternaNotificacion NOT IN (
               SELECT idCalidadDocumentoAuditoriaInternaNotificacion 
               FROM VWQCSHOWDOCFULLINTERNALAUDITNC
               )
     )                                            M                                                                                                        CROSS JOIN 
     CalidadSistema                               N                                                                                                        INNER JOIN
     CalidadDocumentoAuditoriaInternaPrograma     K ON M.idCalidadDocumentoAuditoriaInternaPrograma = K.idCalidadDocumentoAuditoriaInternaPrograma         INNER JOIN
     CalidadEmpresas                              O ON N.idCalidadEmpresa = O.idCalidadEmpresa                                                             INNER JOIN
     CalidadDocumentoAuditoriaInternaNotificacion P ON M.idCalidadDocumentoAuditoriaInternaNotificacion = P.idCalidadDocumentoAuditoriaInternaNotificacion INNER JOIN
     CalidadDocumentoAuditoriaInterna             Q ON M.idCalidadDocumentoAuditoriaInterna = Q.idCalidadDocumentoAuditoriaInterna                         INNER JOIN
     CalidadEmpresas                              R ON Q.idCalidadEmpresa = R.idCalidadEmpresa                                                             INNER JOIN
     AreasCalidad                                 S ON Q.szCodigoArea = S.szCodigoArea                                                                     INNER JOIN
     Usuarios                                     C ON Q.idAuditorPrincipal = C.idUsuario                                                                  INNER JOIN
     TipoAuditoriaCalidad                         L ON K.idTipoAuditoriaCalidad = L.idTipoAuditoriaCalidad                                                 INNER JOIN
     CalidadSistema                               E ON Q.idCalidadEmpresa = E.idCalidadEmpresa AND
                                                       Q.idCalidadSistema = E.idCalidadSistema
WHERE N.idCalidadEmpresa = M.idCalidadEmpresa

GO
