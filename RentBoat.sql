USE [master]
GO
/****** Object:  Database [RentBoat]    Script Date: 19-06-2020 16:41:54 ******/
CREATE DATABASE [RentBoat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RentBoat', FILENAME = N'd:\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\RentBoat.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RentBoat_log', FILENAME = N'd:\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\RentBoat_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RentBoat] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RentBoat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RentBoat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RentBoat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RentBoat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RentBoat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RentBoat] SET ARITHABORT OFF 
GO
ALTER DATABASE [RentBoat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RentBoat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RentBoat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RentBoat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RentBoat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RentBoat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RentBoat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RentBoat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RentBoat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RentBoat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RentBoat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RentBoat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RentBoat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RentBoat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RentBoat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RentBoat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RentBoat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RentBoat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RentBoat] SET  MULTI_USER 
GO
ALTER DATABASE [RentBoat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RentBoat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RentBoat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RentBoat] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [RentBoat]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 19-06-2020 16:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CId] [int] IDENTITY(1,1) NOT NULL,
	[CName] [varchar](50) NULL,
	[Mobile] [numeric](10, 0) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 19-06-2020 16:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[BId] [int] IDENTITY(1,1) NOT NULL,
	[BNo] [varchar](50) NULL,
	[Availability] [varchar](50) NULL,
	[BImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[BId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rent]    Script Date: 19-06-2020 16:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BId] [nvarchar](50) NULL,
	[CId] [int] NULL,
	[Rent] [int] NULL,
	[StartDate] [date] NULL,
	[Enddate] [date] NULL,
 CONSTRAINT [PK_Rent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Return]    Script Date: 19-06-2020 16:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Return](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BId] [nvarchar](50) NULL,
	[CId] [int] NULL,
	[Returned] [nvarchar](50) NULL,
	[ReturnDate] [date] NULL,
 CONSTRAINT [PK_Returned] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CId], [CName], [Mobile]) VALUES (1, N'Priyanka', CAST(1111111111 AS Numeric(10, 0)))
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Register] ON 

INSERT [dbo].[Register] ([BId], [BNo], [Availability], [BImage]) VALUES (1, N'B2', N'No', N'~/Images/2.jpg')
INSERT [dbo].[Register] ([BId], [BNo], [Availability], [BImage]) VALUES (2, N'B1', N'Yes', N'~/Images/1.jpg')
INSERT [dbo].[Register] ([BId], [BNo], [Availability], [BImage]) VALUES (3, N'B3', N'Yes', N'~/Images/3.jpg')
SET IDENTITY_INSERT [dbo].[Register] OFF
SET IDENTITY_INSERT [dbo].[Rent] ON 

INSERT [dbo].[Rent] ([Id], [BId], [CId], [Rent], [StartDate], [Enddate]) VALUES (1, N'B1', 1, 100, CAST(N'2020-06-18' AS Date), CAST(N'2020-06-19' AS Date))
INSERT [dbo].[Rent] ([Id], [BId], [CId], [Rent], [StartDate], [Enddate]) VALUES (2, N'B3', 1, 100, CAST(N'2020-06-18' AS Date), CAST(N'2020-06-19' AS Date))
INSERT [dbo].[Rent] ([Id], [BId], [CId], [Rent], [StartDate], [Enddate]) VALUES (3, N'B3', 1, 100, CAST(N'2020-06-18' AS Date), CAST(N'2020-06-19' AS Date))
INSERT [dbo].[Rent] ([Id], [BId], [CId], [Rent], [StartDate], [Enddate]) VALUES (4, N'B1', 1, 100, CAST(N'2020-06-19' AS Date), CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Rent] ([Id], [BId], [CId], [Rent], [StartDate], [Enddate]) VALUES (5, N'B3', 1, 100, CAST(N'2020-06-19' AS Date), CAST(N'2020-06-19' AS Date))
SET IDENTITY_INSERT [dbo].[Rent] OFF
SET IDENTITY_INSERT [dbo].[Return] ON 

INSERT [dbo].[Return] ([Id], [BId], [CId], [Returned], [ReturnDate]) VALUES (1, N'B2', 1, N'Yes', CAST(N'2020-06-18' AS Date))
INSERT [dbo].[Return] ([Id], [BId], [CId], [Returned], [ReturnDate]) VALUES (2, N'B2', 1, N'Yes', CAST(N'2020-06-20' AS Date))
SET IDENTITY_INSERT [dbo].[Return] OFF
USE [master]
GO
ALTER DATABASE [RentBoat] SET  READ_WRITE 
GO
