USE [sqm]
GO
/****** Object:  Table [dbo].[SkinDetails]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkinDetails](
	[idSkinDetail] [int] IDENTITY(1,1) NOT NULL,
	[idSkin] [int] NOT NULL,
	[idSkinSection] [int] NOT NULL,
	[iPosition] [smallint] NOT NULL,
 CONSTRAINT [PK_SkinDetails] PRIMARY KEY CLUSTERED 
(
	[idSkinDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
