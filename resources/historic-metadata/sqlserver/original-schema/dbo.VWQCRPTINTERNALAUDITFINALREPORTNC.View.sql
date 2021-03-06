USE [sqm]
GO
/****** Object:  View [dbo].[VWQCRPTINTERNALAUDITFINALREPORTNC]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCRPTINTERNALAUDITFINALREPORTNC                           */
/* Description:   Points to final reports for Internal audit suited for       */
/*                reporting tasks including NC related information.           */
/*                NOTE, this is a wrapper for query noted                     */
/*                NOTES section below.                                        */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jun.01/2006                                                 */
/* Last Modified: Jun.01/2006                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2006 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES: Uses VWQCSHOWDOCFULLINTERNALAUDITFINALREPORTNC
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jun.01/2006 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCRPTINTERNALAUDITFINALREPORTNC]
AS
SELECT *
FROM VWQCSHOWDOCFULLINTERNALAUDITFINALREPORTNC

GO
