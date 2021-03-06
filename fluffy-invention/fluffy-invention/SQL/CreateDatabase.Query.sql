﻿/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4206)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2016
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [master]
GO

/****** Object:  Database [fluffy-invention]    Script Date: 13/11/2017 22:10:24 ******/
CREATE DATABASE [fluffy-invention]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fluffy-invention.mdf', FILENAME = N'C:\git\Source\Repos\fluffy-invention\fluffy-invention\fluffy-invention\App_Data\fluffy-invention.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'fluffy-invention_log.ldf', FILENAME = N'C:\git\Source\Repos\fluffy-invention\fluffy-invention\fluffy-invention\App_Data\fluffy-invention_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [fluffy-invention] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fluffy-invention].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [fluffy-invention] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [fluffy-invention] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [fluffy-invention] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [fluffy-invention] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [fluffy-invention] SET ARITHABORT OFF 
GO

ALTER DATABASE [fluffy-invention] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [fluffy-invention] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [fluffy-invention] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [fluffy-invention] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [fluffy-invention] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [fluffy-invention] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [fluffy-invention] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [fluffy-invention] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [fluffy-invention] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [fluffy-invention] SET  ENABLE_BROKER 
GO

ALTER DATABASE [fluffy-invention] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [fluffy-invention] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [fluffy-invention] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [fluffy-invention] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [fluffy-invention] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [fluffy-invention] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [fluffy-invention] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [fluffy-invention] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [fluffy-invention] SET  MULTI_USER 
GO

ALTER DATABASE [fluffy-invention] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [fluffy-invention] SET DB_CHAINING OFF 
GO

ALTER DATABASE [fluffy-invention] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [fluffy-invention] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [fluffy-invention] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [fluffy-invention] SET QUERY_STORE = OFF
GO

USE [fluffy-invention]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [fluffy-invention] SET  READ_WRITE 
GO


