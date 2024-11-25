USE [master]
GO
/****** Object:  Database [KjppDB]    Script Date: 25/11/2024 15:32:22 ******/
CREATE DATABASE [KjppDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KjppDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KjppDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KjppDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KjppDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KjppDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KjppDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KjppDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KjppDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KjppDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KjppDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KjppDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [KjppDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KjppDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KjppDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KjppDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KjppDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KjppDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KjppDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KjppDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KjppDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KjppDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KjppDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KjppDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KjppDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KjppDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KjppDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KjppDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KjppDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KjppDB] SET RECOVERY FULL 
GO
ALTER DATABASE [KjppDB] SET  MULTI_USER 
GO
ALTER DATABASE [KjppDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KjppDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KjppDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KjppDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KjppDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KjppDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KjppDB', N'ON'
GO
ALTER DATABASE [KjppDB] SET QUERY_STORE = OFF
GO
USE [KjppDB]
GO
/****** Object:  Table [dbo].[LandValuations]    Script Date: 25/11/2024 15:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandValuations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LandArea] [float] NOT NULL,
	[MarketPricePerSquareMeter] [float] NOT NULL,
	[PremiumFactor] [float] NOT NULL,
	[DiscountFactor] [float] NOT NULL,
	[FinalValue] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LandValuations] ON 

INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (1, 250, 10000000, 10, 5, 2625000000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (2, 200, 3000000, 5, 5, 600000000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (4, 500, 300, 0, 0, 150000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (5, 1000, 100000, 10, 5, 105000000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (6, 100, 500000, 20, 5, 57500000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (7, 400, 5000000, 15, 0, 2300000000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (8, 250, 250000, 5, 0, 65625000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (9, 350, 150000, 0, 0, 52500000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (10, 2700, 380000, 10, 5, 1077300000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (11, 170, 450000, 15, 9, 81090000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (12, 230, 198000, 0, 0, 45540000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (13, 230, 220000, 30, 10, 60720000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (14, 200, 215000, 2, 1, 43430000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (15, 2000, 1000000, 1, 0, 2020000000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (16, 300, 1000, 0, 0, 300000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (17, 320, 200000, 5, 0, 67200000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (18, 10000, 10000, 10, 0, 110000000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (19, 500, 23000, 3, 1, 11730000)
INSERT [dbo].[LandValuations] ([Id], [LandArea], [MarketPricePerSquareMeter], [PremiumFactor], [DiscountFactor], [FinalValue]) VALUES (20, 222, 1200, 5, 0, 279720)
SET IDENTITY_INSERT [dbo].[LandValuations] OFF
GO
USE [master]
GO
ALTER DATABASE [KjppDB] SET  READ_WRITE 
GO
