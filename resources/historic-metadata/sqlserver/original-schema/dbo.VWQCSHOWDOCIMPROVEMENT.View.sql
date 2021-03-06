USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCIMPROVEMENT]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCIMPROVEMENT                                      */
/* Description:   Show info about qc improvement docs.                        */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.04/2004                                                 */
/* Last Modified: Jun.06/2013                                                 */
/* Version:       1.7                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
/*                2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jul.04/2004 File created.
 Feb.05/2006 Included A.bAprobado field
 Jun.01/2013 New field idCalidadTema, ThemeName added.
 Jun.06/2013 New field szEvalEficacia
------------------------------------------------------------------------------*/
CREATE               VIEW [dbo].[VWQCSHOWDOCIMPROVEMENT]
AS
SELECT A.IdCalidadDocumentoMejoraContinua, A.szTipoAccionCalidad, A.szCodigoArea,
       A.iSecuencia, A.szNomenclatura, A.IdUsuarioSolicita,
       A.IdUsuarioAprueba, A.IdUsuarioVerifica, idUsuarioCierre,
       A.dtFechaSolicitud, A.idImpacto, A.bAvance, A.bEficacia,
       A.dtFechaAprueba, A.dtFechaVerifica, A.dtFechaCierre,
       A.dtFechaIdentificacion, A.idCalidadDocumentoAuditoriaInternaInformeFinalNC,
       A.idCalidadEmpresa, A.idCalidadSistema, A.idTipoAreaDetectoraCalidad,
       A.szNroAuditoria, A.szDescNoConformidad, A.idCalidadNumerales,
       A.szCausas, A.bViable, A.szViabilidad,
       A.szCierre, A.iStatus, A.szNuevaAccion, A.idNuevaAccion,
       A.iEstadoDoc, A.bAprobado, 
       B.szNombre + ' ' + B.szApellido UsrNameRequest,
       C.szNombre + ' ' + C.szApellido UsrNameApprove,
       D.szNombre + ' ' + D.szApellido UsrNameVerify,
       I.szNombre + ' ' + I.szApellido UsrNameClosure,
       E.szDescripcion EmpName, F.szDescripcion SysName, G.szDescripcion AreaName,
       H.szDescripcion ActionTypeName,
       J.szDescripcion ImpactName,
       A.idCalidadTema, K.szDescripcion ThemeName,
	   A.szEvalEficacia
FROM CalidadDocumentoMejoraContinua A                                                  INNER JOIN
     Usuarios                       B ON A.idUsuarioSolicita = B.idUsuario             LEFT JOIN
     Usuarios                       C ON A.idUsuarioAprueba = C.idUsuario              LEFT JOIN
     Usuarios                       D ON A.idUsuarioVerifica = D.idUsuario             LEFT JOIN
     Usuarios                       I ON A.idUsuarioCierre = I.idUsuario               INNER JOIN
     CalidadEmpresas                E ON A.idCalidadEmpresa = E.idCalidadEmpresa       INNER JOIN
     CalidadSistema                 F ON A.idCalidadSistema = F.idCalidadSistema       INNER JOIN
     AreasCalidad                   G ON A.idCalidadEmpresa = G.idCalidadEmpresa AND
                                         A.szCodigoArea = G.szCodigoArea               INNER JOIN
     TipoAccionCalidad              H ON A.szTipoAccionCalidad = H.szTipoAccionCalidad INNER JOIN
     TipoImpactoCalidad             J ON A.idImpacto = J.idTipoImpactoCalidad          LEFT JOIN
     CalidadTema                    K ON A.idCalidadTema = K.idCalidadTema


GO
