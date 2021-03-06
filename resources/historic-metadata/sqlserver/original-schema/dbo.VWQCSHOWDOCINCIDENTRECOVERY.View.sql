USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINCIDENTRECOVERY]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINCIDENTRECOVERY                                 */
/* Description:   Show info about qc incident docs. (Recovery)                */
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
create view [dbo].[VWQCSHOWDOCINCIDENTRECOVERY]
as
select A.idCalidadDocumentoIncidenteRecuperacion, A.idCalidadDocumentoIncidente,
       A.szRecuperacion, A.dtFecha,
	   A.idUsuario, B.szNombre + ' ' + B.szApellido UsrName
from CalidadDocumentoIncidenteRecuperacion A inner join
     Usuarios                              B on A.idUsuario = B.IdUsuario;

GO
