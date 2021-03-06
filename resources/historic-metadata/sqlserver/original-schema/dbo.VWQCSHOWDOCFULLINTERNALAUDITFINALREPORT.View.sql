USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCFULLINTERNALAUDITFINALREPORT]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCFULLINTERNALAUDITFINALREPORT                     */
/* Description:   Points to final reports for Internal audit suited for       */
/*                reporting tasks.                                            */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jun.01/2006                                                 */
/* Last Modified: Jun.01/2006                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2006 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES: Uses VWQCSHOWDOCFULLINTERNALAUDITNOTIFNC
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jun.01/2006 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCFULLINTERNALAUDITFINALREPORT]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaPrograma,
       A.idCalidadDocumentoAuditoriaInterna,
       A.idCalidadDocumentoAuditoriaInternaNotificacion, 
       A.szCodigoArea, 
       B.idCalidadDocumentoAuditoriaInternaInformeFinal, 
       A.szNomenclatura, 
       A.NumNC, 
       A.idCalidadEmpresa,
       A.EmpName, 
       A.idCalidadSistema,
       A.SysName,
       A.idTipoAuditoriaCalidad,
       A.AuditTypeName,
       C.szNumerales AINumerals, 
       A.MainAuditorName,
       C.dtAuditoria, 
       A.iStatus,
       B.bAprobado,
       A.iNumPrograma
FROM VWQCSHOWDOCFULLINTERNALAUDITNOTIFNC            A INNER JOIN
     CalidadDocumentoAuditoriaInternaInformeFinal   B ON A.idCalidadDocumentoAuditoriaInternaNotificacion = B.idCalidadDocumentoAuditoriaInternaNotificacion INNER JOIN
     CalidadDocumentoAuditoriaInterna               C ON A.idCalidadDocumentoAuditoriaInterna = C.idCalidadDocumentoAuditoriaInterna

GO
