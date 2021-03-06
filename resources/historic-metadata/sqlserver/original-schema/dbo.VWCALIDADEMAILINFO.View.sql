USE [sqm]
GO
/****** Object:  View [dbo].[VWCALIDADEMAILINFO]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWCALIDADEMAILINFO                                          */
/* Description:   View to select info when writing an e-mail                  */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.14/2004                                                 */
/* Last Modified: Jun.24/2004                                                 */
/* Version:       1.3                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 May.14/2004 File created.
 Jun.21/2004 Changed for db restructure.
------------------------------------------------------------------------------*/
CREATE     VIEW [dbo].[VWCALIDADEMAILINFO]
AS
SELECT A.IdCalidadDocumentoControlCambios,
       A.dtFechaSolicitud, A.dtFechaCambio, A.szDescripcionCambio, A.szDescripcionJustificacion,
       A.dtFechaVersionNueva, A.iVersionNueva, A.iSecuencia, A.szNomenclatura,
       A.szNombre, A.szLink, A.iVersion, A.dtFechaVersion,
       A.szAprobo, A.szEmpresaOrigenDocExt, A.szResponsableDocExt, A.szMedioRegistro,
       A.szLugarAlmacenamiento, A.szTiempo, A.szAcceso, A.bTipico,
       A.bActivo, A.iReportNum, A.dtFechaIngreso, A.dtFechaActualiza, A.iCntReferencias,
       A.iCalidadEmpresa, A.szCodigoArea, A.szCodigoTipoDocumento,
       B.szNombre + ' ' + B.szApellido UserName, B.szEmail,
       C.szDescripcion DocTypeName,
       D.szDescripcion AreaName,
       E.szDescripcion EmpName
FROM CalidadDocumentoControlCambios A                                                       INNER JOIN
     Usuarios                       B ON A.idUsuarioSolicita = B.idUsuario                  INNER JOIN
     TipoDocumentoCalidad           C ON A.szCodigoTipoDocumento = C.szCodigoDocumento AND
                                         A.iCalidadEmpresa = C.idCalidadEmpresa             INNER JOIN
     AreasCalidad                   D ON A.iCalidadEmpresa = D.idCalidadEmpresa AND
                                         A.szCodigoArea = D.szCodigoArea                    INNER JOIN
     CalidadEmpresas E ON D.idCalidadEmpresa = E.idCalidadEmpresa



GO
