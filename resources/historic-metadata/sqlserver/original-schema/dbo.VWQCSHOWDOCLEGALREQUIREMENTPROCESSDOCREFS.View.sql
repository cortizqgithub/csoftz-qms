USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCLEGALREQUIREMENTPROCESSDOCREFS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCLEGALREQUIREMENTPROCESSDOCREFS                   */
/* Description:   View al process document references to a legal requirement  */
/*                document.                                                   */
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
CREATE VIEW [dbo].[VWQCSHOWDOCLEGALREQUIREMENTPROCESSDOCREFS]
AS
SELECT A.idCalidadRequisitoLegal, A.idCalidadEmpresa, B.szDescripcion EmpName, A.szCodigoArea, 
       C.szDescripcion AreaName, C.iProceso
FROM CalidadRequisitoLegalProcesoReferencia A                                            INNER JOIN
     CalidadEmpresas                        B ON A.idCalidadEmpresa = B.idCalidadEmpresa INNER JOIN
     AreasCalidad                           C ON A.idCalidadEmpresa = C.idCalidadEmpresa AND
                                                 A.szCodigoArea = C.szCodigoArea

GO
