USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCLEGALREQUIREMENT]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCLEGALREQUIREMENT                                 */
/* Description:   Retrieves Legal Requirements documents                      */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jan.06/2007                                                 */
/* Last Modified: Aug.28/2013                                                 */
/* Version:       1.4                                                         */
/* Copyright (c), 2007 Cinemática Producciones Ltda.                          */
/*                2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jan.06/2007 File created.
 Jun.10/2013 Added field 'Criterio Verificación'
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCLEGALREQUIREMENT]
AS
SELECT  A.idCalidadRequisitoLegal
      , A.idCalidadEmpresa
      , B.szDescripcion EmpName
      , A.idCalidadSistema
      , C.szDescripcion SysName
      , A.idCalidadTipoDisposicionLegal
      , D.szDescripcion LegalDispositionTypeName
      , A.idCalidadReqLegalEmpresaOrigen
      , E.szDescripcion EmpOriginName
      , A.idCalidadReqLegalRiesgo
      , G.szDescripcion RiskName
      , A.idCalidadReqLegalMedio
      , H.szDescripcion MediaName
      , A.idCalidadReqLegalPeligro
      , M.szDescripcion DangerName
      , A.iNumero
      , A.dtFecha
      , A.szNombre MainRLName
      , A.szNombre2 MainRLName2
      , A.szArchivo MainRLLink
      , A.szDescripcion
      , A.szCriterioVerificacion
      , A.szEstadoCumplimiento
      , A.iCntModificadoPor
      , A.iCntModificaA
      , A.iCntDocReferencias
      , A.iCntProcesoDocReferencias
      , A.iCntUpdates
      , A.dtFechaIngreso
      , A.dtFechaActualiza
      , A.iStatus
      , A.bActivo
      , A.idUsuario
      , I.szNombre + ' ' + I.szApellido UserName
      , I.szEmail
FROM CalidadRequisitoLegal        A                                                                        INNER JOIN 
     CalidadEmpresas              B ON A.idCalidadEmpresa = B.idCalidadEmpresa                             INNER JOIN
     CalidadSistema               C ON A.idCalidadSistema = C.idCalidadSistema                             INNER JOIN 
     CalidadTipoDisposicionLegal  D ON A.idCalidadTipoDisposicionLegal = D.idCalidadTipoDisposicionLegal   INNER JOIN
     CalidadReqLegalEmpresaOrigen E ON A.idCalidadReqLegalEmpresaOrigen = E.idCalidadReqLegalEmpresaOrigen LEFT JOIN
     CalidadReqLegalPeligro       M ON A.idCalidadReqLegalPeligro = M.idCalidadReqLegalPeligro             LEFT JOIN
     CalidadReqLegalRiesgo        G ON A.idCalidadReqLegalRiesgo = G.idCalidadReqLegalRiesgo               LEFT JOIN
     CalidadReqLegalMedio         H ON A.idCalidadReqLegalMedio = H.idCalidadReqLegalMedio                 LEFT JOIN
     Usuarios                     I ON A.idUsuario = I.idUsuario

GO
