USE [sqm]
GO
/****** Object:  View [dbo].[VWTEMPLATEDOCINFO]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWTEMPLATEDOCINFO                                           */
/* Description:   View to select template info for new document creation.     */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.14/2004                                                 */
/* Last Modified: Jun.22/2004                                                 */
/* Version:       1.3                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 May.14/2004 File created.
 Jun.21/2004 Changed for db restructure.
------------------------------------------------------------------------------*/
CREATE    VIEW [dbo].[VWTEMPLATEDOCINFO]
AS
SELECT A.idCalidadDocumentoNuevo, A.szNombre, A.szLink, A.iCalidadEmpresa, A.szCodigoDocumento,
       B.szDescripcion DocTypeName, D.szDescripcion EmpName

FROM CalidadDocumentoNuevo A                                                INNER JOIN
     TipoDocumentoCalidad  B ON A.iCalidadEmpresa = B.idCalidadEmpresa AND
                                A.szCodigoDocumento = B.szCodigoDocumento   INNER JOIN
     CalidadEmpresas       D ON A.iCalidadEmpresa = D.idCalidadEmpresa





GO
