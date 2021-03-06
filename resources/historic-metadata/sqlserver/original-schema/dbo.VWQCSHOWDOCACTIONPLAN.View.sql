USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCACTIONPLAN]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCACTIONPLAN                                       */
/* Description:   Show info about qc Action plan docs.                        */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.03/2004                                                 */
/* Last Modified: Sep.03/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Sep.03/2004 File created.
------------------------------------------------------------------------------*/
CREATE   VIEW [dbo].[VWQCSHOWDOCACTIONPLAN]
AS
SELECT A.idCalidadDocumentoRevisionDireccionPlanAccion, A.idCalidadEmpresa, A.idCalidadSistema,
       A.szTipoAccionCalidadPlan, A.IdCalidadDocumentoMejoraContinua, A.szNomenclaturaMejoraContinua, A.szNomenclatura,
       A.szCodigoArea, A.idUsuarioResponsable, A.dtInicio, A.dtFin,
       A.idUsuarioSolicita, A.dtSolicitud, A.iStatus, A.bAprobado,
       A.szAccion, A.dtPlazoGeneral, A.szConsideraciones, A.iSecuencia,
       A.iYear,
       B.szDescripcion EmpName,
       C.szDescripcion SysName,
       D.szDescripcion ActionTypeName,
       E.szNomenclatura ImprvDocNomenclature,
       F.szNombre + ' ' + F.szApellido UsrResponsible,
       G.szNombre + ' ' + G.szApellido UsrRequester,
       H.szDescripcion AreaName
FROM CalidadDocumentoRevisionDireccionPlanAccion A INNER JOIN
     CalidadEmpresas                             B ON A.idCalidadEmpresa = B.idCalidadEmpresa INNER JOIN
     CalidadSistema                              C ON A.idCalidadSistema = C.idCalidadSistema INNER JOIN
     TipoAccionCalidadPlan                       D ON A.szTipoAccionCalidadPlan = D.idTipoAccionCalidadPlan LEFT JOIN
     CalidadDocumentoMejoraContinua              E ON A.IdCalidadDocumentoMejoraContinua = E.IdCalidadDocumentoMejoraContinua INNER JOIN
     Usuarios                                    F ON A.idUsuarioResponsable = F.idUsuario INNER JOIN
     Usuarios                                    G ON A.idUsuarioSolicita = G.idUsuario INNER JOIN
     AreasCalidad                                H ON A.idCalidadEmpresa = H.idCalidadEmpresa AND
                                                      A.szCodigoArea = H.szCodigoArea





GO
