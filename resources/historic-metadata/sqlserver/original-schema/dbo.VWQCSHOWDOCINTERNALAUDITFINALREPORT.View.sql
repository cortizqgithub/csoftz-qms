USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDITFINALREPORT]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINTERNALAUDITFINALREPORT                         */
/* Description:   View to select info regarding internal audit final report   */
/*                info.                                                       */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Aug.04/2004                                                 */
/* Last Modified: May.22/2006                                                 */
/* Version:       1.8                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES:
  Whenever you need to lookup a value in table CalidadSistema it is assured
  that you can only use the idCalidadSistema (or whichever applies) to
  traverse that table (this is possible as the CalidadSistema PK is an auto
  increment generated value).

  The following note only applies whenever necessary.
  The same rationale applies when looking up a value for CalidadAuditores
  which idUsuarioAuditor maps directly tu idUsuario in table Usuarios, thus
  not needing to use the whole CalidadAuditores PK, that is, instead of using
  CalidadAuditores table you can go directly to Usuarios table and this way
  CalidadAuditores is only a filtering table for Usuarios.
------------------------------------------------------------------------------*/


/*-----------------------------------------------------------------------------
 History
 Aug.04/2004 File created.
 Feb.05/2006 Added new field A.szConclusiones
 May.22/2006 Field idCalidadSistema dropped from view
------------------------------------------------------------------------------*/
CREATE  VIEW [dbo].[VWQCSHOWDOCINTERNALAUDITFINALREPORT]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaInformeFinal, A.idCalidadDocumentoAuditoriaInternaNotificacion,
       A.szAspectosRelevantes, A.szAspectosMejorar, A.dtInformeFinal,
       A.dtUltimaActualizacion, A.bAprobado, A.idUsuarioGenera,
       A.iNumNCPendientes, A.szConclusiones,
       B.idCalidadDocumentoAuditoriaInterna, B.dtFechaConcepto, B.dtHoraConcepto,
       B.dtFechaRApertura, B.dtHoraRApertura, B.dtFechaEjecucion,
       B.dtHoraEjecucion, B.dtFechaRCierre, B.dtHoraRCierre,
       B.idUsuarioResponsable, B.AIReach, B.AINumerals,
       B.dtNotificacion, B.NotifLastUpdate, B.NotifApproved,
       B.idUsuarioNotifica, B.idCalidadEmpresa, B.idTipoAuditoriaCalidad,
       B.iYear,iCiclo, B.szCodigoArea, B.iSeq, B.szNomenclatura,
       B.dtFI, B.dtFF, B.AIObject,
       B.szCriterios, B.szRecursos, B.ProcessInfo, B.idAuditorPrincipal,
       B.iStatus, B.iNumNC, B.iNumPrograma, B.dtAuditoria, B.bEjecucion,
       B.AILastUpdate, B.EmpName, B.AreaName,
       B.AuditTypeName, B.MainAuditorName,
       B.UsrResponsibleName, B.UsrNotifyName,
       C.szNombre + ' ' + C.szApellido UsrFinalReportMaker
FROM CalidadDocumentoAuditoriaInternaInformeFinal A                                                                                                        INNER JOIN
     VWQCSHOWDOCINTERNALAUDITNOTIF                B ON A.idCalidadDocumentoAuditoriaInternaNotificacion = B.idCalidadDocumentoAuditoriaInternaNotificacion INNER JOIN
     Usuarios                                     C ON A.idUsuarioGenera = C.idUsuario


GO
