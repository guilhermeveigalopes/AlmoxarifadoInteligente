USE [master]
GO
/****** Object:  Database [APIAlmoxarifado]    Script Date: 15/03/2024 18:17:23 ******/
CREATE DATABASE [APIAlmoxarifado]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'APIAlmoxarifado', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SENAI\MSSQL\DATA\APIAlmoxarifado.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'APIAlmoxarifado_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SENAI\MSSQL\DATA\APIAlmoxarifado_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [APIAlmoxarifado] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [APIAlmoxarifado].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [APIAlmoxarifado] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET ARITHABORT OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [APIAlmoxarifado] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [APIAlmoxarifado] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [APIAlmoxarifado] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET  ENABLE_BROKER 
GO
ALTER DATABASE [APIAlmoxarifado] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [APIAlmoxarifado] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [APIAlmoxarifado] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [APIAlmoxarifado] SET  MULTI_USER 
GO
ALTER DATABASE [APIAlmoxarifado] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [APIAlmoxarifado] SET DB_CHAINING OFF 
GO
ALTER DATABASE [APIAlmoxarifado] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [APIAlmoxarifado] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [APIAlmoxarifado] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [APIAlmoxarifado] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [APIAlmoxarifado] SET QUERY_STORE = OFF
GO
USE [APIAlmoxarifado]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/03/2024 18:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 15/03/2024 18:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emails](
	[idEmail] [int] IDENTITY(1,1) NOT NULL,
	[EmailUsuario] [nvarchar](255) NULL,
 CONSTRAINT [PK_Emails] PRIMARY KEY CLUSTERED 
(
	[idEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GestaoProdutos]    Script Date: 15/03/2024 18:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GestaoProdutos](
	[idProduto] [int] NOT NULL,
	[descricao] [varchar](255) NULL,
	[preco] [decimal](10, 2) NULL,
	[estoqueAtual] [int] NULL,
	[estoqueMinimo] [int] NULL,
	[estado] [varchar](255) NOT NULL,
 CONSTRAINT [PK__GestaoPr__5EEDF7C3DE3C8957] PRIMARY KEY CLUSTERED 
(
	[idProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGROBO]    Script Date: 15/03/2024 18:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGROBO](
	[iDlOG] [int] IDENTITY(1,1) NOT NULL,
	[CodigoRobo] [nvarchar](max) NOT NULL,
	[UsuarioRobo] [nvarchar](max) NOT NULL,
	[DateLog] [datetime2](7) NOT NULL,
	[Etapa] [nvarchar](max) NOT NULL,
	[InformacaoLog] [nvarchar](max) NOT NULL,
	[IdProdutoAPI] [int] NOT NULL,
 CONSTRAINT [PK_LOGROBO] PRIMARY KEY CLUSTERED 
(
	[iDlOG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240315180753_finish', N'6.0.27')
GO
SET IDENTITY_INSERT [dbo].[Emails] ON 

INSERT [dbo].[Emails] ([idEmail], [EmailUsuario]) VALUES (1, N'aislanteste@outlook.com')
SET IDENTITY_INSERT [dbo].[Emails] OFF
GO
INSERT [dbo].[GestaoProdutos] ([idProduto], [descricao], [preco], [estoqueAtual], [estoqueMinimo], [estado]) VALUES (1, N'caneca', CAST(89.99 AS Decimal(10, 2)), 5315, 31531, N'executado')
INSERT [dbo].[GestaoProdutos] ([idProduto], [descricao], [preco], [estoqueAtual], [estoqueMinimo], [estado]) VALUES (5445, N'camisa', NULL, 532532, 523, N'executado')
INSERT [dbo].[GestaoProdutos] ([idProduto], [descricao], [preco], [estoqueAtual], [estoqueMinimo], [estado]) VALUES (653635, N'camisetas', CAST(39.00 AS Decimal(10, 2)), 53152, 532523, N'executado')
GO
SET IDENTITY_INSERT [dbo].[LOGROBO] ON 

INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (1, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T15:21:00.8690304' AS DateTime2), N'Consultar Dados - Verificação', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (2, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T15:21:18.4314581' AS DateTime2), N'Consultar Dados - Magazine Luiza', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (3, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T15:21:21.2006653' AS DateTime2), N'Consultar Dados - Mercado Livre', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (4, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T15:21:21.2149729' AS DateTime2), N'Menor Valor - Magazine Luiza', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (5, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T16:50:54.4658988' AS DateTime2), N'Consultar Dados - Magazine Luiza', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (6, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T16:50:56.2965649' AS DateTime2), N'Consultar Dados - Mercado Livre', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (7, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T16:51:00.0584492' AS DateTime2), N'Envio - Email', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (8, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T16:55:06.5578378' AS DateTime2), N'Consultar Dados - Magazine Luiza', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (9, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T16:55:09.2722249' AS DateTime2), N'Consultar Dados - Mercado Livre', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (10, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T16:55:12.8485476' AS DateTime2), N'Envio - Email', N'Sucesso', 1)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (11, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:40:29.7603808' AS DateTime2), N'Consultar Dados - Verificação', N'Sucesso', 5445)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (12, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:40:36.6347641' AS DateTime2), N'Consultar Dados - Mercado Livre', N'Sucesso', 5445)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (13, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:52:29.4633782' AS DateTime2), N'Consultar Dados - Verificação', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (14, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:52:36.4576116' AS DateTime2), N'Consultar Dados - Mercado Livre', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (15, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:55:24.8396191' AS DateTime2), N'Consultar Dados - Verificação', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (16, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:55:28.0200744' AS DateTime2), N'Consultar Dados - Magazine Luiza', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (17, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:55:30.4193522' AS DateTime2), N'Consultar Dados - Mercado Livre', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (18, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:57:30.8921313' AS DateTime2), N'Consultar Dados - Verificação', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (19, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:59:36.8075562' AS DateTime2), N'Consultar Dados - Verificação', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (20, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:59:50.2142602' AS DateTime2), N'Consultar Dados - Magazine Luiza', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (21, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:59:52.3335878' AS DateTime2), N'Consultar Dados - Mercado Livre', N'Sucesso', 653635)
INSERT [dbo].[LOGROBO] ([iDlOG], [CodigoRobo], [UsuarioRobo], [DateLog], [Etapa], [InformacaoLog], [IdProdutoAPI]) VALUES (22, N'AO24', N'AislanOliveira', CAST(N'2024-03-15T17:59:52.3432302' AS DateTime2), N'Menor Valor - Mercado Livre', N'Sucesso', 653635)
SET IDENTITY_INSERT [dbo].[LOGROBO] OFF
GO
USE [master]
GO
ALTER DATABASE [APIAlmoxarifado] SET  READ_WRITE 
GO
