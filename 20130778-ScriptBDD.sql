USE [master]
GO
/****** Object:  Database [tiendaVinilos]    Script Date: 13/03/2022 07:45:23 p. m. ******/
CREATE DATABASE [tiendaVinilos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tiendaVinilos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\tiendaVinilos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tiendaVinilos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\tiendaVinilos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [tiendaVinilos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tiendaVinilos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tiendaVinilos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tiendaVinilos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tiendaVinilos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tiendaVinilos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tiendaVinilos] SET ARITHABORT OFF 
GO
ALTER DATABASE [tiendaVinilos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tiendaVinilos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tiendaVinilos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tiendaVinilos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tiendaVinilos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tiendaVinilos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tiendaVinilos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tiendaVinilos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tiendaVinilos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tiendaVinilos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tiendaVinilos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tiendaVinilos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tiendaVinilos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tiendaVinilos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tiendaVinilos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tiendaVinilos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tiendaVinilos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tiendaVinilos] SET RECOVERY FULL 
GO
ALTER DATABASE [tiendaVinilos] SET  MULTI_USER 
GO
ALTER DATABASE [tiendaVinilos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tiendaVinilos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tiendaVinilos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tiendaVinilos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tiendaVinilos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tiendaVinilos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'tiendaVinilos', N'ON'
GO
ALTER DATABASE [tiendaVinilos] SET QUERY_STORE = OFF
GO
USE [tiendaVinilos]
GO
/****** Object:  Table [dbo].[vinilos]    Script Date: 13/03/2022 07:45:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vinilos](
	[idVinilo] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](10) NOT NULL,
	[tamano] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[artista] [varchar](50) NOT NULL,
	[precio] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[disquera] [varchar](50) NOT NULL,
	[activo] [int] NOT NULL,
	[sencilloLider] [varchar](50) NULL,
	[sencilloLider_enc] [varbinary](256) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [tiendaVinilos] SET  READ_WRITE 
GO
