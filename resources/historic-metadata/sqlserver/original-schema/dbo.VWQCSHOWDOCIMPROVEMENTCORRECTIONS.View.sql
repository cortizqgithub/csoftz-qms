USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCIMPROVEMENTCORRECTIONS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Since Jan.22/2014
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCIMPROVEMENTCORRECTIONS                           */
/* Description:   View to select info to know which new improvement documents */
/*                are issued (Correction info).                               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jun.06/2013                                                 */
/* Last Modified: Jan.22/2014                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2013, 2014 CSoftZ                                           */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jun.06/2013 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCIMPROVEMENTCORRECTIONS]
AS
SELECT A.idCalidadDocumentoMejoraContinuaCorrecciones,
       A.idCalidadDocumentoMejoraContinua,
       A.szCorreccion,
       A.dtFecha,
       B.szNombre + ' ' + B.szApellido UsrName,
       A.idUsuario
FROM CalidadDocumentoMejoraContinuaCorrecciones A INNER JOIN
     Usuarios                                   B ON A.idUsuario = B.idUsuario;

GO
