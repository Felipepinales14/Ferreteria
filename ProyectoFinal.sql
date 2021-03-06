USE [master]
GO
/****** Juan Pinales Matricula 17-EIIN-1-174 SECCION 0541 ******/
CREATE DATABASE [Ferreteria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ferreteria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Ferreteria.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ferreteria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Ferreteria_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ferreteria] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ferreteria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ferreteria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ferreteria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ferreteria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ferreteria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ferreteria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ferreteria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ferreteria] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Ferreteria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ferreteria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ferreteria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ferreteria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ferreteria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ferreteria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ferreteria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ferreteria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ferreteria] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ferreteria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ferreteria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ferreteria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ferreteria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ferreteria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ferreteria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ferreteria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ferreteria] SET RECOVERY FULL 
GO
ALTER DATABASE [Ferreteria] SET  MULTI_USER 
GO
ALTER DATABASE [Ferreteria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ferreteria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ferreteria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ferreteria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ferreteria', N'ON'
GO
USE [Ferreteria]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/08/2018 21:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Direccion] [nvarchar](100) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 04/08/2018 21:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Marca] [nvarchar](100) NULL,
	[Precio] [int](100) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 04/08/2018 21:20:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Codigo venta] [int] IDENTITY(1,1) NOT NULL,
	[[Codigo vendedor] [int] NULL,
	[Cedula del cliente] [int] NULL,
	[Valor de venta] [int] NULL,
	[Fecha de venta] [int] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[Codigo venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (1, N'Juan Jose', N'nigua ', 809645132)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (2, N'Yulissa', N'haina ', 809645120)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (3, N'Pedro Arias ', N'barrio union', 809654123)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (4, N'Junior matos ', N'Barrio cespedes', 829753645)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (5, N'Saul Aadames', N'Villa consepcion', 849623005)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (6, N'Julia Soto', N'Barrio invivienda', 849654152)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (7, N'Carlos Abreu', N'Centro nigua ', 849654230)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (8, N'Marlenys Soriano', N'Zona itabo ', 829620123)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (9, N'Ana Sena', N'Barrio concepcion', 849789456)
INSERT [dbo].[Cliente] ([Codigo], [Nombre], [Direccion], [Telefono]) VALUES (10, N'Junior Saul', N'Distrito nigua ', 849963852)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (1, N'Martillo', N'Trupper', N'1250')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (2, N'Plano', N'Stanley', N'750')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (3, N'Estria ', N'Stanley', N'750')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (4, N'Llaves allen', N'Trupper', N'1890')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (5, N'Alicate mecanico', N'Miller', N'2580')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (6, N'Alicante presion ', N'wurth', N'3200')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (7, N'Corta frio', N'Trupper', N'2350')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (8, N'Juego de llaves', N'Stanley', N'4570')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (9, N'Pinza ', N'Farcom', N'1300')
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Marca], [Precio]) VALUES (10, N'Llave torque ', N'Fluke', N'5690')
SET IDENTITY_INSERT [dbo].[Producto] OFF
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (1, 1001, 1, 1250, 120218)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (2, 1002, 2, 750, 230218)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (3, 1003, 3, 750, 250218)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (4, 1004, 4, 1890, 270218)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (5, 1005, 5, 2580, 290218)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (6, 1006, 6, 3200, 110318)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (7, 1007, 7, 2350, 120318)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (8, 1008, 8, 4570, 150318)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (9, 1009, 9, 1300, 180318)
INSERT [dbo].[Venta] ([Codigo venta], [[Codigo vendedor], [Cedula del cliente], [Valor de venta], [Fecha de venta]) VALUES (10, 1010, 10, 5690, 200318)
SET IDENTITY_INSERT [dbo].[Venta] OFF
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Producto] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Producto] ([Codigo])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Producto]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Producto] FOREIGN KEY([Codigo venta])
REFERENCES [dbo].[Producto] ([Codigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Producto]
GO
USE [master]
GO
ALTER DATABASE [Ferreteria] SET  READ_WRITE 
GO
