USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCLEGALREQUIREMENTUPDATES]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCLEGALREQUIREMENTUPDATES                          */
/* Description:   View to retrieve the updates/changes to legal requirements  */
/*                documents.                                                  */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jan.06/2007                                                 */
/* Last Modified: Sep.15/2007                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2007 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 NOTES:
 Holds updates to legal request documents.
 Notice that request document information is stored for 'iLinkModificadoPor' 
 field value, i.e., all fields retrieved from table/view with alias 'B' are 
 fetched related to 'iLinkModificadoPor' field value.
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jan.06/2007 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCLEGALREQUIREMENTUPDATES]
AS
SELECT   A.idCalidadRequisitoLegalCambioLinks
       , A.idCalidadRequisitoLegal
       , A.iLinkModificadoPor
       , A.szDescripcion
       , A.dtFechaModificacion
       , A.dtFechaModdificaRegistro
       , A.idUsuario
       , A.bTramitado
       , B.EmpName
       , B.SysName
       , B.LegalDispositionTypeName
       , B.EmpOriginName
       , B.RiskName
       , B.DangerName
       , B.MainRLName
       , B.szEstadoCumplimiento
       , B.MainRLLink
       , C.szNombre + ' ' + C.szApellido ModifyUserName
FROM CALIDADREQUISITOLEGALCAMBIOLINKS A INNER JOIN
     VWQCSHOWDOCLEGALREQUIREMENT      B ON A.iLinkModificadoPor = B.idCalidadRequisitoLegal INNER JOIN
     USUARIOS                         C ON A.idUsuario = C.idUsuario

GO
