USE [master]
GO
/****** Object:  Database [BD_Restaurante_CI2]    Script Date: 12/03/2021 23:01:14 ******/
CREATE DATABASE [BD_Restaurante_CI2] ON  PRIMARY 
( NAME = N'BD_Restaurante_CI2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BD_Restaurante_CI2.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BD_Restaurante_CI2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BD_Restaurante_CI2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BD_Restaurante_CI2] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Restaurante_CI2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_Restaurante_CI2] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET ARITHABORT OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BD_Restaurante_CI2] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BD_Restaurante_CI2] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BD_Restaurante_CI2] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET  DISABLE_BROKER
GO
ALTER DATABASE [BD_Restaurante_CI2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BD_Restaurante_CI2] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BD_Restaurante_CI2] SET  READ_WRITE
GO
ALTER DATABASE [BD_Restaurante_CI2] SET RECOVERY FULL
GO
ALTER DATABASE [BD_Restaurante_CI2] SET  MULTI_USER
GO
ALTER DATABASE [BD_Restaurante_CI2] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BD_Restaurante_CI2] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_Restaurante_CI2', N'ON'
GO
USE [BD_Restaurante_CI2]
GO
/****** Object:  Table [dbo].[UbiDepartamento]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UbiDepartamento](
	[sIdDepartamento] [char](2) NOT NULL,
	[sDesDepartamento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UbiDepartamento] PRIMARY KEY CLUSTERED 
(
	[sIdDepartamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'01', N'AMAZONAS')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'02', N'ANCASH')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'03', N'APURIMAC')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'04', N'AREQUIPA')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'05', N'AYACUCHO')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'06', N'CAJAMARCA')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'07', N'CALLAO')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'08', N'CUSCO')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'09', N'HUANCAVELICA')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'10', N'HUANUCO')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'11', N'ICA')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'12', N'JUNIN')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'13', N'LA LIBERTAD')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'14', N'LAMBAYEQUE')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'15', N'LIMA')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'16', N'LORETO')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'17', N'MADRE DE DIOS')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'18', N'MOQUEGUA')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'19', N'PASCO')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'20', N'PIURA')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'21', N'PUNO')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'22', N'SAN MARTIN')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'23', N'TACNA')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'24', N'TUMBES')
INSERT [dbo].[UbiDepartamento] ([sIdDepartamento], [sDesDepartamento]) VALUES (N'25', N'UCAYALI')
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[sTipoUsuario] [char](1) NOT NULL,
	[sDescripcionTipoUsuario] [varchar](50) NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[sTipoUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoUsuario] ([sTipoUsuario], [sDescripcionTipoUsuario]) VALUES (N'1', N'Administrador')
INSERT [dbo].[TipoUsuario] ([sTipoUsuario], [sDescripcionTipoUsuario]) VALUES (N'2', N'Mozo|Azafata')
INSERT [dbo].[TipoUsuario] ([sTipoUsuario], [sDescripcionTipoUsuario]) VALUES (N'3', N'Cajero')
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[nTipoProducto] [int] NOT NULL,
	[sDescripcionTipoProducto] [varchar](50) NULL,
 CONSTRAINT [PK_TipoPlato] PRIMARY KEY CLUSTERED 
(
	[nTipoProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoProducto] ([nTipoProducto], [sDescripcionTipoProducto]) VALUES (1, N'ENTRADA')
INSERT [dbo].[TipoProducto] ([nTipoProducto], [sDescripcionTipoProducto]) VALUES (2, N'FONDO')
INSERT [dbo].[TipoProducto] ([nTipoProducto], [sDescripcionTipoProducto]) VALUES (3, N'POSTRE')
INSERT [dbo].[TipoProducto] ([nTipoProducto], [sDescripcionTipoProducto]) VALUES (4, N'BEBIDA')
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[sCodigoDocumento] [char](1) NOT NULL,
	[sDescripcionDocumento] [varchar](150) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[sCodigoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoDocumento] ([sCodigoDocumento], [sDescripcionDocumento]) VALUES (N'0', N'DOC.TRIB.NO.DOM.SIN.RUC')
INSERT [dbo].[TipoDocumento] ([sCodigoDocumento], [sDescripcionDocumento]) VALUES (N'1', N'DOC. NACIONAL DE IDENTIDAD')
INSERT [dbo].[TipoDocumento] ([sCodigoDocumento], [sDescripcionDocumento]) VALUES (N'4', N'CARNET DE EXTRANJERIA')
INSERT [dbo].[TipoDocumento] ([sCodigoDocumento], [sDescripcionDocumento]) VALUES (N'6', N'REG. UNICO DE CONTRIBUYENTES')
INSERT [dbo].[TipoDocumento] ([sCodigoDocumento], [sDescripcionDocumento]) VALUES (N'7', N'PASAPORTE')
/****** Object:  Table [dbo].[TipoComprobante]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoComprobante](
	[sCodigoComprobante] [char](2) NOT NULL,
	[sDescripcionComprobante] [varchar](100) NULL,
 CONSTRAINT [PK_TipoComprobante] PRIMARY KEY CLUSTERED 
(
	[sCodigoComprobante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoComprobante] ([sCodigoComprobante], [sDescripcionComprobante]) VALUES (N'01', N'FACTURA ELECTRONICA')
INSERT [dbo].[TipoComprobante] ([sCodigoComprobante], [sDescripcionComprobante]) VALUES (N'03', N'BOLETA DE VENTA ELECTRONICA')
INSERT [dbo].[TipoComprobante] ([sCodigoComprobante], [sDescripcionComprobante]) VALUES (N'07', N'NOTA DE CREDITO ELECTRONICA')
INSERT [dbo].[TipoComprobante] ([sCodigoComprobante], [sDescripcionComprobante]) VALUES (N'08', N'NOTA DE DEBITO ELECTRONICA')
/****** Object:  Table [dbo].[Mesas]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mesas](
	[nIdMesa] [int] NOT NULL,
	[sDescripcion] [varchar](50) NOT NULL,
	[bEstado] [bit] NULL,
	[nCapacidad] [int] NOT NULL,
 CONSTRAINT [PK_Mesas] PRIMARY KEY CLUSTERED 
(
	[nIdMesa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (1, N'Mesa 1', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (2, N'Mesa 2', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (3, N'Mesa 3', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (4, N'Mesa 4', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (5, N'Mesa 5', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (6, N'Mesa 6', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (7, N'Mesa 7', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (8, N'Mesa 8', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (9, N'Mesa 9', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (10, N'Mesa 10', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (11, N'Mesa 11', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (12, N'Mesa 12', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (13, N'Mesa 13', 1, 4)
INSERT [dbo].[Mesas] ([nIdMesa], [sDescripcion], [bEstado], [nCapacidad]) VALUES (14, N'Mesa 14', 1, 4)
/****** Object:  Table [dbo].[Locales]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Locales](
	[nIdLocal] [int] IDENTITY(1,1) NOT NULL,
	[nIdEmpresa] [int] NOT NULL,
	[sCodigoLocalSunat] [char](4) NULL,
	[sDescripcionLocal] [varchar](100) NULL,
	[sDireccionLocal] [varchar](250) NULL,
	[sIdDepartamento] [char](2) NULL,
	[sIdProvincia] [char](4) NULL,
	[sIdDistrito] [char](6) NULL,
	[sObservaciones] [varchar](250) NULL,
	[sEstado] [char](1) NULL,
	[dFechaCreacion] [datetime] NULL,
	[dFechaUltimaModifica] [datetime] NULL,
 CONSTRAINT [PK_Locales] PRIMARY KEY CLUSTERED 
(
	[nIdLocal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Locales] ON
INSERT [dbo].[Locales] ([nIdLocal], [nIdEmpresa], [sCodigoLocalSunat], [sDescripcionLocal], [sDireccionLocal], [sIdDepartamento], [sIdProvincia], [sIdDistrito], [sObservaciones], [sEstado], [dFechaCreacion], [dFechaUltimaModifica]) VALUES (1, 1, N'0000', N'LOCAL SANTA CLARA', N'AV. BOLIVAR N° 202 - SANTA CLARA', N'15', N'1501', N'150103', N'', N'1', CAST(0x0000ADE900BD2D13 AS DateTime), CAST(0x0000ADE900BD2D13 AS DateTime))
SET IDENTITY_INSERT [dbo].[Locales] OFF
/****** Object:  Table [dbo].[Estados]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[sEstado] [char](1) NOT NULL,
	[sDescripcionEstado] [varchar](50) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[sEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Estados] ([sEstado], [sDescripcionEstado]) VALUES (N'0', N'Inactivo')
INSERT [dbo].[Estados] ([sEstado], [sDescripcionEstado]) VALUES (N'1', N'Activo')
INSERT [dbo].[Estados] ([sEstado], [sDescripcionEstado]) VALUES (N'2', N'Generado')
INSERT [dbo].[Estados] ([sEstado], [sDescripcionEstado]) VALUES (N'3', N'Pendiente')
INSERT [dbo].[Estados] ([sEstado], [sDescripcionEstado]) VALUES (N'4', N'Atendido')
INSERT [dbo].[Estados] ([sEstado], [sDescripcionEstado]) VALUES (N'5', N'Facturado')
INSERT [dbo].[Estados] ([sEstado], [sDescripcionEstado]) VALUES (N'6', N'Anulado')
/****** Object:  Table [dbo].[Empresa]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[nIdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[sRazonSocial] [varchar](100) NOT NULL,
	[sRUC] [varchar](11) NOT NULL,
	[sNombreComercial] [varchar](100) NULL,
	[sDireccion] [varchar](200) NULL,
	[sIdDepartamento] [char](2) NULL,
	[sIdProvincia] [char](4) NULL,
	[sIdDistrito] [char](6) NULL,
	[sEmail] [varchar](200) NULL,
	[sDireccionWeb] [varchar](100) NULL,
	[sTelefono] [varchar](11) NULL,
	[bAgenteRetenedor] [bit] NULL,
	[sEstado] [char](1) NULL,
	[sObservaciones] [varchar](250) NULL,
	[dFechaCreacion] [datetime] NULL,
	[dUltimaFechaModifica] [datetime] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[nIdEmpresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empresa] ON
INSERT [dbo].[Empresa] ([nIdEmpresa], [sRazonSocial], [sRUC], [sNombreComercial], [sDireccion], [sIdDepartamento], [sIdProvincia], [sIdDistrito], [sEmail], [sDireccionWeb], [sTelefono], [bAgenteRetenedor], [sEstado], [sObservaciones], [dFechaCreacion], [dUltimaFechaModifica]) VALUES (1, N'EC Y W INVERSIONES S.A.C.', N'20543895581', N'QUE TAL LIMON', N'AV. BOLIVAR 202 - SANTA CLARA', N'15', N'1501', N'150103', N'ventas@quetallimon.com.pe', N'www.quetallimon.com.pe', N'0', 0, N'1', NULL, CAST(0x0000ADE900BC880D AS DateTime), CAST(0x0000ADE900BC880D AS DateTime))
SET IDENTITY_INSERT [dbo].[Empresa] OFF
/****** Object:  Table [dbo].[Productos]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[nIdProducto] [int] IDENTITY(1,1) NOT NULL,
	[sDescripcionProducto] [varchar](150) NOT NULL,
	[dFechaRegistro] [date] NOT NULL,
	[sEstado] [char](1) NOT NULL,
	[nTipoProducto] [int] NOT NULL,
	[sUnidadMedida] [char](3) NULL,
	[sCodigoProductoSunat] [char](8) NULL,
	[sObservaciones] [varchar](150) NULL,
	[nPrecioUnitario] [decimal](18, 4) NULL,
	[nPrecioUnitarioIGV] [decimal](18, 4) NULL,
	[dFechaUltimaActualiza] [datetime] NULL,
 CONSTRAINT [PK_Platos] PRIMARY KEY CLUSTERED 
(
	[nIdProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (140, N'Cebiche Clásico', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(25.4200 AS Decimal(18, 4)), CAST(30.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (141, N'Cebiche Mixto', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(27.9700 AS Decimal(18, 4)), CAST(33.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (142, N'Cebiche de Conchas Negras', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(29.6600 AS Decimal(18, 4)), CAST(35.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (143, N'Cebiche a lo Macho', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(27.9700 AS Decimal(18, 4)), CAST(33.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (144, N'Que Tal Cebiche', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(38.1400 AS Decimal(18, 4)), CAST(45.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (145, N'Leche de Tigre', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (146, N'Leche de Tigre Especial', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (147, N'Leche de Tigre a lo Macho', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (148, N'Leche de Tigre Especial Extrema', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(21.1900 AS Decimal(18, 4)), CAST(25.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (149, N'Leche de Pantera', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(16.9500 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (150, N'Que Tal Ronda', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(67.8000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (151, N'Entre Causas', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(20.3400 AS Decimal(18, 4)), CAST(24.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (152, N'Causa Limeña', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(16.9500 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (153, N'Causa Chalaca', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(23.7300 AS Decimal(18, 4)), CAST(28.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (154, N'Tiradito Tres al Hilo', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(27.1200 AS Decimal(18, 4)), CAST(32.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (155, N'Achorados', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(23.7300 AS Decimal(18, 4)), CAST(28.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (156, N'Cochitas Eróticas', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(29.6600 AS Decimal(18, 4)), CAST(35.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (157, N'Pulpo Al Olivar', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(25.4200 AS Decimal(18, 4)), CAST(30.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (158, N'Tequeños', CAST(0x22430B00 AS Date), N'1', 1, N'NIU', NULL, NULL, CAST(16.9500 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (159, N'Arroz con Mariscos', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(27.1200 AS Decimal(18, 4)), CAST(32.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (160, N'Arroz Chaufa Marino', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(24.5800 AS Decimal(18, 4)), CAST(29.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (161, N'Arroz Chaufa de Pescado', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(24.5800 AS Decimal(18, 4)), CAST(29.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (162, N'Arroz Norteño', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(27.1200 AS Decimal(18, 4)), CAST(32.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (163, N'Arroz con Pato', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(32.2000 AS Decimal(18, 4)), CAST(38.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (164, N'Rissoto Bucanero', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(32.2000 AS Decimal(18, 4)), CAST(38.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (165, N'Tacu Tacu Saltado', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(29.6600 AS Decimal(18, 4)), CAST(35.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (166, N'Tacu Tacu con Seco de Pato', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(33.9000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (167, N'Tacu Tacu en Salsa de Mariscos', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(28.8100 AS Decimal(18, 4)), CAST(34.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (168, N'Tandem Marino', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(32.2000 AS Decimal(18, 4)), CAST(38.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (169, N'Chupe de Pescado', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(27.9700 AS Decimal(18, 4)), CAST(33.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (170, N'Sudado de Filete de Pescado', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(25.4200 AS Decimal(18, 4)), CAST(30.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (171, N'Parihuela', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(32.2000 AS Decimal(18, 4)), CAST(38.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (172, N'Cazuela Marina', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(40.6800 AS Decimal(18, 4)), CAST(48.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (173, N'Chilcano Energy', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (174, N'Espaguetti Marino', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(27.1200 AS Decimal(18, 4)), CAST(32.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (175, N'Espaguetti Al Pesto Marino', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(32.2000 AS Decimal(18, 4)), CAST(38.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (176, N'Tagliatelle Huancalomo', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(27.9700 AS Decimal(18, 4)), CAST(33.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (177, N'Lomo Saltado', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(27.1200 AS Decimal(18, 4)), CAST(32.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (178, N'Chicharrón de Pescado', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(27.1200 AS Decimal(18, 4)), CAST(32.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (179, N'Chicharrón Mixto', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(29.6600 AS Decimal(18, 4)), CAST(35.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (180, N'Jalea Clásica', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(38.1400 AS Decimal(18, 4)), CAST(45.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (181, N'Jalea Norteña', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(46.6100 AS Decimal(18, 4)), CAST(55.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (182, N'Champiñones a la Parrilla', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (183, N'Brochetas de Pollo', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(20.3400 AS Decimal(18, 4)), CAST(24.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (184, N'Filete de Pierna de Pollo', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(18.6400 AS Decimal(18, 4)), CAST(22.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (185, N'Filete de Pechuga de Pollo', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(18.6400 AS Decimal(18, 4)), CAST(22.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (186, N'Chuletón de Cerdo', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(18.6400 AS Decimal(18, 4)), CAST(22.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (187, N'Churrasco de Res', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(20.3400 AS Decimal(18, 4)), CAST(24.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (188, N'Costillas de Cerdo', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(22.0300 AS Decimal(18, 4)), CAST(26.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (189, N'Duo 1', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(29.6600 AS Decimal(18, 4)), CAST(35.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (190, N'Duo 2', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(29.6600 AS Decimal(18, 4)), CAST(35.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (191, N'Duo 3', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(29.6600 AS Decimal(18, 4)), CAST(35.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (192, N'Trio 1', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(33.9000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (193, N'Trio 2', CAST(0x22430B00 AS Date), N'1', 2, N'NIU', NULL, NULL, CAST(33.9000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (194, N'Jarra de Chicha Morada 1.1Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (195, N'Jarra de Limonada 1.1Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (196, N'Jarra de Maracuya 1.1Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (197, N'Gaseosa Inca Cola 1Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(5.9300 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (198, N'Gaseosa Coca Cola 1Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(5.9300 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (199, N'Gaseosa Inca Cola 1.5Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(8.4700 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (200, N'Gaseosa Inca Cola Zero 1.5Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(8.4700 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (201, N'Gaseosa Coca Cola 1.5Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(8.4700 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (202, N'Gaseosa Coca Cola Zero1.5Lt.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(8.4700 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (203, N'Gaseosa Coca Cola Personal', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(3.3900 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (204, N'Gaseosa Inca Cola Personal', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(3.3900 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (205, N'Gaseosa Fanta Personal', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(3.3900 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (206, N'Gaseosa Sprite Personal', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(3.3900 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (207, N'Gaseosa Coca Cola Zero Personal', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(4.2400 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (208, N'Gaseosa Inca Cola Zero Personal', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(4.2400 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (209, N'Agua San Mateo c/gas 500ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(3.3900 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (210, N'Agua San Luis c/gas 500ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(3.3900 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (211, N'Agua San Mateo s/gas 500ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(3.3900 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (212, N'Agua San Luis s/gas 500ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(3.3900 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (213, N'Cerveza Pilsen 330ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(5.0800 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (214, N'Cerveza Cusqueña Dorada 330ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(5.9300 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (215, N'Cerveza Cusqueña Trigo 330ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(5.9300 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (216, N'Cerveza Cusqueña Malta 330ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(5.9300 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (217, N'Cerveza Cusqueña Red Lager 330ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(5.9300 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (218, N'Cerveza Corona 355ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(8.4700 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (219, N'Cerveza Cristal 620ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(7.6300 AS Decimal(18, 4)), CAST(9.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (220, N'Cerveza Pilsen 620ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(7.6300 AS Decimal(18, 4)), CAST(9.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (221, N'Cerveza Cusqueña Dorada 620ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(8.4700 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (222, N'Cerveza Cusqueña Trigo 620ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(8.4700 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (223, N'Cerveza Cusqueña Malta 620ml.', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(8.4700 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (224, N'Cuba libre', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (225, N'Mojito', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (226, N'Vodka Tonic', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (227, N'Gin con Gin', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (228, N'Screwdriver', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (229, N'Tequila Sunrise', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (230, N'Long Island Ice Tea', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (231, N'Pantera Rosa', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (232, N'Caiphiriña', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (233, N'Red Hot', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (234, N'Chilcano Exótico', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (235, N'Cosmopolitan', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (236, N'Amor en llamas', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (237, N'Piscina', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (238, N'Laguna Azul', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (239, N'Orgasmo Multiple', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (240, N'Sex on the Beach', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (241, N'Piña Colada', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (242, N'Daiquiri de Durazno', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (243, N'Hawaii and blue', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (244, N'Primavera', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (245, N'Grass Hoper', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (246, N'Ruso Blanco', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (247, N'Ruso Negro', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (248, N'Algarrobina', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (249, N'Macchu Picchu', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (250, N'Pisco Sour', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (251, N'Chilcano Clasico', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(11.8600 AS Decimal(18, 4)), CAST(14.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (252, N'Maracuyá Sour', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (253, N'Aguaymanto Sour', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (254, N'Macerado de Fresa', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (255, N'Macerado de Eucalipto', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (256, N'Macerado de Hojas de Coca', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (257, N'Macerado de Aguaymanto', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (258, N'Macerado de Maracuya', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (259, N'Macerado de Pasas y Guindones', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (260, N'Macerado de Hierba Luisa', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (261, N'Macerado de Canela', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (262, N'Apple Martini', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (263, N'Capitan', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (264, N'Manhattan', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (265, N'Bayles Martini', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(14.4100 AS Decimal(18, 4)), CAST(17.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (266, N'Dry Martini', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (267, N'Whisky Johnnie Walker Etiqueta Roja', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (268, N'Whisky Johnnie Walker Etiqueta Negra', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(16.9500 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (269, N'Whisky Johnnie Walker Etiqueta Dorada', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(32.2000 AS Decimal(18, 4)), CAST(38.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (270, N'Whisky Chivas Regal 12 años', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (271, N'Whisky Swing 12 Años', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(20.3400 AS Decimal(18, 4)), CAST(24.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (272, N'Whisky Old Parr', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(15.2500 AS Decimal(18, 4)), CAST(18.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (273, N'Fernet Branca', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (274, N'Shot Tequila Jose Cuervo', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(10.1700 AS Decimal(18, 4)), CAST(12.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (275, N'Shot Amaretto Disapono', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (276, N'Shot Sambuca Molinario', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (277, N'Shot Jägermeister', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(12.7100 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
INSERT [dbo].[Productos] ([nIdProducto], [sDescripcionProducto], [dFechaRegistro], [sEstado], [nTipoProducto], [sUnidadMedida], [sCodigoProductoSunat], [sObservaciones], [nPrecioUnitario], [nPrecioUnitarioIGV], [dFechaUltimaActualiza]) VALUES (278, N'Shot Ron Cacique', CAST(0x22430B00 AS Date), N'1', 4, N'NIU', NULL, NULL, CAST(13.5600 AS Decimal(18, 4)), CAST(16.0000 AS Decimal(18, 4)), CAST(0x0000ADC7014149BE AS DateTime))
SET IDENTITY_INSERT [dbo].[Productos] OFF
/****** Object:  Table [dbo].[PedidoCabecera]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidoCabecera](
	[nIdPedidoCabecera] [int] IDENTITY(1,1) NOT NULL,
	[nIdUsuario] [int] NULL,
	[dFechaPedido] [datetime] NULL,
	[nIdMesa] [int] NULL,
	[sEstado] [char](1) NULL,
	[nNumeroPersonas] [int] NULL,
	[sObservaciones] [varchar](250) NULL,
	[nSubTotal] [decimal](18, 2) NULL,
	[nIgv] [decimal](18, 2) NULL,
	[nTotal] [decimal](18, 2) NULL,
	[dUltimaFechaModifica] [datetime] NULL,
 CONSTRAINT [PK_PedidoCabecera] PRIMARY KEY CLUSTERED 
(
	[nIdPedidoCabecera] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PedidoCabecera] ON
INSERT [dbo].[PedidoCabecera] ([nIdPedidoCabecera], [nIdUsuario], [dFechaPedido], [nIdMesa], [sEstado], [nNumeroPersonas], [sObservaciones], [nSubTotal], [nIgv], [nTotal], [dUltimaFechaModifica]) VALUES (9, 2, CAST(0x0000ADE100AE87E5 AS DateTime), 1, N'6', 4, N'PRIMERA VENTA', CAST(100.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(118.00 AS Decimal(18, 2)), CAST(0x0000ADE100AE87E6 AS DateTime))
INSERT [dbo].[PedidoCabecera] ([nIdPedidoCabecera], [nIdUsuario], [dFechaPedido], [nIdMesa], [sEstado], [nNumeroPersonas], [sObservaciones], [nSubTotal], [nIgv], [nTotal], [dUltimaFechaModifica]) VALUES (10, 2, CAST(0x0000ADE100B216D9 AS DateTime), 1, N'2', 4, N'SEGUNDA VENTA', CAST(100.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(118.00 AS Decimal(18, 2)), CAST(0x0000ADE100B216DB AS DateTime))
INSERT [dbo].[PedidoCabecera] ([nIdPedidoCabecera], [nIdUsuario], [dFechaPedido], [nIdMesa], [sEstado], [nNumeroPersonas], [sObservaciones], [nSubTotal], [nIgv], [nTotal], [dUltimaFechaModifica]) VALUES (11, 2, CAST(0x0000ADE100B2F524 AS DateTime), 2, N'2', 3, N'TERCERA VENTA', CAST(140.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0x0000ADE100B2F524 AS DateTime))
INSERT [dbo].[PedidoCabecera] ([nIdPedidoCabecera], [nIdUsuario], [dFechaPedido], [nIdMesa], [sEstado], [nNumeroPersonas], [sObservaciones], [nSubTotal], [nIgv], [nTotal], [dUltimaFechaModifica]) VALUES (12, 2, CAST(0x0000ADE500A2DAE9 AS DateTime), 5, N'2', 4, N'CUARTA VENTA', CAST(140.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0x0000ADE500A2DAEC AS DateTime))
INSERT [dbo].[PedidoCabecera] ([nIdPedidoCabecera], [nIdUsuario], [dFechaPedido], [nIdMesa], [sEstado], [nNumeroPersonas], [sObservaciones], [nSubTotal], [nIgv], [nTotal], [dUltimaFechaModifica]) VALUES (13, 2, CAST(0x0000ADF000F28928 AS DateTime), 5, N'2', 4, N'CUARTA VENTA', CAST(140.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0x0000ADF000F2892C AS DateTime))
SET IDENTITY_INSERT [dbo].[PedidoCabecera] OFF
/****** Object:  Table [dbo].[Usuarios]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[nIdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[sNombre] [varchar](250) NULL,
	[sLogin] [varchar](50) NULL,
	[sPassword] [varchar](max) NULL,
	[sTipo] [char](1) NULL,
	[sEstado] [char](1) NULL,
	[sEmail] [varchar](250) NULL,
	[dFechaCreacion] [datetime] NULL,
	[dFechaUltimaActualiza] [datetime] NULL,
	[sPassword_hash] [varbinary](max) NULL,
	[sPassword_salt] [varbinary](max) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[nIdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON
INSERT [dbo].[Usuarios] ([nIdUsuario], [sNombre], [sLogin], [sPassword], [sTipo], [sEstado], [sEmail], [dFechaCreacion], [dFechaUltimaActualiza], [sPassword_hash], [sPassword_salt]) VALUES (2, N'Juan Carlos Figueroa Aguilar', N'JCFIGUEROA', N'123456', N'1', N'1', N'juancarlos_fig@hotmail.com', CAST(0x0000ADCC00000000 AS DateTime), CAST(0x0000ADCC00000000 AS DateTime), 0x79F0ACC2D9B00E5ECDE30643597CF835171260C4778D4E36EB916C90C71EF3D4EA7FEEB86DF54CE0502D61C1AA4B5CFF1B6643C295197C12C5676D2D70A1F3FA, 0xF9B7EF90CB4EBCD9E816BD896F7D02A22CED96C8B6852C0D4CB51ADAE4546AD8EA21FF4B6F76F644C90ED8E3B05EDCB9D43845B6095B3CA0A656E5BEB66E0045AF40101E1601711DA7999F743EBD4A78D63743C0AD2D34184FE000057684008780E1EFA4BFA82D00895F289C0E1AF3370F7AE10E3A35B61CB1161233549EA0BC)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
/****** Object:  Table [dbo].[UbiProvincia]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UbiProvincia](
	[sIdProvincia] [char](4) NOT NULL,
	[sDesProvincia] [varchar](100) NOT NULL,
	[sIdDepartamento] [char](2) NOT NULL,
 CONSTRAINT [PK_UbiProvincia] PRIMARY KEY CLUSTERED 
(
	[sIdProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0101', N'CHACHAPOYAS ', N'01')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0102', N'BAGUA', N'01')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0103', N'BONGARA', N'01')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0104', N'CONDORCANQUI', N'01')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0105', N'LUYA', N'01')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0106', N'RODRIGUEZ DE MENDOZA', N'01')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0107', N'UTCUBAMBA', N'01')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0201', N'HUARAZ', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0202', N'AIJA', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0203', N'ANTONIO RAYMONDI', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0204', N'ASUNCION', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0205', N'BOLOGNESI', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0206', N'CARHUAZ', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0207', N'CARLOS FERMIN FITZCARRALD', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0208', N'CASMA', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0209', N'CORONGO', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0210', N'HUARI', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0211', N'HUARMEY', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0212', N'HUAYLAS', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0213', N'MARISCAL LUZURIAGA', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0214', N'OCROS', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0215', N'PALLASCA', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0216', N'POMABAMBA', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0217', N'RECUAY', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0218', N'SANTA', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0219', N'SIHUAS', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0220', N'YUNGAY', N'02')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0301', N'ABANCAY', N'03')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0302', N'ANDAHUAYLAS', N'03')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0303', N'ANTABAMBA', N'03')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0304', N'AYMARAES', N'03')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0305', N'COTABAMBAS', N'03')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0306', N'CHINCHEROS', N'03')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0307', N'GRAU', N'03')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0401', N'AREQUIPA', N'04')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0402', N'CAMANA', N'04')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0403', N'CARAVELI', N'04')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0404', N'CASTILLA', N'04')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0405', N'CAYLLOMA', N'04')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0406', N'CONDESUYOS', N'04')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0407', N'ISLAY', N'04')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0408', N'LA UNION', N'04')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0501', N'HUAMANGA', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0502', N'CANGALLO', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0503', N'HUANCA SANCOS', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0504', N'HUANTA', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0505', N'LA MAR', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0506', N'LUCANAS', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0507', N'PARINACOCHAS', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0508', N'PAUCAR DEL SARA SARA', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0509', N'SUCRE', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0510', N'VICTOR FAJARDO', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0511', N'VILCAS HUAMAN', N'05')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0601', N'CAJAMARCA', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0602', N'CAJABAMBA', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0603', N'CELENDIN', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0604', N'CHOTA ', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0605', N'CONTUMAZA', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0606', N'CUTERVO', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0607', N'HUALGAYOC', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0608', N'JAEN', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0609', N'SAN IGNACIO', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0610', N'SAN MARCOS', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0611', N'SAN PABLO', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0612', N'SANTA CRUZ', N'06')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0701', N'CALLAO', N'07')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0801', N'CUSCO', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0802', N'ACOMAYO', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0803', N'ANTA', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0804', N'CALCA', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0805', N'CANAS', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0806', N'CANCHIS', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0807', N'CHUMBIVILCAS', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0808', N'ESPINAR', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0809', N'LA CONVENCION', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0810', N'PARURO', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0811', N'PAUCARTAMBO', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0812', N'QUISPICANCHI', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0813', N'URUBAMBA', N'08')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0901', N'HUANCAVELICA', N'09')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0902', N'ACOBAMBA', N'09')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0903', N'ANGARAES', N'09')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0904', N'CASTROVIRREYNA', N'09')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0905', N'CHURCAMPA', N'09')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0906', N'HUAYTARA', N'09')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'0907', N'TAYACAJA', N'09')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1001', N'HUANUCO', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1002', N'AMBO', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1003', N'DOS DE MAYO', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1004', N'HUACAYBAMBA', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1005', N'HUAMALIES', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1006', N'LEONCIO PRADO', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1007', N'MARAÑON', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1008', N'PACHITEA', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1009', N'PUERTO INCA', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1010', N'LAURICOCHA', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1011', N'YAROWILCA', N'10')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1101', N'ICA', N'11')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1102', N'CHINCHA', N'11')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1103', N'NAZCA', N'11')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1104', N'PALPA', N'11')
GO
print 'Processed 100 total records'
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1105', N'PISCO', N'11')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1201', N'HUANCAYO', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1202', N'CONCEPCION', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1203', N'CHANCHAMAYO', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1204', N'JAUJA', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1205', N'JUNIN', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1206', N'SATIPO', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1207', N'TARMA', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1208', N'YAULI', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1209', N'CHUPACA', N'12')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1301', N'TRUJILLO', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1302', N'ASCOPE', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1303', N'BOLIVAR', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1304', N'CHEPEN', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1305', N'JULCAN', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1306', N'OTUZCO', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1307', N'PACASMAYO', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1308', N'PATAZ', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1309', N'SANCHEZ CARRION', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1310', N'SANTIAGO DE CHUCO', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1311', N'GRAN CHIMU', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1312', N'VIRU', N'13')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1401', N'CHICLAYO', N'14')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1402', N'FERREÑAFE', N'14')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1403', N'LAMBAYEQUE', N'14')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1501', N'LIMA', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1502', N'BARRANCA', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1503', N'CAJATAMBO', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1504', N'CANTA', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1505', N'CAÑETE', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1506', N'HUARAL', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1507', N'HUAROCHIRI', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1508', N'HUAURA', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1509', N'OYON', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1510', N'YAUYOS', N'15')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1601', N'MAYNAS', N'16')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1602', N'ALTO AMAZONAS', N'16')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1603', N'LORETO', N'16')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1604', N'MARISCAL RAMON CASTILLA', N'16')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1605', N'REQUENA', N'16')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1606', N'UCAYALI', N'16')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1701', N'TAMBOPATA', N'17')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1702', N'MANU', N'17')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1703', N'TAHUAMANU', N'17')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1801', N'MARISCAL NIETO', N'18')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1802', N'GENERAL SANCHEZ CERRO', N'18')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1803', N'ILO', N'18')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1901', N'PASCO', N'19')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1902', N'DANIEL ALCIDES CARRION', N'19')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'1903', N'OXAPAMPA', N'19')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2001', N'PIURA', N'20')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2002', N'AYABACA', N'20')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2003', N'HUANCABAMBA', N'20')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2004', N'MORROPON', N'20')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2005', N'PAITA', N'20')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2006', N'SULLANA', N'20')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2007', N'TALARA', N'20')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2008', N'SECHURA', N'20')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2101', N'PUNO', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2102', N'AZANGARO', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2103', N'CARABAYA', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2104', N'CHUCUITO', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2105', N'EL COLLAO', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2106', N'HUANCANE', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2107', N'LAMPA', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2108', N'MELGAR', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2109', N'MOHO', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2110', N'SAN ANTONIO DE PUTINA', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2111', N'SAN ROMAN', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2112', N'SANDIA', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2113', N'YUNGUYO', N'21')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2201', N'MOYOBAMBA', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2202', N'BELLAVISTA', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2203', N'EL DORADO', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2204', N'HUALLAGA', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2205', N'LAMAS', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2206', N'MARISCAL CACERES', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2207', N'PICOTA', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2208', N'RIOJA', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2209', N'SAN MARTIN', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2210', N'TOCACHE', N'22')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2301', N'TACNA', N'23')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2302', N'CANDARAVE', N'23')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2303', N'JORGE BASADRE', N'23')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2304', N'TARATA', N'23')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2401', N'TUMBES', N'24')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2402', N'CONTRALMIRANTE VILLAR', N'24')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2403', N'ZARUMILLA', N'24')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2501', N'CORONEL PORTILLO', N'25')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2502', N'ATALAYA', N'25')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2503', N'PADRE ABAD', N'25')
INSERT [dbo].[UbiProvincia] ([sIdProvincia], [sDesProvincia], [sIdDepartamento]) VALUES (N'2504', N'PURUS', N'25')
/****** Object:  Table [dbo].[UbiDistrito]    Script Date: 12/03/2021 23:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UbiDistrito](
	[sIdDistrito] [char](6) NOT NULL,
	[sDesDistrito] [varchar](100) NOT NULL,
	[sIdProvincia] [char](4) NOT NULL,
 CONSTRAINT [PK_UbiDistrito] PRIMARY KEY CLUSTERED 
(
	[sIdDistrito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010101', N'CHACHAPOYAS', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010102', N'ASUNCION', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010103', N'BALSAS', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010104', N'CHETO', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010105', N'CHILIQUIN', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010106', N'CHUQUIBAMBA', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010107', N'GRANADA', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010108', N'HUANCAS', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010109', N'LA JALCA', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010110', N'LEIMEBAMBA', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010111', N'LEVANTO', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010112', N'MAGDALENA', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010113', N'MARISCAL CASTILLA', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010114', N'MOLINOPAMPA', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010115', N'MONTEVIDEO', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010116', N'OLLEROS', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010117', N'QUINJALCA', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010118', N'SAN FRANCISCO DE DAGUAS', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010119', N'SAN ISIDRO DE MAINO', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010120', N'SOLOCO', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010121', N'SONCHE', N'0101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010201', N'LA PECA', N'0102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010202', N'ARAMANGO', N'0102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010203', N'COPALLIN', N'0102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010204', N'EL PARCO', N'0102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010205', N'IMAZA', N'0102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010301', N'JUMBILLA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010302', N'CHISQUILLA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010303', N'CHURUJA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010304', N'COROSHA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010305', N'CUISPES', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010306', N'FLORIDA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010307', N'JAZAN', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010308', N'RECTA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010309', N'SAN CARLOS', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010310', N'SHIPASBAMBA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010311', N'VALERA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010312', N'YAMBRASBAMBA', N'0103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010401', N'NIEVA', N'0104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010402', N'EL CENEPA', N'0104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010403', N'RIO SANTIAGO', N'0104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010501', N'LAMUD', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010502', N'CAMPORREDONDO', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010503', N'COCABAMBA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010504', N'COLCAMAR', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010505', N'CONILA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010506', N'INGUILPATA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010507', N'LONGUITA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010508', N'LONYA CHICO', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010509', N'LUYA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010510', N'LUYA VIEJO', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010511', N'MARIA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010512', N'OCALLI', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010513', N'OCUMAL', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010514', N'PISUQUIA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010515', N'PROVIDENCIA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010516', N'SAN CRISTOBAL', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010517', N'SAN FRANCISCO DEL YESO', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010518', N'SAN JERONIMO', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010519', N'SAN JUAN DE LOPECANCHA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010520', N'SANTA CATALINA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010521', N'SANTO TOMAS', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010522', N'TINGO', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010523', N'TRITA', N'0105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010601', N'SAN NICOLAS', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010602', N'CHIRIMOTO', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010603', N'COCHAMAL', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010604', N'HUAMBO', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010605', N'LIMABAMBA', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010606', N'LONGAR', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010607', N'MARISCAL BENAVIDES', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010608', N'MILPUC', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010609', N'OMIA', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010610', N'SANTA ROSA', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010611', N'TOTORA', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010612', N'VISTA ALEGRE', N'0106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010701', N'BAGUA GRANDE', N'0107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010702', N'CAJARURO', N'0107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010703', N'CUMBA', N'0107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010704', N'EL MILAGRO', N'0107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010705', N'JAMALCA', N'0107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010706', N'LONYA GRANDE', N'0107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'010707', N'YAMON', N'0107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020101', N'HUARAZ', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020102', N'COCHABAMBA', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020103', N'COLCABAMBA', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020104', N'HUANCHAY', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020105', N'INDEPENDENCIA', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020106', N'JANGAS', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020107', N'LA LIBERTAD', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020108', N'OLLEROS', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020109', N'PAMPAS', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020110', N'PARIACOTO', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020111', N'PIRA', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020112', N'TARICA', N'0201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020201', N'AIJA', N'0202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020202', N'CORIS', N'0202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020203', N'HUACLLAN', N'0202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020204', N'LA MERCED', N'0202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020205', N'SUCCHA', N'0202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020301', N'LLAMELLIN', N'0203')
GO
print 'Processed 100 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020302', N'ACZO', N'0203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020303', N'CHACCHO', N'0203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020304', N'CHINGAS', N'0203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020305', N'MIRGAS', N'0203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020306', N'SAN JUAN DE RONTOY', N'0203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020401', N'CHACAS', N'0204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020402', N'ACOCHACA', N'0204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020501', N'CHIQUIAN', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020502', N'ABELARDO PARDO LEZAMETA', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020503', N'ANTONIO RAYMONDI', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020504', N'AQUIA', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020505', N'CAJACAY', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020506', N'CANIS', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020507', N'COLQUIOC', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020508', N'HUALLANCA', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020509', N'HUASTA', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020510', N'HUAYLLACAYAN', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020511', N'LA PRIMAVERA', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020512', N'MANGAS', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020513', N'PACLLON', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020514', N'SAN MIGUEL DE CORPANQUI', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020515', N'TICLLOS', N'0205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020601', N'CARHUAZ', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020602', N'ACOPAMPA', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020603', N'AMASHCA', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020604', N'ANTA', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020605', N'ATAQUERO', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020606', N'MARCARA', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020607', N'PARIAHUANCA', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020608', N'SAN MIGUEL DE ACO', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020609', N'SHILLA', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020610', N'TINCO', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020611', N'YUNGAR', N'0206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020701', N'SAN LUIS', N'0207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020702', N'SAN NICOLAS', N'0207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020703', N'YAUYA', N'0207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020801', N'CASMA', N'0208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020802', N'BUENA VISTA ALTA', N'0208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020803', N'COMANDANTE NOEL', N'0208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020804', N'YAUTAN', N'0208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020901', N'CORONGO', N'0209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020902', N'ACO', N'0209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020903', N'BAMBAS', N'0209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020904', N'CUSCA', N'0209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020905', N'LA PAMPA', N'0209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020906', N'YANAC', N'0209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'020907', N'YUPAN', N'0209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021001', N'HUARI', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021002', N'ANRA', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021003', N'CAJAY', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021004', N'CHAVIN DE HUANTAR', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021005', N'HUACACHI', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021006', N'HUACCHIS', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021007', N'HUACHIS', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021008', N'HUANTAR', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021009', N'MASIN', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021010', N'PAUCAS', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021011', N'PONTO', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021012', N'RAHUAPAMPA', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021013', N'RAPAYAN', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021014', N'SAN MARCOS', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021015', N'SAN PEDRO DE CHANA', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021016', N'UCO', N'0210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021101', N'HUARMEY', N'0211')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021102', N'COCHAPETI', N'0211')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021103', N'CULEBRAS', N'0211')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021104', N'HUAYAN', N'0211')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021105', N'MALVAS', N'0211')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021201', N'CARAZ', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021202', N'HUALLANCA', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021203', N'HUATA', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021204', N'HUAYLAS', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021205', N'MATO', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021206', N'PAMPAROMAS', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021207', N'PUEBLO LIBRE', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021208', N'SANTA CRUZ', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021209', N'SANTO TORIBIO', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021210', N'YURACMARCA', N'0212')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021301', N'PISCOBAMBA', N'0213')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021302', N'CASCA', N'0213')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021303', N'ELEAZAR GUZMAN BARRON', N'0213')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021304', N'FIDEL OLIVAS ESCUDERO', N'0213')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021305', N'LLAMA', N'0213')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021306', N'LLUMPA', N'0213')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021307', N'LUCMA', N'0213')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021308', N'MUSGA', N'0213')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021401', N'OCROS', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021402', N'ACAS', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021403', N'CAJAMARQUILLA', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021404', N'CARHUAPAMPA', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021405', N'COCHAS', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021406', N'CONGAS', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021407', N'LLIPA', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021408', N'SAN CRISTOBAL DE RAJAN', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021409', N'SAN PEDRO', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021410', N'SANTIAGO DE CHILCAS', N'0214')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021501', N'CABANA', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021502', N'BOLOGNESI', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021503', N'CONCHUCOS', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021504', N'HUACASCHUQUE', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021505', N'HUANDOVAL', N'0215')
GO
print 'Processed 200 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021506', N'LACABAMBA', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021507', N'LLAPO', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021508', N'PALLASCA', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021509', N'PAMPAS', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021510', N'SANTA ROSA', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021511', N'TAUCA', N'0215')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021601', N'POMABAMBA', N'0216')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021602', N'HUAYLLAN', N'0216')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021603', N'PAROBAMBA', N'0216')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021604', N'QUINUABAMBA', N'0216')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021701', N'RECUAY', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021702', N'CATAC', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021703', N'COTAPARACO', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021704', N'HUAYLLAPAMPA', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021705', N'LLACLLIN', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021706', N'MARCA', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021707', N'PAMPAS CHICO', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021708', N'PARARIN', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021709', N'TAPACOCHA', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021710', N'TICAPAMPA', N'0217')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021801', N'CHIMBOTE', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021802', N'CACERES DEL PERU', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021803', N'COISHCO', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021804', N'MACATE', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021805', N'MORO', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021806', N'NEPE&Ntilde;A', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021807', N'SAMANCO', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021808', N'SANTA', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021809', N'NUEVO CHIMBOTE', N'0218')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021901', N'SIHUAS', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021902', N'ACOBAMBA', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021903', N'ALFONSO UGARTE', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021904', N'CASHAPAMPA', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021905', N'CHINGALPO', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021906', N'HUAYLLABAMBA', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021907', N'QUICHES', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021908', N'RAGASH', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021909', N'SAN JUAN', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'021910', N'SICSIBAMBA', N'0219')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'022001', N'YUNGAY', N'0220')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'022002', N'CASCAPARA', N'0220')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'022003', N'MANCOS', N'0220')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'022004', N'MATACOTO', N'0220')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'022005', N'QUILLO', N'0220')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'022006', N'RANRAHIRCA', N'0220')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'022007', N'SHUPLUY', N'0220')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'022008', N'YANAMA', N'0220')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030101', N'ABANCAY', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030102', N'CHACOCHE', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030103', N'CIRCA', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030104', N'CURAHUASI', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030105', N'HUANIPACA', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030106', N'LAMBRAMA', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030107', N'PICHIRHUA', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030108', N'SAN PEDRO DE CACHORA', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030109', N'TAMBURCO', N'0301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030201', N'ANDAHUAYLAS', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030202', N'ANDARAPA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030203', N'CHIARA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030204', N'HUANCARAMA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030205', N'HUANCARAY', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030206', N'HUAYANA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030207', N'KISHUARA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030208', N'PACOBAMBA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030209', N'PACUCHA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030210', N'PAMPACHIRI', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030211', N'POMACOCHA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030212', N'SAN ANTONIO DE CACHI', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030213', N'SAN JERONIMO', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030214', N'SAN MIGUEL DE CHACCRAMPA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030215', N'SANTA MARIA DE CHICMO', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030216', N'TALAVERA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030217', N'TUMAY HUARACA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030218', N'TURPO', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030219', N'KAQUIABAMBA', N'0302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030301', N'ANTABAMBA', N'0303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030302', N'EL ORO', N'0303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030303', N'HUAQUIRCA', N'0303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030304', N'JUAN ESPINOZA MEDRANO', N'0303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030305', N'OROPESA', N'0303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030306', N'PACHACONAS', N'0303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030307', N'SABAINO', N'0303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030401', N'CHALHUANCA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030402', N'CAPAYA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030403', N'CARAYBAMBA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030404', N'CHAPIMARCA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030405', N'COLCABAMBA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030406', N'COTARUSE', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030407', N'HUAYLLO', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030408', N'JUSTO APU SAHUARAURA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030409', N'LUCRE', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030410', N'POCOHUANCA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030411', N'SAN JUAN DE CHACÑA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030412', N'SAÑAYCA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030413', N'SORAYA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030414', N'TAPAIRIHUA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030415', N'TINTAY', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030416', N'TORAYA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030417', N'YANACA', N'0304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030501', N'TAMBOBAMBA', N'0305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030502', N'COTABAMBAS', N'0305')
GO
print 'Processed 300 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030503', N'COYLLURQUI', N'0305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030504', N'HAQUIRA', N'0305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030505', N'MARA', N'0305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030506', N'CHALLHUAHUACHO', N'0305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030601', N'CHINCHEROS', N'0306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030602', N'ANCO-HUALLO', N'0306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030603', N'COCHARCAS', N'0306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030604', N'HUACCANA', N'0306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030605', N'OCOBAMBA', N'0306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030606', N'ONGOY', N'0306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030607', N'URANMARCA', N'0306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030608', N'RANRACANCHA', N'0306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030701', N'CHUQUIBAMBILLA', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030702', N'CURPAHUASI', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030703', N'GAMARRA', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030704', N'HUAYLLATI', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030705', N'MAMARA', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030706', N'MICAELA BASTIDAS', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030707', N'PATAYPAMPA', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030708', N'PROGRESO', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030709', N'SAN ANTONIO', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030710', N'SANTA ROSA', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030711', N'TURPAY', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030712', N'VILCABAMBA', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030713', N'VIRUNDO', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'030714', N'CURASCO', N'0307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040101', N'AREQUIPA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040102', N'ALTO SELVA ALEGRE', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040103', N'CAYMA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040104', N'CERRO COLORADO', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040105', N'CHARACATO', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040106', N'CHIGUATA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040107', N'JACOBO HUNTER', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040108', N'LA JOYA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040109', N'MARIANO MELGAR', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040110', N'MIRAFLORES', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040111', N'MOLLEBAYA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040112', N'PAUCARPATA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040113', N'POCSI', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040114', N'POLOBAYA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040115', N'QUEQUEÑA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040116', N'SABANDIA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040117', N'SACHACA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040118', N'SAN JUAN DE SIGUAS', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040119', N'SAN JUAN DE TARUCANI', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040120', N'SANTA ISABEL DE SIGUAS', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040121', N'SANTA RITA DE SIGUAS', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040122', N'SOCABAYA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040123', N'TIABAYA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040124', N'UCHUMAYO', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040125', N'VITOR', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040126', N'YANAHUARA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040127', N'YARABAMBA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040128', N'YURA', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040129', N'JOSE LUIS BUSTAMANTE Y RIVERO', N'0401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040201', N'CAMANA', N'0402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040202', N'JOSE MARIA QUIMPER', N'0402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040203', N'MARIANO NICOLAS VALCARCEL', N'0402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040204', N'MARISCAL CACERES', N'0402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040205', N'NICOLAS DE PIEROLA', N'0402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040206', N'OCOÑA', N'0402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040207', N'QUILCA', N'0402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040208', N'SAMUEL PASTOR', N'0402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040301', N'CARAVELI', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040302', N'ACARI', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040303', N'ATICO', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040304', N'ATIQUIPA', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040305', N'BELLA UNION', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040306', N'CAHUACHO', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040307', N'CHALA', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040308', N'CHAPARRA', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040309', N'HUANUHUANU', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040310', N'JAQUI', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040311', N'LOMAS', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040312', N'QUICACHA', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040313', N'YAUCA', N'0403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040401', N'APLAO', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040402', N'ANDAGUA', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040403', N'AYO', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040404', N'CHACHAS', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040405', N'CHILCAYMARCA', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040406', N'CHOCO', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040407', N'HUANCARQUI', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040408', N'MACHAGUAY', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040409', N'ORCOPAMPA', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040410', N'PAMPACOLCA', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040411', N'TIPAN', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040412', N'UÑON', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040413', N'URACA', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040414', N'VIRACO', N'0404')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040501', N'CHIVAY', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040502', N'ACHOMA', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040503', N'CABANACONDE', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040504', N'CALLALLI', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040505', N'CAYLLOMA', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040506', N'COPORAQUE', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040507', N'HUAMBO', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040508', N'HUANCA', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040509', N'ICHUPAMPA', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040510', N'LARI', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040511', N'LLUTA', N'0405')
GO
print 'Processed 400 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040512', N'MACA', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040513', N'MADRIGAL', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040514', N'SAN ANTONIO DE CHUCA', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040515', N'SIBAYO', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040516', N'TAPAY', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040517', N'TISCO', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040518', N'TUTI', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040519', N'YANQUE', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040520', N'MAJES', N'0405')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040601', N'CHUQUIBAMBA', N'0406')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040602', N'ANDARAY', N'0406')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040603', N'CAYARANI', N'0406')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040604', N'CHICHAS', N'0406')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040605', N'IRAY', N'0406')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040606', N'RIO GRANDE', N'0406')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040607', N'SALAMANCA', N'0406')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040608', N'YANAQUIHUA', N'0406')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040701', N'MOLLENDO', N'0407')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040702', N'COCACHACRA', N'0407')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040703', N'DEAN VALDIVIA', N'0407')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040704', N'ISLAY', N'0407')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040705', N'MEJIA', N'0407')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040706', N'PUNTA DE BOMBON', N'0407')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040801', N'COTAHUASI', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040802', N'ALCA', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040803', N'CHARCANA', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040804', N'HUAYNACOTAS', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040805', N'PAMPAMARCA', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040806', N'PUYCA', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040807', N'QUECHUALLA', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040808', N'SAYLA', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040809', N'TAURIA', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040810', N'TOMEPAMPA', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'040811', N'TORO', N'0408')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050101', N'AYACUCHO', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050102', N'ACOCRO', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050103', N'ACOS VINCHOS', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050104', N'CARMEN ALTO', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050105', N'CHIARA', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050106', N'OCROS', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050107', N'PACAYCASA', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050108', N'QUINUA', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050109', N'SAN JOSE DE TICLLAS', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050110', N'SAN JUAN BAUTISTA', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050111', N'SANTIAGO DE PISCHA', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050112', N'SOCOS', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050113', N'TAMBILLO', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050114', N'VINCHOS', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050115', N'JESUS NAZARENO', N'0501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050201', N'CANGALLO', N'0502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050202', N'CHUSCHI', N'0502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050203', N'LOS MOROCHUCOS', N'0502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050204', N'MARIA PARADO DE BELLIDO', N'0502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050205', N'PARAS', N'0502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050206', N'TOTOS', N'0502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050301', N'SANCOS', N'0503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050302', N'CARAPO', N'0503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050303', N'SACSAMARCA', N'0503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050304', N'SANTIAGO DE LUCANAMARCA', N'0503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050401', N'HUANTA', N'0504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050402', N'AYAHUANCO', N'0504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050403', N'HUAMANGUILLA', N'0504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050404', N'IGUAIN', N'0504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050405', N'LURICOCHA', N'0504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050406', N'SANTILLANA', N'0504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050407', N'SIVIA', N'0504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050408', N'LLOCHEGUA', N'0504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050501', N'SAN MIGUEL', N'0505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050502', N'ANCO', N'0505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050503', N'AYNA', N'0505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050504', N'CHILCAS', N'0505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050505', N'CHUNGUI', N'0505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050506', N'LUIS CARRANZA', N'0505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050507', N'SANTA ROSA', N'0505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050508', N'TAMBO', N'0505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050601', N'PUQUIO', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050602', N'AUCARA', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050603', N'CABANA', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050604', N'CARMEN SALCEDO', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050605', N'CHAVIÑA', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050606', N'CHIPAO', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050607', N'HUAC-HUAS', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050608', N'LARAMATE', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050609', N'LEONCIO PRADO', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050610', N'LLAUTA', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050611', N'LUCANAS', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050612', N'OCAÑA', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050613', N'OTOCA', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050614', N'SAISA', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050615', N'SAN CRISTOBAL', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050616', N'SAN JUAN', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050617', N'SAN PEDRO', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050618', N'SAN PEDRO DE PALCO', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050619', N'SANCOS', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050620', N'SANTA ANA DE HUAYCAHUACHO', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050621', N'SANTA LUCIA', N'0506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050701', N'CORACORA', N'0507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050702', N'CHUMPI', N'0507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050703', N'CORONEL CASTAÑEDA', N'0507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050704', N'PACAPAUSA', N'0507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050705', N'PULLO', N'0507')
GO
print 'Processed 500 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050706', N'PUYUSCA', N'0507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050707', N'SAN FRANCISCO DE RAVACAYCO', N'0507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050708', N'UPAHUACHO', N'0507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050801', N'PAUSA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050802', N'COLTA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050803', N'CORCULLA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050804', N'LAMPA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050805', N'MARCABAMBA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050806', N'OYOLO', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050807', N'PARARCA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050808', N'SAN JAVIER DE ALPABAMBA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050809', N'SAN JOSE DE USHUA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050810', N'SARA SARA', N'0508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050901', N'QUEROBAMBA', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050902', N'BELEN', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050903', N'CHALCOS', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050904', N'CHILCAYOC', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050905', N'HUACAÑA', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050906', N'MORCOLLA', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050907', N'PAICO', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050908', N'SAN PEDRO DE LARCAY', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050909', N'SAN SALVADOR DE QUIJE', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050910', N'SANTIAGO DE PAUCARAY', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'050911', N'SORAS', N'0509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051001', N'HUANCAPI', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051002', N'ALCAMENCA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051003', N'APONGO', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051004', N'ASQUIPATA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051005', N'CANARIA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051006', N'CAYARA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051007', N'COLCA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051008', N'HUAMANQUIQUIA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051009', N'HUANCARAYLLA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051010', N'HUAYA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051011', N'SARHUA', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051012', N'VILCANCHOS', N'0510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051101', N'VILCAS HUAMAN', N'0511')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051102', N'ACCOMARCA', N'0511')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051103', N'CARHUANCA', N'0511')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051104', N'CONCEPCION', N'0511')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051105', N'HUAMBALPA', N'0511')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051106', N'INDEPENDENCIA', N'0511')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051107', N'SAURAMA', N'0511')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'051108', N'VISCHONGO', N'0511')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060101', N'CAJAMARCA', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060102', N'ASUNCION', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060103', N'CHETILLA', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060104', N'COSPAN', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060105', N'ENCAÑADA', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060106', N'JESUS', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060107', N'LLACANORA', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060108', N'LOS BAÑOS DEL INCA', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060109', N'MAGDALENA', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060110', N'MATARA', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060111', N'NAMORA', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060112', N'SAN JUAN', N'0601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060201', N'CAJABAMBA', N'0602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060202', N'CACHACHI', N'0602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060203', N'CONDEBAMBA', N'0602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060204', N'SITACOCHA', N'0602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060301', N'CELENDIN', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060302', N'CHUMUCH', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060303', N'CORTEGANA', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060304', N'HUASMIN', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060305', N'JORGE CHAVEZ', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060306', N'JOSE GALVEZ', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060307', N'MIGUEL IGLESIAS', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060308', N'OXAMARCA', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060309', N'SOROCHUCO', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060310', N'SUCRE', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060311', N'UTCO', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060312', N'LA LIBERTAD DE PALLAN', N'0603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060401', N'CHOTA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060402', N'ANGUIA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060403', N'CHADIN', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060404', N'CHIGUIRIP', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060405', N'CHIMBAN', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060406', N'CHOROPAMPA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060407', N'COCHABAMBA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060408', N'CONCHAN', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060409', N'HUAMBOS', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060410', N'LAJAS', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060411', N'LLAMA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060412', N'MIRACOSTA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060413', N'PACCHA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060414', N'PION', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060415', N'QUEROCOTO', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060416', N'SAN JUAN DE LICUPIS', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060417', N'TACABAMBA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060418', N'TOCMOCHE', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060419', N'CHALAMARCA', N'0604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060501', N'CONTUMAZA', N'0605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060502', N'CHILETE', N'0605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060503', N'CUPISNIQUE', N'0605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060504', N'GUZMANGO', N'0605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060505', N'SAN BENITO', N'0605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060506', N'SANTA CRUZ DE TOLED', N'0605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060507', N'TANTARICA', N'0605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060508', N'YONAN', N'0605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060601', N'CUTERVO', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060602', N'CALLAYUC', N'0606')
GO
print 'Processed 600 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060603', N'CHOROS', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060604', N'CUJILLO', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060605', N'LA RAMADA', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060606', N'PIMPINGOS', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060607', N'QUEROCOTILLO', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060608', N'SAN ANDRES DE CUTERVO', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060609', N'SAN JUAN DE CUTERVO', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060610', N'SAN LUIS DE LUCMA', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060611', N'SANTA CRUZ', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060612', N'SANTO DOMINGO DE LA CAPILLA', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060613', N'SANTO TOMAS', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060614', N'SOCOTA', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060615', N'TORIBIO CASANOVA', N'0606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060701', N'BAMBAMARCA', N'0607')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060702', N'CHUGUR', N'0607')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060703', N'HUALGAYOC', N'0607')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060801', N'JAEN', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060802', N'BELLAVISTA', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060803', N'CHONTALI', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060804', N'COLASAY', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060805', N'HUABAL', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060806', N'LAS PIRIAS', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060807', N'POMAHUACA', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060808', N'PUCARA', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060809', N'SALLIQUE', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060810', N'SAN FELIPE', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060811', N'SAN JOSE DEL ALTO', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060812', N'SANTA ROSA', N'0608')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060901', N'SAN IGNACIO', N'0609')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060902', N'CHIRINOS', N'0609')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060903', N'HUARANGO', N'0609')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060904', N'LA COIPA', N'0609')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060905', N'NAMBALLE', N'0609')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060906', N'SAN JOSE DE LOURDES', N'0609')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'060907', N'TABACONAS', N'0609')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061001', N'PEDRO GALVEZ', N'0610')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061002', N'CHANCAY', N'0610')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061003', N'EDUARDO VILLANUEVA', N'0610')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061004', N'GREGORIO PITA', N'0610')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061005', N'ICHOCAN', N'0610')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061006', N'JOSE MANUEL QUIROZ', N'0610')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061007', N'JOSE SABOGAL', N'0610')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061101', N'SAN MIGUEL', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061102', N'BOLIVAR', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061103', N'CALQUIS', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061104', N'CATILLUC', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061105', N'EL PRADO', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061106', N'LA FLORIDA', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061107', N'LLAPA', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061108', N'NANCHOC', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061109', N'NIEPOS', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061110', N'SAN GREGORIO', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061111', N'SAN SILVESTRE DE COCHAN', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061112', N'TONGOD', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061113', N'UNION AGUA BLANCA', N'0611')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061201', N'SAN PABLO', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061202', N'SAN BERNARDINO', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061203', N'SAN LUIS', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061204', N'TUMBADEN', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061205', N'SANTA CRUZ', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061206', N'ANDABAMBA', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061207', N'CATACHE', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061208', N'CHANCAYBAÑOS', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061209', N'LA ESPERANZA', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061210', N'NINABAMBA', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061211', N'PULAN', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061212', N'SAUCEPAMPA', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061213', N'SEXI', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061214', N'UTICYACU', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'061215', N'YAUYUCAN', N'0612')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'070101', N'CALLAO', N'0701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'070102', N'BELLAVISTA', N'0701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'070103', N'CARMEN DE LA LEGUA REYNOSO', N'0701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'070104', N'LA PERLA', N'0701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'070105', N'LA PUNTA', N'0701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'070106', N'VENTANILLA', N'0701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080101', N'CUSCO', N'0801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080102', N'CCORCA', N'0801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080103', N'POROY', N'0801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080104', N'SAN JERONIMO', N'0801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080105', N'SAN SEBASTIAN', N'0801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080106', N'SANTIAGO', N'0801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080107', N'SAYLLA', N'0801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080108', N'WANCHAQ', N'0801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080201', N'ACOMAYO', N'0802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080202', N'ACOPIA', N'0802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080203', N'ACOS', N'0802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080204', N'MOSOC LLACTA', N'0802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080205', N'POMACANCHI', N'0802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080206', N'RONDOCAN', N'0802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080207', N'SANGARARA', N'0802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080301', N'ANTA', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080302', N'ANCAHUASI', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080303', N'CACHIMAYO', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080304', N'CHINCHAYPUJIO', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080305', N'HUAROCONDO', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080306', N'LIMATAMBO', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080307', N'MOLLEPATA', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080308', N'PUCYURA', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080309', N'ZURITE', N'0803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080401', N'CALCA', N'0804')
GO
print 'Processed 700 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080402', N'COYA', N'0804')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080403', N'LAMAY', N'0804')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080404', N'LARES', N'0804')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080405', N'PISAC', N'0804')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080406', N'SAN SALVADOR', N'0804')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080407', N'TARAY', N'0804')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080408', N'YANATILE', N'0804')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080501', N'YANAOCA', N'0805')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080502', N'CHECCA', N'0805')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080503', N'KUNTURKANKI', N'0805')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080504', N'LANGUI', N'0805')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080505', N'LAYO', N'0805')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080506', N'PAMPAMARCA', N'0805')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080507', N'QUEHUE', N'0805')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080508', N'TUPAC AMARU', N'0805')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080601', N'SICUANI', N'0806')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080602', N'CHECACUPE', N'0806')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080603', N'COMBAPATA', N'0806')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080604', N'MARANGANI', N'0806')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080605', N'PITUMARCA', N'0806')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080606', N'SAN PABLO', N'0806')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080607', N'SAN PEDRO', N'0806')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080608', N'TINTA', N'0806')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080701', N'SANTO TOMAS', N'0807')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080702', N'CAPACMARCA', N'0807')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080703', N'CHAMACA', N'0807')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080704', N'COLQUEMARCA', N'0807')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080705', N'LIVITACA', N'0807')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080706', N'LLUSCO', N'0807')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080707', N'QUIÑOTA', N'0807')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080708', N'VELILLE', N'0807')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080801', N'ESPINAR', N'0808')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080802', N'CONDOROMA', N'0808')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080803', N'COPORAQUE', N'0808')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080804', N'OCORURO', N'0808')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080805', N'PALLPATA', N'0808')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080806', N'PICHIGUA', N'0808')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080807', N'SUYCKUTAMBO', N'0808')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080808', N'ALTO PICHIGUA', N'0808')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080901', N'SANTA ANA', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080902', N'ECHARATE', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080903', N'HUAYOPATA', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080904', N'MARANURA', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080905', N'OCOBAMBA', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080906', N'QUELLOUNO', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080907', N'KIMBIRI', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080908', N'SANTA TERESA', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080909', N'VILCABAMBA', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'080910', N'PICHARI', N'0809')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081001', N'PARURO', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081002', N'ACCHA', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081003', N'CCAPI', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081004', N'COLCHA', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081005', N'HUANOQUITE', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081006', N'OMACHA', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081007', N'PACCARITAMBO', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081008', N'PILLPINTO', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081009', N'YAURISQUE', N'0810')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081101', N'PAUCARTAMBO', N'0811')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081102', N'CAICAY', N'0811')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081103', N'CHALLABAMBA', N'0811')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081104', N'COLQUEPATA', N'0811')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081105', N'HUANCARANI', N'0811')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081106', N'KOSÑIPATA', N'0811')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081201', N'URCOS', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081202', N'ANDAHUAYLILLAS', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081203', N'CAMANTI', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081204', N'CCARHUAYO', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081205', N'CCATCA', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081206', N'CUSIPATA', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081207', N'HUARO', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081208', N'LUCRE', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081209', N'MARCAPATA', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081210', N'OCONGATE', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081211', N'OROPESA', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081212', N'QUIQUIJANA', N'0812')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081301', N'URUBAMBA', N'0813')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081302', N'CHINCHERO', N'0813')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081303', N'HUAYLLABAMBA', N'0813')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081304', N'MACHUPICCHU', N'0813')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081305', N'MARAS', N'0813')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081306', N'OLLANTAYTAMBO', N'0813')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'081307', N'YUCAY', N'0813')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090102', N'ACOBAMBILLA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090103', N'ACORIA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090104', N'CONAYCA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090105', N'CUENCA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090106', N'HUACHOCOLPA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090107', N'HUAYLLAHUARA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090108', N'IZCUCHACA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090109', N'LARIA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090110', N'MANTA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090111', N'MARISCAL CACERES', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090112', N'MOYA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090113', N'NUEVO OCCORO', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090114', N'PALCA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090115', N'PILCHACA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090116', N'VILCA', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090117', N'YAULI', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090118', N'ASCENSION', N'0901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090119', N'HUANDO', N'0901')
GO
print 'Processed 800 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090201', N'ACOBAMBA', N'0902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090202', N'ANDABAMBA', N'0902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090203', N'ANTA', N'0902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090204', N'CAJA', N'0902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090205', N'MARCAS', N'0902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090206', N'PAUCARA', N'0902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090207', N'POMACOCHA', N'0902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090208', N'ROSARIO', N'0902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090301', N'LIRCAY', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090302', N'ANCHONGA', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090303', N'CALLANMARCA', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090304', N'CCOCHACCASA', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090305', N'CHINCHO', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090306', N'CONGALLA', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090307', N'HUANCA-HUANCA', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090308', N'HUAYLLAY GRANDE', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090309', N'JULCAMARCA', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090310', N'SAN ANTONIO DE ANTAPARCO', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090311', N'SANTO TOMAS DE PATA', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090312', N'SECCLLA', N'0903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090401', N'CASTROVIRREYNA', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090402', N'ARMA', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090403', N'AURAHUA', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090404', N'CAPILLAS', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090405', N'CHUPAMARCA', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090406', N'COCAS', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090407', N'HUACHOS', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090408', N'HUAMATAMBO', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090409', N'MOLLEPAMPA', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090410', N'SAN JUAN', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090411', N'SANTA ANA', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090412', N'TANTARA', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090413', N'TICRAPO', N'0904')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090501', N'CHURCAMPA', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090502', N'ANCO', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090503', N'CHINCHIHUASI', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090504', N'EL CARMEN', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090505', N'LA MERCED', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090506', N'LOCROJA', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090507', N'PAUCARBAMBA', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090508', N'SAN MIGUEL DE MAYOCC', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090509', N'SAN PEDRO DE CORIS', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090510', N'PACHAMARCA', N'0905')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090601', N'HUAYTARA', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090602', N'AYAVI', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090603', N'CORDOVA', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090604', N'HUAYACUNDO ARMA', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090605', N'LARAMARCA', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090606', N'OCOYO', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090607', N'PILPICHACA', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090608', N'QUERCO', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090609', N'QUITO-ARMA', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090610', N'SAN ANTONIO DE CUSICANCHA', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090611', N'SAN FRANCISCO DE SANGAYAICO', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090612', N'SAN ISIDRO', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090613', N'SANTIAGO DE CHOCORVOS', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090614', N'SANTIAGO DE QUIRAHUARA', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090615', N'SANTO DOMINGO DE CAPILLAS', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090616', N'TAMBO', N'0906')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090701', N'PAMPAS', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090702', N'ACOSTAMBO', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090703', N'ACRAQUIA', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090704', N'AHUAYCHA', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090705', N'COLCABAMBA', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090706', N'DANIEL HERNANDEZ', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090707', N'HUACHOCOLPA', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090708', N'HUARIBAMBA', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090709', N'ÑAHUIMPUQUIO', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090710', N'PAZOS', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090711', N'QUISHUAR', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090712', N'SALCABAMBA', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090713', N'SALCAHUASI', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090714', N'SAN MARCOS DE ROCCHAC', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090715', N'SURCUBAMBA', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'090716', N'TINTAY PUNCU', N'0907')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100101', N'HUANUCO', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100102', N'AMARILIS', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100103', N'CHINCHAO', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100104', N'CHURUBAMBA', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100105', N'MARGOS', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100106', N'QUISQUI', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100107', N'SAN FRANCISCO DE CAYRAN', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100108', N'SAN PEDRO DE CHAULAN', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100109', N'SANTA MARIA DEL VALLE', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100110', N'YARUMAYO', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100111', N'PILLCO MARCA', N'1001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100201', N'AMBO', N'1002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100202', N'CAYNA', N'1002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100203', N'COLPAS', N'1002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100204', N'CONCHAMARCA', N'1002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100205', N'HUACAR', N'1002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100206', N'SAN FRANCISCO', N'1002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100207', N'SAN RAFAEL', N'1002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100208', N'TOMAY KICHWA', N'1002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100301', N'LA UNION', N'1003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100302', N'CHUQUIS', N'1003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100303', N'MARIAS', N'1003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100304', N'PACHAS', N'1003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100305', N'QUIVILLA', N'1003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100306', N'RIPAN', N'1003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100307', N'SHUNQUI', N'1003')
GO
print 'Processed 900 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100308', N'SILLAPATA', N'1003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100309', N'YANAS', N'1003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100401', N'HUACAYBAMBA', N'1004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100402', N'CANCHABAMBA', N'1004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100403', N'COCHABAMBA', N'1004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100404', N'PINRA', N'1004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100501', N'LLATA', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100502', N'ARANCAY', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100503', N'CHAVIN DE PARIARCA', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100504', N'JACAS GRANDE', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100505', N'JIRCAN', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100506', N'MIRAFLORES', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100507', N'MONZON', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100508', N'PUNCHAO', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100509', N'PUÑOS', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100510', N'SINGA', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100511', N'TANTAMAYO', N'1005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100601', N'RUPA-RUPA', N'1006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100602', N'DANIEL ALOMIA ROBLES', N'1006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100603', N'HERMILIO VALDIZAN', N'1006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100604', N'JOSE CRESPO Y CASTILLO', N'1006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100605', N'LUYANDO', N'1006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100606', N'MARIANO DAMASO BERAUN', N'1006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100701', N'HUACRACHUCO', N'1007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100702', N'CHOLON', N'1007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100703', N'SAN BUENAVENTURA', N'1007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100801', N'PANAO', N'1008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100802', N'CHAGLLA', N'1008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100803', N'MOLINO', N'1008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100804', N'UMARI', N'1008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100901', N'PUERTO INCA', N'1009')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100902', N'CODO DEL POZUZO', N'1009')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100903', N'HONORIA', N'1009')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100904', N'TOURNAVISTA', N'1009')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'100905', N'YUYAPICHIS', N'1009')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101001', N'JESUS', N'1010')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101002', N'BAÑOS', N'1010')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101003', N'JIVIA', N'1010')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101004', N'QUEROPALCA', N'1010')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101005', N'RONDOS', N'1010')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101006', N'SAN FRANCISCO DE ASIS', N'1010')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101007', N'SAN MIGUEL DE CAURI', N'1010')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101101', N'CHAVINILLO', N'1011')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101102', N'CAHUAC', N'1011')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101103', N'CHACABAMBA', N'1011')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101104', N'APARICIO POMARES', N'1011')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101105', N'JACAS CHICO', N'1011')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101106', N'OBAS', N'1011')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101107', N'PAMPAMARCA', N'1011')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'101108', N'CHORAS', N'1011')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110101', N'ICA', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110102', N'LA TINGUIÑA', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110103', N'LOS AQUIJES', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110104', N'OCUCAJE', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110105', N'PACHACUTEC', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110106', N'PARCONA', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110107', N'PUEBLO NUEVO', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110108', N'SALAS', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110109', N'SAN JOSE DE LOS MOLINOS', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110110', N'SAN JUAN BAUTISTA', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110111', N'SANTIAGO', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110112', N'SUBTANJALLA', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110113', N'TATE', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110114', N'YAUCA DEL ROSARIO', N'1101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110201', N'CHINCHA ALTA', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110202', N'ALTO LARAN', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110203', N'CHAVIN', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110204', N'CHINCHA BAJA', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110205', N'EL CARMEN', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110206', N'GROCIO PRADO', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110207', N'PUEBLO NUEVO', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110208', N'SAN JUAN DE YANAC', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110209', N'SAN PEDRO DE HUACARPANA', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110210', N'SUNAMPE', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110211', N'TAMBO DE MORA', N'1102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110301', N'NAZCA', N'1103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110302', N'CHANGUILLO', N'1103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110303', N'EL INGENIO', N'1103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110304', N'MARCONA', N'1103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110305', N'VISTA ALEGRE', N'1103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110401', N'PALPA', N'1104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110402', N'LLIPATA', N'1104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110403', N'RIO GRANDE', N'1104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110404', N'SANTA CRUZ', N'1104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110415', N'TIBILLO', N'1104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110501', N'PISCO', N'1105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110502', N'HUANCANO', N'1105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110503', N'HUMAY', N'1105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110504', N'INDEPENDENCIA', N'1105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110505', N'PARACAS', N'1105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110506', N'SAN ANDRES', N'1105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110507', N'SAN CLEMENTE', N'1105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'110508', N'TUPAC AMARU INCA', N'1105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120101', N'HUANCAYO', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120102', N'CARHUACALLANGA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120103', N'CHACAPAMPA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120104', N'CHICCHE', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120105', N'CHILCA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120106', N'CHONGOS ALTO', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120107', N'CHUPURO', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120108', N'COLCA', N'1201')
GO
print 'Processed 1000 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120109', N'CULLHUAS', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120110', N'EL TAMBO', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120111', N'HUACRAPUQUIO', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120112', N'HUALHUAS', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120113', N'HUANCAN', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120114', N'HUASICANCHA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120115', N'HUAYUCACHI', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120116', N'INGENIO', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120117', N'PARIAHUANCA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120118', N'PILCOMAYO', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120119', N'PUCARA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120120', N'QUICHUAY', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120121', N'QUILCAS', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120122', N'SAN AGUSTIN', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120123', N'SAN JERONIMO DE TUNAN', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120124', N'SA&Ntilde;O', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120125', N'SAPALLANGA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120126', N'SICAYA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120127', N'SANTO DOMINGO DE ACOBAMBA', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120128', N'VIQUES', N'1201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120201', N'CONCEPCION', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120202', N'ACO', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120203', N'ANDAMARCA', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120204', N'CHAMBARA', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120205', N'COCHAS', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120206', N'COMAS', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120207', N'HEROINAS TOLEDO', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120208', N'MANZANARES', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120209', N'MARISCAL CASTILLA', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120210', N'MATAHUASI', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120211', N'MITO', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120212', N'NUEVE DE JULIO', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120213', N'ORCOTUNA', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120214', N'SAN JOSE DE QUERO', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120215', N'SANTA ROSA DE OCOPA', N'1202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120301', N'CHANCHAMAYO', N'1203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120302', N'PERENE', N'1203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120303', N'PICHANAQUI', N'1203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120304', N'SAN LUIS DE SHUARO', N'1203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120305', N'SAN RAMON', N'1203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120306', N'VITOC', N'1203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120401', N'JAUJA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120402', N'ACOLLA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120403', N'APATA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120404', N'ATAURA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120405', N'CANCHAYLLO', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120406', N'CURICACA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120407', N'EL MANTARO', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120408', N'HUAMALI', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120409', N'HUARIPAMPA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120410', N'HUERTAS', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120411', N'JANJAILLO', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120412', N'JULCAN', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120413', N'LEONOR ORDOÑEZ', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120414', N'LLOCLLAPAMPA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120415', N'MARCO', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120416', N'MASMA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120417', N'MASMA CHICCHE', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120418', N'MOLINOS', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120419', N'MONOBAMBA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120420', N'MUQUI', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120421', N'MUQUIYAUYO', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120422', N'PACA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120423', N'PACCHA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120424', N'PANCAN', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120425', N'PARCO', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120426', N'POMACANCHA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120427', N'RICRAN', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120428', N'SAN LORENZO', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120429', N'SAN PEDRO DE CHUNAN', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120430', N'SAUSA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120431', N'SINCOS', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120432', N'TUNAN MARCA', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120433', N'YAULI', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120434', N'YAUYOS', N'1204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120501', N'JUNIN', N'1205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120502', N'CARHUAMAYO', N'1205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120503', N'ONDORES', N'1205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120504', N'ULCUMAYO', N'1205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120601', N'SATIPO', N'1206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120602', N'COVIRIALI', N'1206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120603', N'LLAYLLA', N'1206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120604', N'MAZAMARI', N'1206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120605', N'PAMPA HERMOSA', N'1206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120606', N'PANGOA', N'1206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120607', N'RIO NEGRO', N'1206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120608', N'RIO TAMBO', N'1206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120701', N'TARMA', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120702', N'ACOBAMBA', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120703', N'HUARICOLCA', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120704', N'HUASAHUASI', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120705', N'LA UNION', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120706', N'PALCA', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120707', N'PALCAMAYO', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120708', N'SAN PEDRO DE CAJAS', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120709', N'TAPO', N'1207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120801', N'LA OROYA', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120802', N'CHACAPALPA', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120803', N'HUAY-HUAY', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120804', N'MARCAPOMACOCHA', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120805', N'MOROCOCHA', N'1208')
GO
print 'Processed 1100 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120806', N'PACCHA', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120807', N'SANTA BARBARA DE CARHUACAYAN', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120808', N'SANTA ROSA DE SACCO', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120809', N'SUITUCANCHA', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120810', N'YAULI', N'1208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120901', N'CHUPACA', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120902', N'AHUAC', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120903', N'CHONGOS BAJO', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120904', N'HUACHAC', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120905', N'HUAMANCACA CHICO', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120906', N'SAN JUAN DE ISCOS', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120907', N'SAN JUAN DE JARPA', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120908', N'TRES DE DICIEMBRE', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'120909', N'YANACANCHA', N'1209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130101', N'TRUJILLO', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130102', N'EL PORVENIR', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130103', N'FLORENCIA DE MORA', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130104', N'HUANCHACO', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130105', N'LA ESPERANZA', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130106', N'LAREDO', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130107', N'MOCHE', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130108', N'POROTO', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130109', N'SALAVERRY', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130110', N'SIMBAL', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130111', N'VICTOR LARCO HERRERA', N'1301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130201', N'ASCOPE', N'1302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130202', N'CHICAMA', N'1302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130203', N'CHOCOPE', N'1302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130204', N'MAGDALENA DE CAO', N'1302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130205', N'PAIJAN', N'1302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130206', N'RAZURI', N'1302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130207', N'SANTIAGO DE CAO', N'1302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130208', N'CASA GRANDE', N'1302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130301', N'BOLIVAR', N'1303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130302', N'BAMBAMARCA', N'1303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130303', N'CONDORMARCA', N'1303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130304', N'LONGOTEA', N'1303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130305', N'UCHUMARCA', N'1303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130306', N'UCUNCHA', N'1303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130401', N'CHEPEN', N'1304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130402', N'PACANGA', N'1304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130403', N'PUEBLO NUEVO', N'1304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130501', N'JULCAN', N'1305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130502', N'CALAMARCA', N'1305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130503', N'CARABAMBA', N'1305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130504', N'HUASO', N'1305')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130601', N'OTUZCO', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130602', N'AGALLPAMPA', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130603', N'CHARAT', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130604', N'HUARANCHAL', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130605', N'LA CUESTA', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130606', N'MACHE', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130607', N'PARANDAY', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130608', N'SALPO', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130609', N'SINSICAP', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130610', N'USQUIL', N'1306')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130701', N'SAN PEDRO DE LLOC', N'1307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130702', N'GUADALUPE', N'1307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130703', N'JEQUETEPEQUE', N'1307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130704', N'PACASMAYO', N'1307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130705', N'SAN JOSE', N'1307')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130801', N'TAYABAMBA', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130802', N'BULDIBUYO', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130803', N'CHILLIA', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130804', N'HUANCASPATA', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130805', N'HUAYLILLAS', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130806', N'HUAYO', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130807', N'ONGON', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130808', N'PARCOY', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130809', N'PATAZ', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130810', N'PIAS', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130811', N'SANTIAGO DE CHALLAS', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130812', N'TAURIJA', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130813', N'URPAY', N'1308')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130901', N'HUAMACHUCO', N'1309')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130902', N'CHUGAY', N'1309')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130903', N'COCHORCO', N'1309')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130904', N'CURGOS', N'1309')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130905', N'MARCABAL', N'1309')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130906', N'SANAGORAN', N'1309')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130907', N'SARIN', N'1309')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'130908', N'SARTIMBAMBA', N'1309')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131001', N'SANTIAGO DE CHUCO', N'1310')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131002', N'ANGASMARCA', N'1310')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131003', N'CACHICADAN', N'1310')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131004', N'MOLLEBAMBA', N'1310')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131005', N'MOLLEPATA', N'1310')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131006', N'QUIRUVILCA', N'1310')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131007', N'SANTA CRUZ DE CHUCA', N'1310')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131008', N'SITABAMBA', N'1310')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131101', N'GRAN CHIMU', N'1311')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131102', N'CASCAS', N'1311')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131103', N'LUCMA', N'1311')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131104', N'MARMOT', N'1311')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131105', N'SAYAPULLO', N'1311')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131201', N'VIRU', N'1312')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131202', N'CHAO', N'1312')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'131203', N'GUADALUPITO', N'1312')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140101', N'CHICLAYO', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140102', N'CHONGOYAPE', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140103', N'ETEN', N'1401')
GO
print 'Processed 1200 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140104', N'ETEN PUERTO', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140105', N'JOSE LEONARDO ORTIZ', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140106', N'LA VICTORIA', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140107', N'LAGUNAS', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140108', N'MONSEFU', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140109', N'NUEVA ARICA', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140110', N'OYOTUN', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140111', N'PICSI', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140112', N'PIMENTEL', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140113', N'REQUE', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140114', N'SANTA ROSA', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140115', N'SA&Ntilde;A', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140116', N'CAYALTI', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140117', N'PATAPO', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140118', N'POMALCA', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140119', N'PUCALA', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140120', N'TUMAN', N'1401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140201', N'FERREÑAFE', N'1402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140202', N'CAÑARIS', N'1402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140203', N'INCAHUASI', N'1402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140204', N'MANUEL ANTONIO MESONES MURO', N'1402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140205', N'PITIPO', N'1402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140206', N'PUEBLO NUEVO', N'1402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140301', N'LAMBAYEQUE', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140302', N'CHOCHOPE', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140303', N'ILLIMO', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140304', N'JAYANCA', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140305', N'MOCHUMI', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140306', N'MORROPE', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140307', N'MOTUPE', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140308', N'OLMOS', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140309', N'PACORA', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140310', N'SALAS', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140311', N'SAN JOSE', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'140312', N'TUCUME', N'1403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150101', N'LIMA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150102', N'ANCON', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150103', N'ATE', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150104', N'BARRANCO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150105', N'BREÑA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150106', N'CARABAYLLO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150107', N'CHACLACAYO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150108', N'CHORRILLOS', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150109', N'CIENEGUILLA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150110', N'COMAS', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150111', N'EL AGUSTINO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150112', N'INDEPENDENCIA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150113', N'JESUS MARIA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150114', N'LA MOLINA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150115', N'LA VICTORIA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150116', N'LINCE', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150117', N'LOS OLIVOS', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150118', N'LURIGANCHO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150119', N'LURIN', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150120', N'MAGDALENA DEL MAR', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150121', N'MAGDALENA VIEJA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150122', N'MIRAFLORES', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150123', N'PACHACAMAC', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150124', N'PUCUSANA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150125', N'PUENTE PIEDRA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150126', N'PUNTA HERMOSA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150127', N'PUNTA NEGRA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150128', N'RIMAC', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150129', N'SAN BARTOLO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150130', N'SAN BORJA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150131', N'SAN ISIDRO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150132', N'SAN JUAN DE LURIGANCHO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150133', N'SAN JUAN DE MIRAFLORES', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150134', N'SAN LUIS', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150135', N'SAN MARTIN DE PORRES', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150136', N'SAN MIGUEL', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150137', N'SANTA ANITA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150138', N'SANTA MARIA DEL MAR', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150139', N'SANTA ROSA', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150140', N'SANTIAGO DE SURCO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150141', N'SURQUILLO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150142', N'VILLA EL SALVADOR', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150143', N'VILLA MARIA DEL TRIUNFO', N'1501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150201', N'BARRANCA', N'1502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150202', N'PARAMONGA', N'1502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150203', N'PATIVILCA', N'1502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150204', N'SUPE', N'1502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150205', N'SUPE PUERTO', N'1502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150301', N'CAJATAMBO', N'1503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150302', N'COPA', N'1503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150303', N'GORGOR', N'1503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150304', N'HUANCAPON', N'1503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150305', N'MANAS', N'1503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150401', N'CANTA', N'1504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150402', N'ARAHUAY', N'1504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150403', N'HUAMANTANGA', N'1504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150404', N'HUAROS', N'1504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150405', N'LACHAQUI', N'1504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150406', N'SAN BUENAVENTURA', N'1504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150407', N'SANTA ROSA DE QUIVES', N'1504')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150501', N'SAN VICENTE DE CAÑETE', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150502', N'ASIA', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150503', N'CALANGO', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150504', N'CERRO AZUL', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150505', N'CHILCA', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150506', N'COAYLLO', N'1505')
GO
print 'Processed 1300 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150507', N'IMPERIAL', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150508', N'LUNAHUANA', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150509', N'MALA', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150510', N'NUEVO IMPERIAL', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150511', N'PACARAN', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150512', N'QUILMANA', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150513', N'SAN ANTONIO', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150514', N'SAN LUIS', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150515', N'SANTA CRUZ DE FLORES', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150516', N'ZUÑIGA', N'1505')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150601', N'HUARAL', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150602', N'ATAVILLOS ALTO', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150603', N'ATAVILLOS BAJO', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150604', N'AUCALLAMA', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150605', N'CHANCAY', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150606', N'IHUARI', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150607', N'LAMPIAN', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150608', N'PACARAOS', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150609', N'SAN MIGUEL DE ACOS', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150610', N'SANTA CRUZ DE ANDAMARCA', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150611', N'SUMBILCA', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150612', N'VEINTISIETE DE NOVIEMBRE', N'1506')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150701', N'MATUCANA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150702', N'ANTIOQUIA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150703', N'CALLAHUANCA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150704', N'CARAMPOMA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150705', N'CHICLA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150706', N'CUENCA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150707', N'HUACHUPAMPA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150708', N'HUANZA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150709', N'HUAROCHIRI', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150710', N'LAHUAYTAMBO', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150711', N'LANGA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150712', N'LARAOS', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150713', N'MARIATANA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150714', N'RICARDO PALMA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150715', N'SAN ANDRES DE TUPICOCHA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150716', N'SAN ANTONIO', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150717', N'SAN BARTOLOME', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150718', N'SAN DAMIAN', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150719', N'SAN JUAN DE IRIS', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150720', N'SAN JUAN DE TANTARANCHE', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150721', N'SAN LORENZO DE QUINTI', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150722', N'SAN MATEO', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150723', N'SAN MATEO DE OTAO', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150724', N'SAN PEDRO DE CASTA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150725', N'SAN PEDRO DE HUANCAYRE', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150726', N'SANGALLAYA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150727', N'SANTA CRUZ DE COCACHACRA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150728', N'SANTA EULALIA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150729', N'SANTIAGO DE ANCHUCAYA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150730', N'SANTIAGO DE TUNA', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150731', N'SANTO DOMINGO DE LOS OLLEROS', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150732', N'SURCO', N'1507')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150801', N'HUACHO', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150802', N'AMBAR', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150803', N'CALETA DE CARQUIN', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150804', N'CHECRAS', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150805', N'HUALMAY', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150806', N'HUAURA', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150807', N'LEONCIO PRADO', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150808', N'PACCHO', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150809', N'SANTA LEONOR', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150810', N'SANTA MARIA', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150811', N'SAYAN', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150812', N'VEGUETA', N'1508')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150901', N'OYON', N'1509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150902', N'ANDAJES', N'1509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150903', N'CAUJUL', N'1509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150904', N'COCHAMARCA', N'1509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150905', N'NAVAN', N'1509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'150906', N'PACHANGARA', N'1509')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151001', N'YAUYOS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151002', N'ALIS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151003', N'AYAUCA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151004', N'AYAVIRI', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151005', N'AZANGARO', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151006', N'CACRA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151007', N'CARANIA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151008', N'CATAHUASI', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151009', N'CHOCOS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151010', N'COCHAS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151011', N'COLONIA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151012', N'HONGOS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151013', N'HUAMPARA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151014', N'HUANCAYA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151015', N'HUANGASCAR', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151016', N'HUANTAN', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151017', N'HUAÑEC', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151018', N'LARAOS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151019', N'LINCHA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151020', N'MADEAN', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151021', N'MIRAFLORES', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151022', N'OMAS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151023', N'PUTINZA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151024', N'QUINCHES', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151025', N'QUINOCAY', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151026', N'SAN JOAQUIN', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151027', N'SAN PEDRO DE PILAS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151028', N'TANTA', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151029', N'TAURIPAMPA', N'1510')
GO
print 'Processed 1400 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151030', N'TOMAS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151031', N'TUPE', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151032', N'VIÑAC', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'151033', N'VITIS', N'1510')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160101', N'IQUITOS', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160102', N'ALTO NANAY', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160103', N'FERNANDO LORES', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160104', N'INDIANA', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160105', N'LAS AMAZONAS', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160106', N'MAZAN', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160107', N'NAPO', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160108', N'PUNCHANA', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160109', N'PUTUMAYO', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160110', N'TORRES CAUSANA', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160111', N'BELEN', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160112', N'SAN JUAN BAUTISTA', N'1601')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160201', N'YURIMAGUAS', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160202', N'BALSAPUERTO', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160203', N'BARRANCA', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160204', N'CAHUAPANAS', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160205', N'JEBEROS', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160206', N'LAGUNAS', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160207', N'MANSERICHE', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160208', N'MORONA', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160209', N'PASTAZA', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160210', N'SANTA CRUZ', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160211', N'TENIENTE CESAR LOPEZ ROJAS', N'1602')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160301', N'NAUTA', N'1603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160302', N'PARINARI', N'1603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160303', N'TIGRE', N'1603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160304', N'TROMPETEROS', N'1603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160305', N'URARINAS', N'1603')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160401', N'RAMON CASTILLA', N'1604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160402', N'PEBAS', N'1604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160403', N'YAVARI', N'1604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160404', N'SAN PABLO', N'1604')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160501', N'REQUENA', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160502', N'ALTO TAPICHE', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160503', N'CAPELO', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160504', N'EMILIO SAN MARTIN', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160505', N'MAQUIA', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160506', N'PUINAHUA', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160507', N'SAQUENA', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160508', N'SOPLIN', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160509', N'TAPICHE', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160510', N'JENARO HERRERA', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160511', N'YAQUERANA', N'1605')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160601', N'CONTAMANA', N'1606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160602', N'INAHUAYA', N'1606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160603', N'PADRE MARQUEZ', N'1606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160604', N'PAMPA HERMOSA', N'1606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160605', N'SARAYACU', N'1606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'160606', N'VARGAS GUERRA', N'1606')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170101', N'TAMBOPATA', N'1701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170102', N'INAMBARI', N'1701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170103', N'LAS PIEDRAS', N'1701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170104', N'LABERINTO', N'1701')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170201', N'MANU', N'1702')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170202', N'FITZCARRALD', N'1702')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170203', N'MADRE DE DIOS', N'1702')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170204', N'HUEPETUHE', N'1702')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170301', N'IÑAPARI', N'1703')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170302', N'IBERIA', N'1703')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'170303', N'TAHUAMANU', N'1703')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180101', N'MOQUEGUA', N'1801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180102', N'CARUMAS', N'1801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180103', N'CUCHUMBAYA', N'1801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180104', N'SAMEGUA', N'1801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180105', N'SAN CRISTOBAL', N'1801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180106', N'TORATA', N'1801')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180201', N'OMATE', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180202', N'CHOJATA', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180203', N'COALAQUE', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180204', N'ICHUÑA', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180205', N'LA CAPILLA', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180206', N'LLOQUE', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180207', N'MATALAQUE', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180208', N'PUQUINA', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180209', N'QUINISTAQUILLAS', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180210', N'UBINAS', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180211', N'YUNGA', N'1802')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180301', N'ILO', N'1803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180302', N'EL ALGARROBAL', N'1803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'180303', N'PACOCHA', N'1803')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190101', N'CHAUPIMARCA', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190102', N'HUACHON', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190103', N'HUARIACA', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190104', N'HUAYLLAY', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190105', N'NINACACA', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190106', N'PALLANCHACRA', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190107', N'PAUCARTAMBO', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190108', N'SAN FCO.DE ASIS DE YARUSYACAN', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190109', N'SIMON BOLIVAR', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190110', N'TICLACAYAN', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190111', N'TINYAHUARCO', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190112', N'VICCO', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190113', N'YANACANCHA', N'1901')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190201', N'YANAHUANCA', N'1902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190202', N'CHACAYAN', N'1902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190203', N'GOYLLARISQUIZGA', N'1902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190204', N'PAUCAR', N'1902')
GO
print 'Processed 1500 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190205', N'SAN PEDRO DE PILLAO', N'1902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190206', N'SANTA ANA DE TUSI', N'1902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190207', N'TAPUC', N'1902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190208', N'VILCABAMBA', N'1902')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190301', N'OXAPAMPA', N'1903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190302', N'CHONTABAMBA', N'1903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190303', N'HUANCABAMBA', N'1903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190304', N'PALCAZU', N'1903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190305', N'POZUZO', N'1903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190306', N'PUERTO BERMUDEZ', N'1903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'190307', N'VILLA RICA', N'1903')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200101', N'PIURA', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200102', N'CASTILLA', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200103', N'CATACAOS', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200104', N'CURA MORI', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200105', N'EL TALLAN', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200106', N'LA ARENA', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200107', N'LA UNION', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200108', N'LAS LOMAS', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200109', N'TAMBO GRANDE', N'2001')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200201', N'AYABACA', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200202', N'FRIAS', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200203', N'JILILI', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200204', N'LAGUNAS', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200205', N'MONTERO', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200206', N'PACAIPAMPA', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200207', N'PAIMAS', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200208', N'SAPILLICA', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200209', N'SICCHEZ', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200210', N'SUYO', N'2002')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200301', N'HUANCABAMBA', N'2003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200302', N'CANCHAQUE', N'2003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200303', N'EL CARMEN DE LA FRONTERA', N'2003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200304', N'HUARMACA', N'2003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200305', N'LALAQUIZ', N'2003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200306', N'SAN MIGUEL DE EL FAIQUE', N'2003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200307', N'SONDOR', N'2003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200308', N'SONDORILLO', N'2003')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200401', N'CHULUCANAS', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200402', N'BUENOS AIRES', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200403', N'CHALACO', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200404', N'LA MATANZA', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200405', N'MORROPON', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200406', N'SALITRAL', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200407', N'SAN JUAN DE BIGOTE', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200408', N'SANTA CATALINA DE MOSSA', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200409', N'SANTO DOMINGO', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200410', N'YAMANGO', N'2004')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200501', N'PAITA', N'2005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200502', N'AMOTAPE', N'2005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200503', N'ARENAL', N'2005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200504', N'COLAN', N'2005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200505', N'LA HUACA', N'2005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200506', N'TAMARINDO', N'2005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200507', N'VICHAYAL', N'2005')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200601', N'SULLANA', N'2006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200602', N'BELLAVISTA', N'2006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200603', N'IGNACIO ESCUDERO', N'2006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200604', N'LANCONES', N'2006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200605', N'MARCAVELICA', N'2006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200606', N'MIGUEL CHECA', N'2006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200607', N'QUERECOTILLO', N'2006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200608', N'SALITRAL', N'2006')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200701', N'PARIÑAS', N'2007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200702', N'EL ALTO', N'2007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200703', N'LA BREA', N'2007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200704', N'LOBITOS', N'2007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200705', N'LOS ORGANOS', N'2007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200706', N'MANCORA', N'2007')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200801', N'SECHURA', N'2008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200802', N'BELLAVISTA DE LA UNION', N'2008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200803', N'BERNAL', N'2008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200804', N'CRISTO NOS VALGA', N'2008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200805', N'VICE', N'2008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'200806', N'RINCONADA LLICUAR', N'2008')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210101', N'PUNO', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210102', N'ACORA', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210103', N'AMANTANI', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210104', N'ATUNCOLLA', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210105', N'CAPACHICA', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210106', N'CHUCUITO', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210107', N'COATA', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210108', N'HUATA', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210109', N'MAÑAZO', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210110', N'PAUCARCOLLA', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210111', N'PICHACANI', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210112', N'PLATERIA', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210113', N'SAN ANTONIO', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210114', N'TIQUILLACA', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210115', N'VILQUE', N'2101')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210201', N'AZANGARO', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210202', N'ACHAYA', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210203', N'ARAPA', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210204', N'ASILLO', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210205', N'CAMINACA', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210206', N'CHUPA', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210207', N'JOSE DOMINGO CHOQUEHUANCA', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210208', N'MUÑANI', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210209', N'POTONI', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210210', N'SAMAN', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210211', N'SAN ANTON', N'2102')
GO
print 'Processed 1600 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210212', N'SAN JOSE', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210213', N'SAN JUAN DE SALINAS', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210214', N'SANTIAGO DE PUPUJA', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210215', N'TIRAPATA', N'2102')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210301', N'MACUSANI', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210302', N'AJOYANI', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210303', N'AYAPATA', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210304', N'COASA', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210305', N'CORANI', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210306', N'CRUCERO', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210307', N'ITUATA', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210308', N'OLLACHEA', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210309', N'SAN GABAN', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210310', N'USICAYOS', N'2103')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210401', N'JULI', N'2104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210402', N'DESAGUADERO', N'2104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210403', N'HUACULLANI', N'2104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210404', N'KELLUYO', N'2104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210405', N'PISACOMA', N'2104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210406', N'POMATA', N'2104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210407', N'ZEPITA', N'2104')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210501', N'ILAVE', N'2105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210502', N'CAPAZO', N'2105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210503', N'PILCUYO', N'2105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210504', N'SANTA ROSA', N'2105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210505', N'CONDURIRI', N'2105')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210601', N'HUANCANE', N'2106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210602', N'COJATA', N'2106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210603', N'HUATASANI', N'2106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210604', N'INCHUPALLA', N'2106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210605', N'PUSI', N'2106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210606', N'ROSASPATA', N'2106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210607', N'TARACO', N'2106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210608', N'VILQUE CHICO', N'2106')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210701', N'LAMPA', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210702', N'CABANILLA', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210703', N'CALAPUJA', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210704', N'NICASIO', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210705', N'OCUVIRI', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210706', N'PALCA', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210707', N'PARATIA', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210708', N'PUCARA', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210709', N'SANTA LUCIA', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210710', N'VILAVILA', N'2107')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210801', N'AYAVIRI', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210802', N'ANTAUTA', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210803', N'CUPI', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210804', N'LLALLI', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210805', N'MACARI', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210806', N'NUÑOA', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210807', N'ORURILLO', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210808', N'SANTA ROSA', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210809', N'UMACHIRI', N'2108')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210901', N'MOHO', N'2109')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210902', N'CONIMA', N'2109')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210903', N'HUAYRAPATA', N'2109')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'210904', N'TILALI', N'2109')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211001', N'PUTINA', N'2110')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211002', N'ANANEA', N'2110')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211003', N'PEDRO VILCA APAZA', N'2110')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211004', N'QUILCAPUNCU', N'2110')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211005', N'SINA', N'2110')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211101', N'JULIACA', N'2111')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211102', N'CABANA', N'2111')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211103', N'CABANILLAS', N'2111')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211104', N'CARACOTO', N'2111')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211201', N'SANDIA', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211202', N'CUYOCUYO', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211203', N'LIMBANI', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211204', N'PATAMBUCO', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211205', N'PHARA', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211206', N'QUIACA', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211207', N'SAN JUAN DEL ORO', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211208', N'YANAHUAYA', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211209', N'ALTO INAMBARI', N'2112')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211301', N'YUNGUYO', N'2113')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211302', N'ANAPIA', N'2113')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211303', N'COPANI', N'2113')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211304', N'CUTURAPI', N'2113')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211305', N'OLLARAYA', N'2113')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211306', N'TINICACHI', N'2113')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'211307', N'UNICACHI', N'2113')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220101', N'MOYOBAMBA', N'2201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220102', N'CALZADA', N'2201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220103', N'HABANA', N'2201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220104', N'JEPELACIO', N'2201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220105', N'SORITOR', N'2201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220106', N'YANTALO', N'2201')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220201', N'BELLAVISTA', N'2202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220202', N'ALTO BIAVO', N'2202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220203', N'BAJO BIAVO', N'2202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220204', N'HUALLAGA', N'2202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220205', N'SAN PABLO', N'2202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220206', N'SAN RAFAEL', N'2202')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220301', N'SAN JOSE DE SISA', N'2203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220302', N'AGUA BLANCA', N'2203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220303', N'SAN MARTIN', N'2203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220304', N'SANTA ROSA', N'2203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220305', N'SHATOJA', N'2203')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220401', N'SAPOSOA', N'2204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220402', N'ALTO SAPOSOA', N'2204')
GO
print 'Processed 1700 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220403', N'EL ESLABON', N'2204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220404', N'PISCOYACU', N'2204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220405', N'SACANCHE', N'2204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220406', N'TINGO DE SAPOSOA', N'2204')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220501', N'LAMAS', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220502', N'ALONSO DE ALVARADO', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220503', N'BARRANQUITA', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220504', N'CAYNARACHI', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220505', N'CU&Ntilde;UMBUQUI', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220506', N'PINTO RECODO', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220507', N'RUMISAPA', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220508', N'SAN ROQUE DE CUMBAZA', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220509', N'SHANAO', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220510', N'TABALOSOS', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220511', N'ZAPATERO', N'2205')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220601', N'JUANJUI', N'2206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220602', N'CAMPANILLA', N'2206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220603', N'HUICUNGO', N'2206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220604', N'PACHIZA', N'2206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220605', N'PAJARILLO', N'2206')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220701', N'PICOTA', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220702', N'BUENOS AIRES', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220703', N'CASPISAPA', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220704', N'PILLUANA', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220705', N'PUCACACA', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220706', N'SAN CRISTOBAL', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220707', N'SAN HILARION', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220708', N'SHAMBOYACU', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220709', N'TINGO DE PONASA', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220710', N'TRES UNIDOS', N'2207')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220801', N'RIOJA', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220802', N'AWAJUN', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220803', N'ELIAS SOPLIN VARGAS', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220804', N'NUEVA CAJAMARCA', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220805', N'PARDO MIGUEL', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220806', N'POSIC', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220807', N'SAN FERNANDO', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220808', N'YORONGOS', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220809', N'YURACYACU', N'2208')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220901', N'TARAPOTO', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220902', N'ALBERTO LEVEAU', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220903', N'CACATACHI', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220904', N'CHAZUTA', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220905', N'CHIPURANA', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220906', N'EL PORVENIR', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220907', N'HUIMBAYOC', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220908', N'JUAN GUERRA', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220909', N'LA BANDA DE SHILCAYO', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220910', N'MORALES', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220911', N'PAPAPLAYA', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220912', N'SAN ANTONIO', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220913', N'SAUCE', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'220914', N'SHAPAJA', N'2209')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'221001', N'TOCACHE', N'2210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'221002', N'NUEVO PROGRESO', N'2210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'221003', N'POLVORA', N'2210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'221004', N'SHUNTE', N'2210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'221005', N'UCHIZA', N'2210')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230101', N'TACNA', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230102', N'ALTO DE LA ALIANZA', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230103', N'CALANA', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230104', N'CIUDAD NUEVA', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230105', N'INCLAN', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230106', N'PACHIA', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230107', N'PALCA', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230108', N'POCOLLAY', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230109', N'SAMA', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230110', N'CORONEL GREGORIO ALBARRACIN LANCHIPA', N'2301')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230201', N'CANDARAVE', N'2302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230202', N'CAIRANI', N'2302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230203', N'CAMILACA', N'2302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230204', N'CURIBAYA', N'2302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230205', N'HUANUARA', N'2302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230206', N'QUILAHUANI', N'2302')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230301', N'LOCUMBA', N'2303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230302', N'ILABAYA', N'2303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230303', N'ITE', N'2303')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230401', N'TARATA', N'2304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230402', N'CHUCATAMANI', N'2304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230403', N'ESTIQUE', N'2304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230404', N'ESTIQUE-PAMPA', N'2304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230405', N'SITAJARA', N'2304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230406', N'SUSAPAYA', N'2304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230407', N'TARUCACHI', N'2304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'230408', N'TICACO', N'2304')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240101', N'TUMBES', N'2401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240102', N'CORRALES', N'2401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240103', N'LA CRUZ', N'2401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240104', N'PAMPAS DE HOSPITAL', N'2401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240105', N'SAN JACINTO', N'2401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240106', N'SAN JUAN DE LA VIRGEN', N'2401')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240201', N'ZORRITOS', N'2402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240202', N'CASITAS', N'2402')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240301', N'ZARUMILLA', N'2403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240302', N'AGUAS VERDES', N'2403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240303', N'MATAPALO', N'2403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'240304', N'PAPAYAL', N'2403')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250101', N'CALLERIA', N'2501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250102', N'CAMPOVERDE', N'2501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250103', N'IPARIA', N'2501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250104', N'MASISEA', N'2501')
GO
print 'Processed 1800 total records'
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250105', N'YARINACOCHA', N'2501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250106', N'NUEVA REQUENA', N'2501')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250201', N'RAYMONDI', N'2502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250202', N'SEPAHUA', N'2502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250203', N'TAHUANIA', N'2502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250204', N'YURUA', N'2502')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250301', N'PADRE ABAD', N'2503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250302', N'IRAZOLA', N'2503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250303', N'CURIMANA', N'2503')
INSERT [dbo].[UbiDistrito] ([sIdDistrito], [sDesDistrito], [sIdProvincia]) VALUES (N'250401', N'PURUS', N'2504')
/****** Object:  StoredProcedure [dbo].[SP_SEL_LISTARPRODUCTOS_TIPO]    Script Date: 12/03/2021 23:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SEL_LISTARPRODUCTOS_TIPO]
(
@nTipo INT
)
AS
BEGIN
SELECT * FROM Productos 
WHERE nTipoProducto = @nTipo
END
GO
/****** Object:  Table [dbo].[PedidoDetalle]    Script Date: 12/03/2021 23:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoDetalle](
	[nIdPedidoDetalle] [int] IDENTITY(1,1) NOT NULL,
	[nIdPedidoCabecera] [int] NULL,
	[nSecuencia] [int] NULL,
	[nIdProducto] [int] NULL,
	[nCantidad] [int] NULL,
	[nPrecioUnitario] [decimal](18, 4) NULL,
	[nSubTotal] [decimal](18, 2) NULL,
	[nIGV] [decimal](18, 2) NULL,
	[nTotal] [decimal](18, 2) NULL,
	[dFechaCreacion] [datetime] NULL,
 CONSTRAINT [PK_PedidoDetalle] PRIMARY KEY CLUSTERED 
(
	[nIdPedidoDetalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PedidoDetalle] ON
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (2, 9, 1, 140, 1, CAST(30.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(0x0000ADE100AEA4EB AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (3, 9, 2, 141, 1, CAST(40.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(0x0000ADE100AEA850 AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (4, 10, 1, 140, 1, CAST(30.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(0x0000ADE100B2415A AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (5, 10, 2, 141, 1, CAST(40.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(0x0000ADE100B245EE AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (6, 11, 1, 140, 1, CAST(30.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(0x0000ADE100B2F712 AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (7, 11, 2, 141, 1, CAST(40.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(0x0000ADE100B2F896 AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (8, 11, 3, 150, 2, CAST(30.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(0x0000ADE100B30014 AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (9, 12, 1, 140, 1, CAST(30.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(0x0000ADE500A2DCF3 AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (10, 12, 2, 141, 1, CAST(40.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(0x0000ADE500A2DCF5 AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (11, 12, 3, 150, 2, CAST(30.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(0x0000ADE500A2DCF5 AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (12, 13, 1, 167, 1, CAST(30.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(0x0000ADF000F28EC6 AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (13, 13, 2, 170, 1, CAST(40.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(0x0000ADF000F28EDD AS DateTime))
INSERT [dbo].[PedidoDetalle] ([nIdPedidoDetalle], [nIdPedidoCabecera], [nSecuencia], [nIdProducto], [nCantidad], [nPrecioUnitario], [nSubTotal], [nIGV], [nTotal], [dFechaCreacion]) VALUES (14, 13, 3, 176, 2, CAST(30.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(0x0000ADF000F28EDD AS DateTime))
SET IDENTITY_INSERT [dbo].[PedidoDetalle] OFF
/****** Object:  Table [dbo].[Clientes]    Script Date: 12/03/2021 23:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[nIdCliente] [int] IDENTITY(1,1) NOT NULL,
	[sNombreCliente] [varchar](250) NULL,
	[sCodigoDocumento] [char](1) NULL,
	[sNumeroDocumento] [char](11) NULL,
	[sDireccionCliente] [varchar](250) NULL,
	[sIdDepartamento] [char](2) NULL,
	[sIdProvincia] [char](4) NULL,
	[sIdDistrito] [char](6) NULL,
	[sNumeroTelefono] [char](7) NULL,
	[sNumeroCelular] [char](9) NULL,
	[sEmail] [varchar](250) NULL,
	[sObservacion] [varchar](250) NULL,
	[sEstado] [char](1) NULL,
	[dFechaCreacion] [datetime] NULL,
	[dFechaUltimaActualiza] [datetime] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[nIdCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON
INSERT [dbo].[Clientes] ([nIdCliente], [sNombreCliente], [sCodigoDocumento], [sNumeroDocumento], [sDireccionCliente], [sIdDepartamento], [sIdProvincia], [sIdDistrito], [sNumeroTelefono], [sNumeroCelular], [sEmail], [sObservacion], [sEstado], [dFechaCreacion], [dFechaUltimaActualiza]) VALUES (2, N'OPERACIONES ELECTRICAS INDUSTRIALES S.A.C. - OPELECI S.A.C.', N'6', N'20600757718', N'ASOC. NIÑO JESUS 3RA. ETAPA, MZ.E, LT.7 - SANTA CLARA', N'15', N'1501', N'150103', N'3562483', N'999999999', N'ventas@opeleci.com.pe', N'', N'1', CAST(0x0000ADB300C648B9 AS DateTime), CAST(0x0000ADB300C648B9 AS DateTime))
INSERT [dbo].[Clientes] ([nIdCliente], [sNombreCliente], [sCodigoDocumento], [sNumeroDocumento], [sDireccionCliente], [sIdDepartamento], [sIdProvincia], [sIdDistrito], [sNumeroTelefono], [sNumeroCelular], [sEmail], [sObservacion], [sEstado], [dFechaCreacion], [dFechaUltimaActualiza]) VALUES (3, N'JUAN CARLOS FIGUEROA A.', N'1', N'40132764   ', N'ASOC. NIÑO JESUS 3RA. ETAPA, MZ.E, LT.7, SANTA CLARA - ATE', N'15', N'1501', N'150103', N'3560203', N'986643209', N'juancarlos.fig1603@gmail.com', N'PRUEBA DE ACTUALIZAR', N'1', CAST(0x0000ADCF00000000 AS DateTime), CAST(0x0000ADD700000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Clientes] OFF
/****** Object:  Table [dbo].[ComprobanteCabecera]    Script Date: 12/03/2021 23:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComprobanteCabecera](
	[nIdComprobanteCabecera] [int] IDENTITY(1,1) NOT NULL,
	[sCodigoComprobante] [char](2) NULL,
	[sSerieComprobante] [char](4) NULL,
	[nNumeroComprobante] [int] NULL,
	[dFechaEmision] [date] NULL,
	[nIdPedidoCabecera] [int] NULL,
	[nIdCliente] [int] NULL,
	[nSubTotal] [decimal](18, 2) NULL,
	[nDsctoGlobal] [decimal](18, 2) NULL,
	[nValorVenta] [decimal](18, 2) NULL,
	[nIGV] [decimal](18, 2) NULL,
	[nTotal] [decimal](18, 2) NULL,
	[nPctjeDscto] [decimal](18, 2) NULL,
	[nPctjeIGV] [decimal](18, 2) NULL,
	[sEstado] [char](1) NULL,
	[dFechaCreacion] [datetime] NULL,
	[bEnvioSunat] [bit] NULL,
	[nIdUsuario] [int] NULL,
	[sObservaciones] [varchar](200) NULL,
 CONSTRAINT [PK_ComprobanteCabecera] PRIMARY KEY CLUSTERED 
(
	[nIdComprobanteCabecera] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ComprobanteCabecera] ON
INSERT [dbo].[ComprobanteCabecera] ([nIdComprobanteCabecera], [sCodigoComprobante], [sSerieComprobante], [nNumeroComprobante], [dFechaEmision], [nIdPedidoCabecera], [nIdCliente], [nSubTotal], [nDsctoGlobal], [nValorVenta], [nIGV], [nTotal], [nPctjeDscto], [nPctjeIGV], [sEstado], [dFechaCreacion], [bEnvioSunat], [nIdUsuario], [sObservaciones]) VALUES (2, N'01', N'F001', 4, CAST(0x4A430B00 AS Date), 12, 2, CAST(140.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), N'2', CAST(0x0000ADEF00B4355F AS DateTime), 0, 2, N'')
INSERT [dbo].[ComprobanteCabecera] ([nIdComprobanteCabecera], [sCodigoComprobante], [sSerieComprobante], [nNumeroComprobante], [dFechaEmision], [nIdPedidoCabecera], [nIdCliente], [nSubTotal], [nDsctoGlobal], [nValorVenta], [nIGV], [nTotal], [nPctjeDscto], [nPctjeIGV], [sEstado], [dFechaCreacion], [bEnvioSunat], [nIdUsuario], [sObservaciones]) VALUES (3, N'01', N'F001', 5, CAST(0x4B430B00 AS Date), 12, 3, CAST(140.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), N'2', CAST(0x0000ADF000986BD8 AS DateTime), 0, 2, N'')
INSERT [dbo].[ComprobanteCabecera] ([nIdComprobanteCabecera], [sCodigoComprobante], [sSerieComprobante], [nNumeroComprobante], [dFechaEmision], [nIdPedidoCabecera], [nIdCliente], [nSubTotal], [nDsctoGlobal], [nValorVenta], [nIGV], [nTotal], [nPctjeDscto], [nPctjeIGV], [sEstado], [dFechaCreacion], [bEnvioSunat], [nIdUsuario], [sObservaciones]) VALUES (8, N'01', N'F001', 6, CAST(0x4B430B00 AS Date), 12, 2, CAST(140.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), N'2', CAST(0x0000ADF000F0C649 AS DateTime), 0, 2, N'')
INSERT [dbo].[ComprobanteCabecera] ([nIdComprobanteCabecera], [sCodigoComprobante], [sSerieComprobante], [nNumeroComprobante], [dFechaEmision], [nIdPedidoCabecera], [nIdCliente], [nSubTotal], [nDsctoGlobal], [nValorVenta], [nIGV], [nTotal], [nPctjeDscto], [nPctjeIGV], [sEstado], [dFechaCreacion], [bEnvioSunat], [nIdUsuario], [sObservaciones]) VALUES (9, N'01', N'F001', 7, CAST(0x4B430B00 AS Date), 12, 2, CAST(140.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), N'2', CAST(0x0000ADF000F35945 AS DateTime), 0, 2, N'')
SET IDENTITY_INSERT [dbo].[ComprobanteCabecera] OFF
/****** Object:  Table [dbo].[ComprobanteDetalle]    Script Date: 12/03/2021 23:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComprobanteDetalle](
	[nIdComprobanteDetalle] [int] IDENTITY(1,1) NOT NULL,
	[nIdComprobanteCabecera] [int] NULL,
	[nSecuencia] [int] NULL,
	[nIdProducto] [int] NULL,
	[nPrecioUnitario] [decimal](18, 4) NULL,
	[nPrecioUnitarioIGV] [decimal](18, 4) NULL,
	[nSubTotal] [decimal](18, 2) NULL,
	[nIGV] [decimal](18, 2) NULL,
	[nTotal] [decimal](18, 2) NULL,
	[nPctjeIGV] [decimal](18, 2) NULL,
	[nCantidad] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ComprobanteDetalle] PRIMARY KEY CLUSTERED 
(
	[nIdComprobanteDetalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ComprobanteDetalle] ON
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (2, 2, 1, 140, CAST(30.0000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(30.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (3, 2, 2, 141, CAST(40.0000 AS Decimal(18, 4)), CAST(50.0000 AS Decimal(18, 4)), CAST(40.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (4, 2, 3, 150, CAST(30.0000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(60.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (5, 3, 1, 140, CAST(30.0000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(30.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (6, 3, 2, 141, CAST(40.0000 AS Decimal(18, 4)), CAST(50.0000 AS Decimal(18, 4)), CAST(40.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (7, 3, 3, 150, CAST(30.0000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(60.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (13, 9, 1, 158, CAST(30.0000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(30.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (14, 9, 2, 162, CAST(40.0000 AS Decimal(18, 4)), CAST(50.0000 AS Decimal(18, 4)), CAST(40.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[ComprobanteDetalle] ([nIdComprobanteDetalle], [nIdComprobanteCabecera], [nSecuencia], [nIdProducto], [nPrecioUnitario], [nPrecioUnitarioIGV], [nSubTotal], [nIGV], [nTotal], [nPctjeIGV], [nCantidad]) VALUES (15, 9, 3, 170, CAST(30.0000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), CAST(60.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ComprobanteDetalle] OFF
/****** Object:  ForeignKey [FK_Platos_TipoPlato]    Script Date: 12/03/2021 23:01:14 ******/
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Platos_TipoPlato] FOREIGN KEY([nTipoProducto])
REFERENCES [dbo].[TipoProducto] ([nTipoProducto])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Platos_TipoPlato]
GO
/****** Object:  ForeignKey [FK_PedidoCabecera_Estados]    Script Date: 12/03/2021 23:01:14 ******/
ALTER TABLE [dbo].[PedidoCabecera]  WITH CHECK ADD  CONSTRAINT [FK_PedidoCabecera_Estados] FOREIGN KEY([sEstado])
REFERENCES [dbo].[Estados] ([sEstado])
GO
ALTER TABLE [dbo].[PedidoCabecera] CHECK CONSTRAINT [FK_PedidoCabecera_Estados]
GO
/****** Object:  ForeignKey [FK_PedidoCabecera_Mesas]    Script Date: 12/03/2021 23:01:14 ******/
ALTER TABLE [dbo].[PedidoCabecera]  WITH CHECK ADD  CONSTRAINT [FK_PedidoCabecera_Mesas] FOREIGN KEY([nIdMesa])
REFERENCES [dbo].[Mesas] ([nIdMesa])
GO
ALTER TABLE [dbo].[PedidoCabecera] CHECK CONSTRAINT [FK_PedidoCabecera_Mesas]
GO
/****** Object:  ForeignKey [FK_Usuarios_Estados]    Script Date: 12/03/2021 23:01:14 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Estados] FOREIGN KEY([sEstado])
REFERENCES [dbo].[Estados] ([sEstado])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Estados]
GO
/****** Object:  ForeignKey [FK_Usuarios_TipoUsuario]    Script Date: 12/03/2021 23:01:14 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_TipoUsuario] FOREIGN KEY([sTipo])
REFERENCES [dbo].[TipoUsuario] ([sTipoUsuario])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_TipoUsuario]
GO
/****** Object:  ForeignKey [FK_UbiProvincia_UbiDepartamento]    Script Date: 12/03/2021 23:01:14 ******/
ALTER TABLE [dbo].[UbiProvincia]  WITH CHECK ADD  CONSTRAINT [FK_UbiProvincia_UbiDepartamento] FOREIGN KEY([sIdDepartamento])
REFERENCES [dbo].[UbiDepartamento] ([sIdDepartamento])
GO
ALTER TABLE [dbo].[UbiProvincia] CHECK CONSTRAINT [FK_UbiProvincia_UbiDepartamento]
GO
/****** Object:  ForeignKey [FK_UbiDistrito_UbiProvincia]    Script Date: 12/03/2021 23:01:14 ******/
ALTER TABLE [dbo].[UbiDistrito]  WITH CHECK ADD  CONSTRAINT [FK_UbiDistrito_UbiProvincia] FOREIGN KEY([sIdProvincia])
REFERENCES [dbo].[UbiProvincia] ([sIdProvincia])
GO
ALTER TABLE [dbo].[UbiDistrito] CHECK CONSTRAINT [FK_UbiDistrito_UbiProvincia]
GO
/****** Object:  ForeignKey [FK_PedidoDetalle_PedidoCabecera]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[PedidoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PedidoDetalle_PedidoCabecera] FOREIGN KEY([nIdPedidoCabecera])
REFERENCES [dbo].[PedidoCabecera] ([nIdPedidoCabecera])
GO
ALTER TABLE [dbo].[PedidoDetalle] CHECK CONSTRAINT [FK_PedidoDetalle_PedidoCabecera]
GO
/****** Object:  ForeignKey [FK_PedidoDetalle_Platos]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[PedidoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PedidoDetalle_Platos] FOREIGN KEY([nIdProducto])
REFERENCES [dbo].[Productos] ([nIdProducto])
GO
ALTER TABLE [dbo].[PedidoDetalle] CHECK CONSTRAINT [FK_PedidoDetalle_Platos]
GO
/****** Object:  ForeignKey [FK_Clientes_TipoDocumento]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_TipoDocumento] FOREIGN KEY([sCodigoDocumento])
REFERENCES [dbo].[TipoDocumento] ([sCodigoDocumento])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_TipoDocumento]
GO
/****** Object:  ForeignKey [FK_Clientes_UbiDepartamento]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_UbiDepartamento] FOREIGN KEY([sIdDepartamento])
REFERENCES [dbo].[UbiDepartamento] ([sIdDepartamento])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_UbiDepartamento]
GO
/****** Object:  ForeignKey [FK_Clientes_UbiDistrito]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_UbiDistrito] FOREIGN KEY([sIdDistrito])
REFERENCES [dbo].[UbiDistrito] ([sIdDistrito])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_UbiDistrito]
GO
/****** Object:  ForeignKey [FK_Clientes_UbiProvincia]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_UbiProvincia] FOREIGN KEY([sIdProvincia])
REFERENCES [dbo].[UbiProvincia] ([sIdProvincia])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_UbiProvincia]
GO
/****** Object:  ForeignKey [FK_ComprobanteCabecera_Clientes]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_Clientes] FOREIGN KEY([nIdCliente])
REFERENCES [dbo].[Clientes] ([nIdCliente])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_Clientes]
GO
/****** Object:  ForeignKey [FK_ComprobanteCabecera_Estados]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_Estados] FOREIGN KEY([sEstado])
REFERENCES [dbo].[Estados] ([sEstado])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_Estados]
GO
/****** Object:  ForeignKey [FK_ComprobanteCabecera_TipoComprobante]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_TipoComprobante] FOREIGN KEY([sCodigoComprobante])
REFERENCES [dbo].[TipoComprobante] ([sCodigoComprobante])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_TipoComprobante]
GO
/****** Object:  ForeignKey [FK_ComprobanteDetalle_ComprobanteCabecera]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[ComprobanteDetalle]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteDetalle_ComprobanteCabecera] FOREIGN KEY([nIdComprobanteCabecera])
REFERENCES [dbo].[ComprobanteCabecera] ([nIdComprobanteCabecera])
GO
ALTER TABLE [dbo].[ComprobanteDetalle] CHECK CONSTRAINT [FK_ComprobanteDetalle_ComprobanteCabecera]
GO
/****** Object:  ForeignKey [FK_ComprobanteDetalle_Platos]    Script Date: 12/03/2021 23:01:15 ******/
ALTER TABLE [dbo].[ComprobanteDetalle]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteDetalle_Platos] FOREIGN KEY([nIdProducto])
REFERENCES [dbo].[Productos] ([nIdProducto])
GO
ALTER TABLE [dbo].[ComprobanteDetalle] CHECK CONSTRAINT [FK_ComprobanteDetalle_Platos]
GO
