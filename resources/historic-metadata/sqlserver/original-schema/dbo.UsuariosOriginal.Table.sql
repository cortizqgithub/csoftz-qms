USE [sqm]
GO
/****** Object:  Table [dbo].[UsuariosOriginal]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosOriginal](
	[IdUsuario] [int] NOT NULL,
	[iArea] [int] NOT NULL,
	[bActivo] [int] NULL,
	[szNombre] [nvarchar](255) NULL,
	[szApellido] [nvarchar](255) NULL,
	[szCedula] [nvarchar](255) NULL,
	[szCedulaExp] [nvarchar](255) NULL,
	[szClave] [nvarchar](255) NULL,
	[szClasificacion] [nvarchar](255) NULL,
	[szCargo] [nvarchar](255) NULL,
	[szExtension] [nvarchar](255) NULL,
	[dtFeInDay] [nvarchar](255) NULL,
	[dtFeInMonth] [nvarchar](255) NULL,
	[dtFeInYear] [nvarchar](255) NULL,
	[dtFeCumpleDay] [nvarchar](255) NULL,
	[dtFeCumpleMonth] [nvarchar](255) NULL,
	[szSexo] [nvarchar](255) NULL,
	[szDireccion] [nvarchar](255) NULL,
	[szTelefono] [nvarchar](255) NULL,
	[szEmail] [nvarchar](255) NULL,
	[szTelTrabajo] [nvarchar](255) NULL,
	[szTelMovil] [nvarchar](255) NULL,
	[szEmpresa] [nvarchar](255) NULL,
	[szSalario] [nvarchar](255) NULL,
	[szTipoContrato] [nvarchar](255) NULL,
	[szModalidadSalario] [nvarchar](255) NULL,
	[szCentroCostos] [nvarchar](255) NULL,
	[iPerfil] [int] NOT NULL,
	[idUsuarioJefe] [int] NULL
) ON [PRIMARY]

GO
