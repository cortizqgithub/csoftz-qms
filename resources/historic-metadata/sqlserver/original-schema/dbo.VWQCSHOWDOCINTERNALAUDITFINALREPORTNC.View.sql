USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDITFINALREPORTNC]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINTERNALAUDITFINALREPORTNC                       */
/* Description:   View to select info regarding internal audit final report   */
/*                non-conformities info.                                      */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Aug.04/2004                                                 */
/* Last Modified: May.25/2004                                                 */
/* Version:       1.7                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
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
 Aug.04/2004 File created.
 Aug.27/2004 The link to CalidadDocumentoMejoraContinua may be null,
             because its value is system-generated to have it validated and
             thus only the final report can be sent to the administrator
             when all these non conformance are completely documented.
 May.18/2006 Added description for system which corresponds to the numeral code.
             That is, in table CalidadDocumentoAuditoriaInternaInformeFinalNC
             there is a field named idCalidadSistema which must be required in
             order to comply with numeral table's primary key in CalidadNumerales
------------------------------------------------------------------------------*/
CREATE       VIEW [dbo].[VWQCSHOWDOCINTERNALAUDITFINALREPORTNC]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaInformeFinalNC, A.idCalidadDocumentoAuditoriaInternaInformeFinal,
       A.idCalidadSistema, A.idCalidadNumerales, A.IdCalidadDocumentoMejoraContinua, A.bSel,
       A.szDescripcion NCDescription, E.szDescripcion SystemName,
       B.szNumeral, B.szDescripcion NumeralName, B.idCalidadGrupo,
       C.szDescripcion GroupName,
       D.szNomenclatura, D.szDescNoConformidad
FROM CalidadDocumentoAuditoriaInternaInformeFinalNC A                                                INNER JOIN
     CalidadNumerales                               B ON A.idCalidadSistema = B.idCalidadSistema AND
                                                         A.idCalidadNumerales = B.idCalidadNumerales LEFT JOIN
     CalidadSistema                                 E ON B.idCalidadSistema = E.idCalidadSistema     LEFT JOIN
     CalidadGrupos                                  C ON B.idCalidadGrupo = C.idCalidadGrupo         LEFT JOIN
     CalidadDocumentoMejoraContinua                 D ON A.IdCalidadDocumentoMejoraContinua = D.IdCalidadDocumentoMejoraContinua

GO
