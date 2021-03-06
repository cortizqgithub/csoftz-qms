USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDITFINALREPORTAUDITED]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINTERNALAUDITFINALREPORTAUDITED                  */
/* Description:   View to select info regarding auditors.                     */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Aug.11/2004                                                 */
/* Last Modified: Aug.14/2004                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES:
  Whenever you need to lookup a value in table CalidadSistema it is assured
  that you can only use the idCalidadSistema (or whichever applies) to
  traverse that table (this is possible as the CalidadSistema PK is an auto
  increment generated value).

  The same rationale applies when looking up a value for CalidadAuditores
  which idUsuarioAuditor maps directly tu idUsuario in table Usuarios, thus
  not needing to use the whole CalidadAuditores PK, that is, instead of using
  CalidadAuditores table you can go directly to Usuarios table and this way
  CalidadAuditores is only a filtering table for Usuarios.
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Aug.11/2004 File created.
------------------------------------------------------------------------------*/
CREATE  VIEW [dbo].[VWQCSHOWDOCINTERNALAUDITFINALREPORTAUDITED]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaInformeFinalAuditados,
       A.idCalidadDocumentoAuditoriaInternaInformeFinal,
       A.idAuditado,
       B.szNombre + ' ' + B.szApellido UsrName
FROM CalidadDocumentoAuditoriaInternaInformeFinalAuditados A INNER JOIN
     Usuarios                                              B ON A.idAuditado = B.idUsuario





GO
