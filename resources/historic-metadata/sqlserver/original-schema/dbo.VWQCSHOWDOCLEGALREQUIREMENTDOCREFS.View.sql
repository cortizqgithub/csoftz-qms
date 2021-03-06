USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCLEGALREQUIREMENTDOCREFS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCLEGALREQUIREMENTDOCREFS                          */
/* Description:   View al document references to a legal requirement document */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jan.06/2007                                                 */
/* Last Modified: Sep.15/2007                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2007 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jan.06/2007 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCLEGALREQUIREMENTDOCREFS]
AS
SELECT A.idCalidadRequisitoLegal
       , A.idCalidadDocumento
       , B.iCalidadEmpresa
       , B.szNomenclatura
       , B.szNombre
       , B.szLink
       , B.iCntReferencias
       , B.szCodigoArea
       , B.szCodigoTipoDocumento
       , C.szDescripcion EmpName
FROM CalidadRequisitoLegalDocReferencia A                                                 INNER JOIN
     CalidadDocumentos                  B ON A.idCalidadDocumento = B.idCalidadDocumentos INNER JOIN
     CalidadEmpresas                    C On B.iCalidadEmpresa = C.idCalidadEmpresa

GO
