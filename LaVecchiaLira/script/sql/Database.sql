USE [master]
GO
/****** Object:  Database [LaVecchiaLira]    Script Date: 25/01/2024 08:28:28 ******/
CREATE DATABASE [LaVecchiaLira]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LaVecchiaLira', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LaVecchiaLira.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LaVecchiaLira_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LaVecchiaLira_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LaVecchiaLira] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LaVecchiaLira].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LaVecchiaLira] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET ARITHABORT OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LaVecchiaLira] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LaVecchiaLira] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LaVecchiaLira] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LaVecchiaLira] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LaVecchiaLira] SET  MULTI_USER 
GO
ALTER DATABASE [LaVecchiaLira] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LaVecchiaLira] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LaVecchiaLira] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LaVecchiaLira] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LaVecchiaLira] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LaVecchiaLira] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LaVecchiaLira] SET QUERY_STORE = OFF
GO
USE [LaVecchiaLira]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[SubTitle] [varchar](50) NULL,
	[Description1] [varchar](max) NULL,
	[Description2] [varchar](max) NULL,
	[Option1] [varchar](50) NULL,
	[Option2] [varchar](50) NULL,
	[Option3] [varchar](50) NULL,
	[Option4] [varchar](50) NULL,
	[Option5] [varchar](50) NULL,
	[Image] [image] NULL,
	[Visible] [bit] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [image] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Visible] [bit] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Ingredients] [nvarchar](max) NULL,
	[Price] [nchar](10) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sections]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Section] [nvarchar](50) NULL,
	[Repeater_Id] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specials]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Navigation] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Text] [varchar](max) NULL,
	[Image] [image] NULL,
	[Visible] [bit] NULL,
 CONSTRAINT [PK_Spacials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AuthenticationUser]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AuthenticationUser]
	@User varchar(50),
	@Password varchar(50)
AS
	SET NOCOUNT ON
BEGIN

	SELECT * FROM Users WHERE Username=@User AND Password = @Password

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEvent]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEvent]
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Events WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteFood]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteFood]
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Menu WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteImage]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteImage]
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Images WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSpecials]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteSpecials]
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Specials WHERE Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[EditFood]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EditFood]

	@Id int,
	@Name varchar(50),
	@Category varchar(50),
	@Ingredients varchar(MAX),
	@Price varchar(10)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Menu
	SET Name = @Name, Category= @Category, Ingredients = @Ingredients, Price = @Price
	WHERE Id = @Id
    
END
GO
/****** Object:  StoredProcedure [dbo].[EditImage]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EditImage]

	@Id int,
	@Description varchar(50),
	@Visible bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Images
	SET Description = @Description, Visible= @Visible
	WHERE Id = @Id
    
END
GO
/****** Object:  StoredProcedure [dbo].[EditSpecials]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EditSpecials]

	@Id int,
	@Navigation varchar(50),
	@Title varchar(50),
	@Description varchar(MAX),
	@Text varchar(MAX),
	@Visible bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Specials
	SET Navigation = @Navigation, Title = @Title, Description = @Description, 
	Text = @Text, Visible= @Visible
	WHERE Id = @Id
    
END
GO
/****** Object:  StoredProcedure [dbo].[GetEvents]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEvents]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Events
	ORDER BY Id Desc

END
GO
/****** Object:  StoredProcedure [dbo].[GetEventsByVisibility]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEventsByVisibility]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Events
	WHERE Visible = 1
	ORDER BY Id Desc

END
GO
/****** Object:  StoredProcedure [dbo].[GetImages]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetImages]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Images
	ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetImagesByVisibility]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetImagesByVisibility]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Images
	WHERE Visible = 1
	ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetMenu]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMenu]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Menu
END
GO
/****** Object:  StoredProcedure [dbo].[GetMenuByCategory]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMenuByCategory]
	-- Add the parameters for the stored procedure here
	@Category varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
	SELECT * FROM Menu WHERE Category = @Category
END
GO
/****** Object:  StoredProcedure [dbo].[GetSections]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSections]

AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Sections
END
GO
/****** Object:  StoredProcedure [dbo].[GetSpecials]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetSpecials]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Specials
	ORDER BY Id Desc

END
GO
/****** Object:  StoredProcedure [dbo].[GetSpecialsByVisibility]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetSpecialsByVisibility]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Specials
	WHERE Visible = 1
	ORDER BY Id Desc

END
GO
/****** Object:  StoredProcedure [dbo].[SaveEvent]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveEvent]

	@Image image,
	@Title varchar(50),
	@SubTitle varchar(50),
	@Description1 varchar(MAX),
	@Description2 varchar(MAX),
	@Option1 varchar(50),
	@Option2 varchar(50),
	@Option3 varchar(50),
	@Option4 varchar(50),
	@Option5 varchar(50),
	@Visible bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO Events(Title, SubTitle, Description1 ,Description2, Option1, Option2, Option3, Option4, Option5, Image, Visible)
	VALUES (@Title, @SubTitle, @Description1, @Description2, @Option1, @Option2, @Option3, @Option4, @Option5, @Image, @Visible)
END
GO
/****** Object:  StoredProcedure [dbo].[SaveFood]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveFood]

	@Name varchar(50),
	@Category varchar(50),
	@Price varchar(10),
	@Ingredients varchar(MAX)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO Menu (Name, Category, Ingredients, Price)
	VALUES (@Name, @Category, @Ingredients, @Price)
END
GO
/****** Object:  StoredProcedure [dbo].[SaveImage]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveImage]

	@Image image,
	@Name varchar(50),
	@Description varchar(50),
	@Visible bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO Images (Image, Name, Description, Visible)
	VALUES (@Image, @Name, @Description, @Visible)
END
GO
/****** Object:  StoredProcedure [dbo].[SaveSpecials]    Script Date: 25/01/2024 08:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveSpecials]

	@Image image,
	@Navigation varchar(50),
	@Title varchar(50),
	@Description varchar(MAX),
	@Text varchar(MAX),
	@Visible bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO Specials(Navigation, Title, Description, Text, Image, Visible)
	VALUES (@Navigation, @Title, @Description, @Text, @Image, @Visible)
END
GO
USE [master]
GO
ALTER DATABASE [LaVecchiaLira] SET  READ_WRITE 
GO
