USE [sqm]
GO
/****** Object:  View [dbo].[Vista_mauricio]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista_mauricio]
AS
SELECT     E.szDescripcion AS EmpOriginName, A.szNombre AS MainRLName, A.szEstadoCumplimiento, A.szDescripcion, 
                      A.iCntModificadoPor AS [Modificado por], A.iCntModificaA AS [Modifica A]
FROM         dbo.CalidadRequisitoLegal AS A INNER JOIN
                      dbo.CalidadEmpresas AS B ON A.idCalidadEmpresa = B.IdCalidadEmpresa INNER JOIN
                      dbo.CalidadSistema AS C ON A.idCalidadSistema = C.idCalidadSistema INNER JOIN
                      dbo.CalidadTipoDisposicionLegal AS D ON A.idCalidadTipoDisposicionLegal = D.idCalidadTipoDisposicionLegal INNER JOIN
                      dbo.CalidadReqLegalEmpresaOrigen AS E ON A.idCalidadReqLegalEmpresaOrigen = E.idCalidadReqLegalEmpresaOrigen LEFT OUTER JOIN
                      dbo.CalidadReqLegalPeligro AS M ON A.idCalidadReqLegalPeligro = M.idCalidadReqLegalPeligro LEFT OUTER JOIN
                      dbo.CalidadReqLegalRiesgo AS G ON A.idCalidadReqLegalRiesgo = G.idCalidadReqLegalRiesgo LEFT OUTER JOIN
                      dbo.CalidadReqLegalMedio AS H ON A.idCalidadReqLegalMedio = H.idCalidadReqLegalMedio LEFT OUTER JOIN
                      dbo.Usuarios AS I ON A.idUsuario = I.IdUsuario

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[17] 4[26] 2[17] 3) )"
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
               Top = 6
               Left = 316
               Bottom = 84
               Right = 482
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 520
               Bottom = 99
               Right = 684
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 6
               Left = 722
               Bottom = 84
               Right = 942
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "E"
            Begin Extent = 
               Top = 84
               Left = 722
               Bottom = 162
               Right = 962
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "M"
            Begin Extent = 
               Top = 84
               Left = 316
               Bottom = 162
               Right = 515
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "G"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 192
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vista_mauricio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Begin Table = "H"
            Begin Extent = 
               Top = 162
               Left = 275
               Bottom = 240
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "I"
            Begin Extent = 
               Top = 6
               Left = 980
               Bottom = 114
               Right = 1150
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
      Begin ColumnWidths = 35
         Width = 284
         Width = 2280
         Width = 1500
         Width = 3615
         Width = 6105
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 4395
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2685
         Width = 1500
         Width = 4965
         Width = 3315
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3375
         Alias = 2505
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vista_mauricio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vista_mauricio'
GO
