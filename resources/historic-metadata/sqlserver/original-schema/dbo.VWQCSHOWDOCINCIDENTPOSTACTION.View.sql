USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINCIDENTPOSTACTION]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINCIDENTPOSTACTION                               */
/* Description:   Show info about qc incident docs. (Post Action)             */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Aug.05/2013                                                 */
/* Last Modified: Aug.07/2013                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Aug.05/2013 File created.
------------------------------------------------------------------------------*/

create view [dbo].[VWQCSHOWDOCINCIDENTPOSTACTION]
as
select A.idCalidadDocumentoIncidentePostAccion, A.idCalidadDocumentoIncidente,
       A.szPostAccion, A.dtFecha, 
       A.idUsuario, B.szNombre + ' ' + B.szApellido UsrName
from CalidadDocumentoIncidentePostAccion A inner join
     Usuarios                            B on A.idUsuario = B.IdUsuario;

GO
