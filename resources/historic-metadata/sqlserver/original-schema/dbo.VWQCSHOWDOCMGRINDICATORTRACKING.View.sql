USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCMGRINDICATORTRACKING]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCMGRINDICATORTRACKING                             */
/* Description:   Show info about qc management indicator tracking.           */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.13/2004                                                 */
/* Last Modified: Jan.26/2006                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004, 2006 Cinemática Producciones Ltda.                    */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Sep.13/2004 File created.
------------------------------------------------------------------------------*/
CREATE   VIEW [dbo].[VWQCSHOWDOCMGRINDICATORTRACKING]
AS
SELECT A.idCalidadDocumentoRevisionDireccionIndicadoresSeguimiento,
       A.idCalidadDocumentoRevisionDireccionIndicadores, 
       A.szNomenclatura, A.iSecuencia, A.dtInicio, A.dtFin,
       A.idUsuarioSolicita, A.dtSolicitud, A.iStatus, A.bAprobado,
       B.idCalidadEmpresa, B.iYear, B.szCodigoArea, B.szNomenclatura DefMgrIndicatorNomenclature,
       B.EmpName, B.idUsuarioResponsable, B.UsrResponsibleName, B.UsrRequestName, B.AreaName,
       C.szNombre + ' ' + C.szApellido UsrRequestNameTracking
FROM CalidadDocumentoRevisionDireccionIndicadoresSeguimiento A                                                                                                        INNER JOIN
     VWQCSHOWDOCDEFMGRINDICATOR                              B ON A.idCalidadDocumentoRevisionDireccionIndicadores = B.idCalidadDocumentoRevisionDireccionIndicadores INNER JOIN
     Usuarios                                                C ON A.idUsuarioSolicita = C.idUsuario





GO
