USE [master]
GO
/****** Object:  Database [EXERCICIO 1 - UNION]    Script Date: 07/08/2021 22:29:59 ******/
CREATE DATABASE [EXERCICIO 1 - UNION]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EXERCICIO 1 - UNION', FILENAME = N'D:\Nova pasta\MSSQL15.SQLEXPRESS\MSSQL\DATA\EXERCICIO 1 - UNION.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EXERCICIO 1 - UNION_log', FILENAME = N'D:\Nova pasta\MSSQL15.SQLEXPRESS\MSSQL\DATA\EXERCICIO 1 - UNION_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EXERCICIO 1 - UNION].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET ARITHABORT OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET  MULTI_USER 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET QUERY_STORE = OFF
GO
ALTER DATABASE [EXERCICIO 1 - UNION] SET  READ_WRITE 
GO
