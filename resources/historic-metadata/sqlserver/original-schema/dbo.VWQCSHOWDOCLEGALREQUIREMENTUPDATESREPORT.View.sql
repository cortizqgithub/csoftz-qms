USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCLEGALREQUIREMENTUPDATESREPORT]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Since Jan.04/2014
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCLEGALREQUIREMENTUPDATESREPORT                    */
/* Description:   Special view to show report.                                */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.15/2007                                                 */
/* Last Modified: Jan.04/2014                                                 */
/* Version:       1.3                                                         */
/* Copyright (c), 2007 Cinemática Producciones Ltda.                          */
/*                2014 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------
 History
 Aug.07/2007 File created.
 Jan.04/2014 Field szEstadoCumplimiento added
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCLEGALREQUIREMENTUPDATESREPORT]
AS
SELECT A.idCalidadRequisitoLegal, A.idCalidadEmpresa, A.EmpName, A.idCalidadSistema, A.SysName, A.idCalidadTipoDisposicionLegal, 
       A.LegalDispositionTypeName, A.idCalidadReqLegalEmpresaOrigen, A.EmpOriginName, A.MainRLName, A.iNumero, A.dtFecha, 
       B.idCalidadRequisitoLegalCambioLinks, B.iLinkModificadoPor, B.szDescripcion AS Remarks, B.bTramitado, C.MainRLName AS RLNameChange, 
       C.EmpOriginName AS EmpOriginNameChange, A.szEstadoCumplimiento
FROM VWQCSHOWDOCLEGALREQUIREMENT      AS A INNER JOIN
     CalidadRequisitoLegalCambioLinks AS B ON A.idCalidadRequisitoLegal = B.idCalidadRequisitoLegal INNER JOIN
     VWQCSHOWDOCLEGALREQUIREMENT      AS C ON C.idCalidadRequisitoLegal = B.iLinkModificadoPor

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 288
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2175
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2865
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VWQCSHOWDOCLEGALREQUIREMENTUPDATESREPORT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VWQCSHOWDOCLEGALREQUIREMENTUPDATESREPORT'
GO
