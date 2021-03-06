USE [master]
GO
/****** Object:  Database [PRJ301-SonNT5-Assignment]    Script Date: 6/30/2022 8:55:44 AM ******/
CREATE DATABASE [PRJ301-SonNT5-Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301-SonNT5-Assignment', FILENAME = N'E:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301-SonNT5-Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301-SonNT5-Assignment_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301-SonNT5-Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301-SonNT5-Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET QUERY_STORE = OFF
GO
USE [PRJ301-SonNT5-Assignment]
GO
/****** Object:  Table [dbo].[account]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[username] [nvarchar](150) NOT NULL,
	[password] [nvarchar](150) NOT NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attended]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attended](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[s_id] [nvarchar](150) NOT NULL,
	[check] [date] NOT NULL,
	[slots] [int] NOT NULL,
	[status] [nvarchar](150) NOT NULL,
	[id_sche] [int] NOT NULL,
 CONSTRAINT [PK_attended] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[c_id] [nvarchar](150) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class_member]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class_member](
	[c_id] [nvarchar](150) NOT NULL,
	[s_id] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_class_member] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC,
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NOT NULL,
	[role_name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[t_id] [nvarchar](150) NOT NULL,
	[c_id] [nvarchar](150) NOT NULL,
	[sj_id] [nvarchar](150) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
 CONSTRAINT [PK_schedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[s_id] [nvarchar](150) NOT NULL,
	[full_name] [nvarchar](150) NOT NULL,
	[gender] [nvarchar](10) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[dob] [date] NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject](
	[sj_id] [nvarchar](150) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_subject] PRIMARY KEY CLUSTERED 
(
	[sj_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 6/30/2022 8:55:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[t_id] [nvarchar](150) NOT NULL,
	[full_name] [nvarchar](150) NOT NULL,
	[gender] [nvarchar](10) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[dob] [date] NOT NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[t_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'hailt', N'123', 1)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE130025', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE141292', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE141413', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE150055', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE150237', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE150248', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE150490', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE150533', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE150652', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE150852', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE150861', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE151061', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'HE160632', N'123', 2)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'huongnv', N'123', 1)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'ngocnt', N'123', 1)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'quangtq', N'123', 1)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'sonnt', N'123', 1)
INSERT [dbo].[account] ([username], [password], [role]) VALUES (N'tuanvm', N'123', 1)
GO
SET IDENTITY_INSERT [dbo].[attended] ON 

INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (1, N'HE150861', CAST(N'2022-05-09' AS Date), 1, N'Not Yet', 1)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (2, N'HE150861', CAST(N'2022-05-10' AS Date), 2, N'Not Yet', 3)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (6, N'HE150861', CAST(N'2022-05-09' AS Date), 3, N'Not Yet', 6)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (7, N'HE150861', CAST(N'2022-05-10' AS Date), 3, N'Not Yet', 12)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (8, N'HE150861', CAST(N'2022-05-09' AS Date), 2, N'Not Yet', 8)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (10, N'HE150861', CAST(N'2022-05-11' AS Date), 1, N'Not Yet', 1)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (11, N'HE150861', CAST(N'2022-05-11' AS Date), 2, N'Not Yet', 8)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (12, N'HE150861', CAST(N'2022-05-11' AS Date), 3, N'Not Yet', 6)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (13, N'HE150861', CAST(N'2022-05-12' AS Date), 2, N'Not Yet', 3)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (14, N'HE150861', CAST(N'2022-05-12' AS Date), 3, N'Not Yet', 12)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (15, N'HE150861', CAST(N'2022-05-13' AS Date), 1, N'Not Yet', 1)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (16, N'HE150861', CAST(N'2022-05-13' AS Date), 2, N'Not Yet', 8)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (17, N'HE150861', CAST(N'2022-05-13' AS Date), 3, N'Not Yet', 6)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (18, N'HE150861', CAST(N'2022-05-14' AS Date), 2, N'Not Yet', 3)
INSERT [dbo].[attended] ([id], [s_id], [check], [slots], [status], [id_sche]) VALUES (19, N'HE150861', CAST(N'2022-05-14' AS Date), 3, N'Not Yet', 12)
SET IDENTITY_INSERT [dbo].[attended] OFF
GO
INSERT [dbo].[class] ([c_id], [name]) VALUES (N'SE1624', N'SE1624')
INSERT [dbo].[class] ([c_id], [name]) VALUES (N'SE1625', N'SE1625')
INSERT [dbo].[class] ([c_id], [name]) VALUES (N'SE1626', N'SE1626')
INSERT [dbo].[class] ([c_id], [name]) VALUES (N'SE1627', N'SE1627')
GO
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE130025')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE141292')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE141413')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE150055')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE150237')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE150248')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE150490')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE150533')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE150652')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE150852')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE150861')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE151061')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1624', N'HE160632')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE130025')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE141292')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE141413')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE150055')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE150237')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE150248')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE150490')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE150533')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE150652')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE150852')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE150861')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE151061')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1625', N'HE160632')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE130025')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE141292')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE141413')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE150055')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE150237')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE150248')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE150490')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE150533')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE150652')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE150852')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE150861')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE151061')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1626', N'HE160632')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE130025')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE141292')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE141413')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE150055')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE150237')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE150248')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE150490')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE150533')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE150652')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE150852')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE150861')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE151061')
INSERT [dbo].[class_member] ([c_id], [s_id]) VALUES (N'SE1627', N'HE160632')
GO
INSERT [dbo].[roles] ([id], [role_name]) VALUES (1, N'Teacher')
INSERT [dbo].[roles] ([id], [role_name]) VALUES (2, N'Student')
GO
SET IDENTITY_INSERT [dbo].[schedule] ON 

INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (1, N'hailt', N'SE1624', N'LAB211', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (2, N'huongnv', N'SE1625', N'PRF192', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (3, N'ngocnt', N'SE1624', N'JPD123', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (4, N'ngocnt', N'SE1627', N'JPD123', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (5, N'quangtq', N'SE1626', N'PRJ301', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (6, N'sonnt', N'SE1624', N'PRJ301', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (7, N'tuanvm', N'SE1627', N'LAB211', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (8, N'huongnv', N'SE1624', N'MAS291', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (9, N'tuanvm', N'SE1625', N'LAB211', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (10, N'sonnt', N'SE1627', N'PRJ301', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (11, N'hailt', N'SE1625', N'PRF192', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
INSERT [dbo].[schedule] ([id], [t_id], [c_id], [sj_id], [start_date], [end_date]) VALUES (12, N'quangtq', N'SE1624', N'PRF192', CAST(N'2022-05-09' AS Date), CAST(N'2022-07-15' AS Date))
SET IDENTITY_INSERT [dbo].[schedule] OFF
GO
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE130025', N'Nguyễn Xuân Hải', N'Male', N'Hà Nội', CAST(N'1997-09-03' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE141292', N'Phạm Thị Hải Yến', N'Female', N'Hà Nội', CAST(N'2000-04-01' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE141413', N'Trần Minh Quân', N'Male', N'HCM', CAST(N'2001-09-18' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE150055', N'Bùi Kiến Quốc', N'Male', N'Hải Phòng', CAST(N'2001-05-02' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE150237', N'Vũ Thanh Tùng', N'Male', N'Đà Nẵng', CAST(N'2002-09-01' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE150248', N'Phan Trung Kiên', N'Male', N'Nam Định', CAST(N'2001-03-05' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE150490', N'Lê Khả Thành', N'Male', N'Hà Nội', CAST(N'2001-08-09' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE150533', N'Nguyễn Đình Hải', N'Male', N'HCM', CAST(N'2001-05-09' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE150652', N'Tống Sỹ Nhật', N'Male', N'Nam Định', CAST(N'2001-03-01' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE150852', N'Hoàng Đức Toản', N'Male', N'Hà Nội', CAST(N'2001-05-09' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE150861', N'Nguyễn Trường Thành', N'Male', N'Hà Nội', CAST(N'2001-04-17' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE151061', N'Đỗ Đức Việt', N'Male', N'Hà Nội', CAST(N'2001-03-26' AS Date))
INSERT [dbo].[student] ([s_id], [full_name], [gender], [address], [dob]) VALUES (N'HE160632', N'Lưu Minh Hương', N'Female', N'Hà Nội', CAST(N'2002-07-02' AS Date))
GO
INSERT [dbo].[subject] ([sj_id], [name]) VALUES (N'JPD123', N'	Elementary Japanese 1-A1.2')
INSERT [dbo].[subject] ([sj_id], [name]) VALUES (N'LAB211', N'	OOP with Java Lab')
INSERT [dbo].[subject] ([sj_id], [name]) VALUES (N'MAS291', N'Statistics and Probability')
INSERT [dbo].[subject] ([sj_id], [name]) VALUES (N'PRF192', N'	Programming Fundamentals')
INSERT [dbo].[subject] ([sj_id], [name]) VALUES (N'PRJ301', N'	Java Web Application Development')
GO
INSERT [dbo].[teacher] ([t_id], [full_name], [gender], [email], [address], [dob]) VALUES (N'hailt', N'HảiLT', N'Male', N'hailt@gmail.com', N'Hải Phòng', CAST(N'1984-05-15' AS Date))
INSERT [dbo].[teacher] ([t_id], [full_name], [gender], [email], [address], [dob]) VALUES (N'huongnv', N'HươngNV', N'Female', N'huongnv@gmail.com', N'HCM', CAST(N'1987-05-09' AS Date))
INSERT [dbo].[teacher] ([t_id], [full_name], [gender], [email], [address], [dob]) VALUES (N'ngocnt', N'NgọcNT', N'Female', N'ngocnt@gmail.com', N'Đà Nẵng', CAST(N'1994-08-09' AS Date))
INSERT [dbo].[teacher] ([t_id], [full_name], [gender], [email], [address], [dob]) VALUES (N'quangtq', N'QuảngTQ', N'Male', N'quangtq@gmail.com', N'Hà Nội', CAST(N'1983-09-09' AS Date))
INSERT [dbo].[teacher] ([t_id], [full_name], [gender], [email], [address], [dob]) VALUES (N'sonnt', N'SơnNT', N'Male', N'sonnt@gmail.com', N'Hà Nội', CAST(N'1975-04-20' AS Date))
INSERT [dbo].[teacher] ([t_id], [full_name], [gender], [email], [address], [dob]) VALUES (N'tuanvm', N'TuấnVM', N'Male', N'tuanvm@gmail.com', N'Hà Nội', CAST(N'1983-03-05' AS Date))
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK_account_Roles] FOREIGN KEY([role])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK_account_Roles]
GO
ALTER TABLE [dbo].[attended]  WITH CHECK ADD  CONSTRAINT [FK_attended_schedule1] FOREIGN KEY([id_sche])
REFERENCES [dbo].[schedule] ([id])
GO
ALTER TABLE [dbo].[attended] CHECK CONSTRAINT [FK_attended_schedule1]
GO
ALTER TABLE [dbo].[attended]  WITH CHECK ADD  CONSTRAINT [FK_attended_student1] FOREIGN KEY([s_id])
REFERENCES [dbo].[student] ([s_id])
GO
ALTER TABLE [dbo].[attended] CHECK CONSTRAINT [FK_attended_student1]
GO
ALTER TABLE [dbo].[class_member]  WITH CHECK ADD  CONSTRAINT [FK_class_member_class] FOREIGN KEY([c_id])
REFERENCES [dbo].[class] ([c_id])
GO
ALTER TABLE [dbo].[class_member] CHECK CONSTRAINT [FK_class_member_class]
GO
ALTER TABLE [dbo].[class_member]  WITH CHECK ADD  CONSTRAINT [FK_class_member_student] FOREIGN KEY([s_id])
REFERENCES [dbo].[student] ([s_id])
GO
ALTER TABLE [dbo].[class_member] CHECK CONSTRAINT [FK_class_member_student]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_class] FOREIGN KEY([c_id])
REFERENCES [dbo].[class] ([c_id])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_class]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_subject] FOREIGN KEY([sj_id])
REFERENCES [dbo].[subject] ([sj_id])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_subject]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_teacher] FOREIGN KEY([t_id])
REFERENCES [dbo].[teacher] ([t_id])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_teacher]
GO
USE [master]
GO
ALTER DATABASE [PRJ301-SonNT5-Assignment] SET  READ_WRITE 
GO
