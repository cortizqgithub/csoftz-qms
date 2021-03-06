USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWREQUESTSDOCCREATE]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWREQUESTSDOCCREATE                                   */
/* Description:   View to select info to know which new documents are issued  */
/*                for creation.                                               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.14/2004                                                 */
/* Last Modified: Jul.02/2004                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 May.14/2004 File created.
 Jun.21/2004 Changed for db restructure.
------------------------------------------------------------------------------*/

/* NOTES: Pay special attention to the way we traverse to AreasCalidad.  This
          is accomplished by use of a field in table CalidadDocumentoNuevo and
          a stored field in CalidadDocumentoSolicitud when it is new record
          request (This is not a valid FK but it is valid in the sense of not
          having to ALTER  new tables to reflect this and besides the request
          has szCodigoAreaNuevoDoc as an atribute for it.
*/
CREATE    VIEW [dbo].[VWQCSHOWREQUESTSDOCCREATE]
AS
SELECT  A.idCalidadDocumentoSolicitud, A.idCalidadDocumentos, A.idCalidadDocumentoNuevo, A.idUsuario,
        A.iTipoModificacion, A.dtFechaSolicitud, A.dtFechaVersionNueva, A.iVersionNueva,
        B.szNombre + ' ' + B.szApellido UserName,
        C.szNombre, C.szDescripcion,
        D.szDescripcion DocTypeName,
        E.szDescripcion AreaName,
        F.szDescripcion EmpName,
        A.bTramitado
FROM CalidadDocumentoSolicitud A                                                          INNER JOIN
     Usuarios                  B ON A.idUsuario = B.idUsuario                             INNER JOIN
     CalidadDocumentoNuevo     C ON A.idCalidadDocumentoNuevo = C.idCalidadDocumentoNuevo INNER JOIN
     TipoDocumentoCalidad      D ON C.iCalidadEmpresa  = D.idCalidadEmpresa AND
                                    C.szCodigoDocumento = D.szCodigoDocumento             INNER JOIN
     AreasCalidad              E ON C.iCalidadEmpresa = E.idCalidadEmpresa AND
                                    A.szCodigoAreaNuevoDoc = E.szCodigoArea               INNER JOIN
     CalidadEmpresas           F ON E.idCalidadEmpresa = F.idCalidadEmpresa
WHERE A.iTipoModificacion = 1








GO
