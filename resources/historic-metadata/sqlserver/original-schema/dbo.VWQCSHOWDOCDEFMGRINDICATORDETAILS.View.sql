USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCDEFMGRINDICATORDETAILS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCDEFMGRINDICATORDETAILS                           */
/* Description:   Show info about qc management indicator definition details. */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.10/2004                                                 */
/* Last Modified: Sep.10/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Sep.10/2004 File created.
------------------------------------------------------------------------------*/
CREATE  VIEW [dbo].[VWQCSHOWDOCDEFMGRINDICATORDETAILS]
AS
SELECT A.idCalidadDocumentoRevisionDireccionIndicadoresDef,
       A.idCalidadDocumentoRevisionDireccionIndicadores, A.szDefFormula, A.szImportancia,
       A.szProcedimiento, A.idUsuarioMide, A.idCalidadFrecuencia, A.szMeta,
       B.szNombre + ' ' + B.szApellido UsrMeasureName,
       C.szDescripcion FrequencyName
FROM CalidadDocumentoRevisionDireccionIndicadoresDef A                                  INNER JOIN
     Usuarios                                        B ON A.idUsuarioMide = B.idUsuario INNER JOIN
     CalidadFrecuencia                               C ON A.idCalidadFrecuencia = C.idCalidadFrecuencia



GO
