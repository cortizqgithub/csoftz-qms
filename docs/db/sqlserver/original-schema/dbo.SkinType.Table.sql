USE [sqm]
GO
/****** Object:  Table [dbo].[SkinType]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SkinType](
	[idSkinType] [int] NOT NULL,
	[szDesc] [varchar](100) NOT NULL,
	[szDistribution] [char](1) NOT NULL,
	[szSkinBGColor] [varchar](10) NOT NULL,
	[bHeader] [smallint] NOT NULL,
	[szHintPrefix] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SkinType] PRIMARY KEY CLUSTERED 
(
	[idSkinType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
