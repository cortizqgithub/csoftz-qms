USE [sqm]
GO
/****** Object:  View [dbo].[VWUSERLETTERS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWUSERLETTERS                                               */
/* Description:   View to select first name letter usage from table usuarios. */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Dec.28/2005                                                 */
/* Last Modified: Feb.05/2006                                                 */
/* Version:       1.6                                                         */
/* Copyright (c), 2005, 2006 Cinemática Producciones Ltda.                    */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Dec.28/2005 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWUSERLETTERS]
AS
SELECT NNAME, SUM(CNT) NUMNNAME
FROM (
      SELECT NAME, 
             CASE NAME 
               WHEN 'Á' THEN 'A'
               WHEN 'É' THEN 'E' 
               WHEN 'Í' THEN 'I' 
               WHEN 'Ó' THEN 'O' 
               WHEN 'Ú' THEN 'U' 
               ELSE NAME 
             END NNAME, CNT 
      FROM (SELECT UPPER(SUBSTRING(szNombre, 1, 1)) NAME, COUNT(1) CNT
            FROM USUARIOS
            WHERE bActivo = 1
            GROUP BY UPPER(SUBSTRING(szNombre, 1, 1)
           )
      ) B
  ) C
GROUP BY C.NNAME

GO
