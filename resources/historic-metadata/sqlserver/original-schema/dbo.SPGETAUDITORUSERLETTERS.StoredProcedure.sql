USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPGETAUDITORUSERLETTERS]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   SPGETAUDITORUSERLETTERS                                     */
/* Description:   View to select first name letter usage from view            */
/*                VWQCSHOWAUDITORS                                            */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jan.11/2006                                                 */
/* Last Modified: May.22/2006                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2006 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jan.11/2006 File created.
------------------------------------------------------------------------------*/
CREATE  PROCEDURE [dbo].[SPGETAUDITORUSERLETTERS]
  @EMP INTEGER
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
      FROM (SELECT UPPER(SUBSTRING(UsrName, 1, 1)) NAME, COUNT(1) CNT
            FROM VWQCSHOWAUDITORS
            WHERE bActivo = 1 AND idCalidadEmpresa = @EMP
            GROUP BY UPPER(SUBSTRING(UsrName, 1, 1)
           )
      ) B
  ) C
GROUP BY C.NNAME

GO
