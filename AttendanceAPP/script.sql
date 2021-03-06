USE [master]
GO
/****** Object:  Database [AttendanceDB]    Script Date: 9/16/2015 7:03:16 PM ******/
CREATE DATABASE [AttendanceDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AttendanceDB', FILENAME = N'F:\AttendanceAPP\AttendanceDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AttendanceDB_log', FILENAME = N'F:\AttendanceAPP\AttendanceDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AttendanceDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AttendanceDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AttendanceDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AttendanceDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AttendanceDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AttendanceDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AttendanceDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AttendanceDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AttendanceDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AttendanceDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AttendanceDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AttendanceDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AttendanceDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AttendanceDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AttendanceDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AttendanceDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AttendanceDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AttendanceDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AttendanceDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AttendanceDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AttendanceDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AttendanceDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AttendanceDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AttendanceDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AttendanceDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AttendanceDB] SET RECOVERY FULL 
GO
ALTER DATABASE [AttendanceDB] SET  MULTI_USER 
GO
ALTER DATABASE [AttendanceDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AttendanceDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AttendanceDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AttendanceDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AttendanceDB', N'ON'
GO
USE [AttendanceDB]
GO
/****** Object:  Table [dbo].[tbl_attendance]    Script Date: 9/16/2015 7:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_attendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_tbl_attendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_stuff]    Script Date: 9/16/2015 7:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_stuff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[fullname] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_stuff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_attendance] ON 

INSERT [dbo].[tbl_attendance] ([Id], [userId], [date]) VALUES (4, 5, CAST(0x703A0B00 AS Date))
INSERT [dbo].[tbl_attendance] ([Id], [userId], [date]) VALUES (5, 6, CAST(0x703A0B00 AS Date))
INSERT [dbo].[tbl_attendance] ([Id], [userId], [date]) VALUES (6, 5, CAST(0x143A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[tbl_attendance] OFF
SET IDENTITY_INSERT [dbo].[tbl_stuff] ON 

INSERT [dbo].[tbl_stuff] ([Id], [username], [password], [fullname]) VALUES (4, N'delowar', N'delowar123', N'Delowar Hosen')
INSERT [dbo].[tbl_stuff] ([Id], [username], [password], [fullname]) VALUES (5, N'omi', N'omi123', N'Khairul Omi')
INSERT [dbo].[tbl_stuff] ([Id], [username], [password], [fullname]) VALUES (6, N'shibly', N'shibly123', N'Musfiqur Shibly')
SET IDENTITY_INSERT [dbo].[tbl_stuff] OFF
USE [master]
GO
ALTER DATABASE [AttendanceDB] SET  READ_WRITE 
GO
