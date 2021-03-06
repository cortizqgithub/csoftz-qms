USE [sqm]
GO
/****** Object:  View [dbo].[VWQCDOCREFS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






/*----------------------------------------------------------------------------*/
/* Source File:   VWQCDOCREFS                                                 */
/* Description:   View to select info regarding document references stored in */
/*                qc documents.                                               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.14/2004                                                 */
/* Last Modified: Jun.21/2004                                                 */
/* Version:       1.3                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 May.14/2004 File created.
 Jun.15/2004 Added szLink.
 Jun.21/2004 Changed for db restructure.
------------------------------------------------------------------------------*/
CREATE     VIEW [dbo].[VWQCDOCREFS]
AS
SELECT A.idCalidadDocumentos,
       A.idCalidadDocumentosRef,
       B.iCalidadEmpresa, B.szCodigoArea, B.szCodigoTipoDocumento, B.szNomenclatura,
       B.szNombre, B.iVersion, B.dtFechaVersion, B.szLink,
       C.szDescripcion DocTypeName,
       D.szDescripcion AreaName,
       E.szDescripcion EmpName
FROM CalidadDocumentoReferencia     A INNER JOIN
     CalidadDocumentos              B ON A.idCalidadDocumentosRef = B.idCalidadDocumentos INNER JOIN
     TipoDocumentoCalidad           C ON B.iCalidadEmpresa = C.idCalidadEmpresa AND
                                         B.szCodigoTipoDocumento = C.szCodigoDocumento    INNER JOIN
     AreasCalidad                   D ON B.iCalidadEmpresa = D.idCalidadEmpresa AND
                                         B.szCodigoArea = D.szCodigoArea                  INNER JOIN
     CalidadEmpresas                E ON D.idCalidadEmpresa = E.idCalidadEmpresa






GO
