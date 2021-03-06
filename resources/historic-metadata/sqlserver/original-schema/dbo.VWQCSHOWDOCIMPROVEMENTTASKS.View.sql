USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCIMPROVEMENTTASKS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCIMPROVEMENTTASKS                                 */
/* Description:   View to select info to know which new improvement documents */
/*                are issued (task info).                                     */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.06/2004                                                 */
/* Last Modified: Jul.10/2004                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jul.06/2004 File created.
 Jul.06/2004 Changed for db restructure.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCIMPROVEMENTTASKS]
AS
SELECT A.idCalidadDocumentoMejoraContinuaTareas,
       A.idCalidadDocumentoMejoraContinua,
       A.szTarea,
       A.dtFecha,
       B.szNombre + ' ' + B.szApellido UsrName,
       A.idUsuario
FROM CalidadDocumentoMejoraContinuaTareas A INNER JOIN
     Usuarios                             B ON A.idUsuario = B.idUsuario





GO
