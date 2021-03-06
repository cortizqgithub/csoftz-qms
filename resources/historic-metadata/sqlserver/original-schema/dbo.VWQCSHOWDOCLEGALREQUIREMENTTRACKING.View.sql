USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCLEGALREQUIREMENTTRACKING]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCLEGALREQUIREMENTTRACKING                         */
/* Description:   View to retrieve trackings for legal requirements           */
/*                documents.                                                  */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jun.15/2013                                                 */
/* Last Modified: Aug.31/2013                                                 */
/* Version:       1.3                                                         */
/* Copyright (c), 2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jun.15/2013 File created.
------------------------------------------------------------------------------*/

CREATE VIEW [dbo].[VWQCSHOWDOCLEGALREQUIREMENTTRACKING]
AS
select A.idCalidadRequisitoLegalSeguimiento, 
       A.idCalidadRequisitoLegal, C.EmpName, C.SysName, C.MainRLName,
       A.szDescripcion, A.dtFecha,
       A.idUsuario, A.iStatusTracking,
       B.szNombre + ' ' + B.szApellido ResponsibleName
from CalidadRequisitoLegalSeguimiento A                              inner join
     Usuarios                         B on A.idUsuario = B.idUsuario inner join
     VWQCSHOWDOCLEGALREQUIREMENT      C on A.idCalidadRequisitoLegal = C.idCalidadRequisitoLegal;

GO
