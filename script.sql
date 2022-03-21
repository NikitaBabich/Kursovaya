USE [master]
GO
/****** Object:  Database [Police]    Script Date: 21.03.2022 12:39:45 ******/
CREATE DATABASE [Police]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Police', FILENAME = N'C:\Users\ta12415\Police.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Police_log', FILENAME = N'C:\Users\ta12415\Police_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Police] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Police].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Police] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Police] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Police] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Police] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Police] SET ARITHABORT OFF 
GO
ALTER DATABASE [Police] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Police] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Police] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Police] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Police] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Police] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Police] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Police] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Police] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Police] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Police] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Police] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Police] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Police] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Police] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Police] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Police] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Police] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Police] SET  MULTI_USER 
GO
ALTER DATABASE [Police] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Police] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Police] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Police] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Police] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Police] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Police] SET QUERY_STORE = OFF
GO
USE [Police]
GO
/****** Object:  Table [dbo].[Accuseds]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accuseds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Дата_рождения] [date] NOT NULL,
	[Пол] [int] NOT NULL,
	[Город] [nvarchar](50) NULL,
 CONSTRAINT [PK_Преступники] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cases]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Номер_дела] [int] NOT NULL,
	[Id_судьи] [int] NOT NULL,
	[Id_пострадавшего] [int] NOT NULL,
	[Id_обвиняемого] [int] NOT NULL,
	[Номер_статьи] [int] NOT NULL,
	[Дата_открытия_дела] [date] NOT NULL,
	[Дата_закрытия_дела] [date] NOT NULL,
 CONSTRAINT [PK_Дела] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employes]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Возраст] [int] NOT NULL,
	[Пол] [int] NOT NULL,
	[Стаж] [int] NOT NULL,
	[Код_подразделения] [int] NOT NULL,
	[Код_должности] [int] NULL,
	[Код_звания] [int] NOT NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeVictim]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeVictim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_пострадавшнго] [int] NULL,
	[Id_сотрудника] [int] NULL,
 CONSTRAINT [PK_EmployeVictim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Пол] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK_Пол] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Judges]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Judges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Стаж] [int] NOT NULL,
 CONSTRAINT [PK_Судьи] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Должность] [nvarchar](50) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subsections]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subsections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Подразделение] [nvarchar](100) NULL,
 CONSTRAINT [PK_Подразделения] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Звание] [nvarchar](50) NOT NULL,
	[Надбавка] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Звания] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Victims]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Victims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NULL,
	[Дата_рождения] [date] NOT NULL,
	[Пол] [int] NOT NULL,
	[Город] [nvarchar](50) NULL,
 CONSTRAINT [PK_Пострадавшие] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accuseds] ON 

INSERT [dbo].[Accuseds] ([Id], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Пол], [Город]) VALUES (4, N'Богатырев', N'Дмитрий', N'Сергеевич', CAST(N'1999-08-23' AS Date), 1, N'Абакан')
SET IDENTITY_INSERT [dbo].[Accuseds] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Id], [Пол]) VALUES (1, N'Муж')
INSERT [dbo].[Gender] ([Id], [Пол]) VALUES (2, N'Жен')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Judges] ON 

INSERT [dbo].[Judges] ([Id], [Фамилия], [Имя], [Отчество], [Стаж]) VALUES (1, N'Орлов', N'Даниэль', N'Тихонович', 9)
INSERT [dbo].[Judges] ([Id], [Фамилия], [Имя], [Отчество], [Стаж]) VALUES (2, N'Ефимова', N'Ксения', N'Елисеевна', 5)
INSERT [dbo].[Judges] ([Id], [Фамилия], [Имя], [Отчество], [Стаж]) VALUES (3, N'Сафронов', N'Кирил', N'Михайлович', 2)
INSERT [dbo].[Judges] ([Id], [Фамилия], [Имя], [Отчество], [Стаж]) VALUES (4, N'Синицин', N'Вячислав', N'Сергеевич', 7)
SET IDENTITY_INSERT [dbo].[Judges] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id], [Должность]) VALUES (1, N'Следователь')
INSERT [dbo].[Post] ([Id], [Должность]) VALUES (2, N'Дознаватель')
INSERT [dbo].[Post] ([Id], [Должность]) VALUES (3, N'Оперуполномоченные')
INSERT [dbo].[Post] ([Id], [Должность]) VALUES (4, N'Участковый')
INSERT [dbo].[Post] ([Id], [Должность]) VALUES (5, N'Конвоир')
INSERT [dbo].[Post] ([Id], [Должность]) VALUES (6, N'Инспектор патрульно-постовой службы')
INSERT [dbo].[Post] ([Id], [Должность]) VALUES (7, N'Сотрудник миграционной службы')
INSERT [dbo].[Post] ([Id], [Должность]) VALUES (8, N'Оружейный мастер')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Subsections] ON 

INSERT [dbo].[Subsections] ([Id], [Подразделение]) VALUES (1, N'Патрульно-постовая служба')
INSERT [dbo].[Subsections] ([Id], [Подразделение]) VALUES (2, N'Управления Вневедомственной охраны')
INSERT [dbo].[Subsections] ([Id], [Подразделение]) VALUES (3, N'Отряд милиции особого назначения')
INSERT [dbo].[Subsections] ([Id], [Подразделение]) VALUES (4, N'Государственная автоинспекция')
INSERT [dbo].[Subsections] ([Id], [Подразделение]) VALUES (5, N'Федеральная Служба исполнения наказаний')
INSERT [dbo].[Subsections] ([Id], [Подразделение]) VALUES (6, N'Специальный Отряд быстрого реагирования')
INSERT [dbo].[Subsections] ([Id], [Подразделение]) VALUES (7, N'Федеральная Служба по контролю за оборотом наркотиков')
INSERT [dbo].[Subsections] ([Id], [Подразделение]) VALUES (8, N'Главное Управление против экономических преступлений и коррупции')
SET IDENTITY_INSERT [dbo].[Subsections] OFF
GO
SET IDENTITY_INSERT [dbo].[Title] ON 

INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (1, N'Майор', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (2, N'Подполковник', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (3, N'Полковник', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (4, N'Младший лейтенант', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (5, N'Лейтенант', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (6, N'Старший лейтенант', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (7, N'Капитан', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (8, N'Младший сержант', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (9, N'Сержант', NULL)
INSERT [dbo].[Title] ([Id], [Звание], [Надбавка]) VALUES (10, N'старший сержант', NULL)
SET IDENTITY_INSERT [dbo].[Title] OFF
GO
SET IDENTITY_INSERT [dbo].[Victims] ON 

INSERT [dbo].[Victims] ([Id], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Пол], [Город]) VALUES (2, N'Начев', N'Тимофей', N'Лукич', CAST(N'1997-09-20' AS Date), 1, N'Черногорск')
INSERT [dbo].[Victims] ([Id], [Фамилия], [Имя], [Отчество], [Дата_рождения], [Пол], [Город]) VALUES (3, N'???????', N'?????', N'????????????', CAST(N'1997-09-20' AS Date), 1, N'??????')
SET IDENTITY_INSERT [dbo].[Victims] OFF
GO
ALTER TABLE [dbo].[Accuseds]  WITH CHECK ADD  CONSTRAINT [FK_Accuseds_Gender] FOREIGN KEY([Пол])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Accuseds] CHECK CONSTRAINT [FK_Accuseds_Gender]
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD  CONSTRAINT [FK_Cases_Accuseds1] FOREIGN KEY([Id_обвиняемого])
REFERENCES [dbo].[Accuseds] ([Id])
GO
ALTER TABLE [dbo].[Cases] CHECK CONSTRAINT [FK_Cases_Accuseds1]
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD  CONSTRAINT [FK_Cases_EmployeVictim1] FOREIGN KEY([Id_пострадавшего])
REFERENCES [dbo].[EmployeVictim] ([Id])
GO
ALTER TABLE [dbo].[Cases] CHECK CONSTRAINT [FK_Cases_EmployeVictim1]
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD  CONSTRAINT [FK_Cases_Judges] FOREIGN KEY([Id_судьи])
REFERENCES [dbo].[Judges] ([Id])
GO
ALTER TABLE [dbo].[Cases] CHECK CONSTRAINT [FK_Cases_Judges]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_Gender] FOREIGN KEY([Пол])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_Gender]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_Post1] FOREIGN KEY([Код_должности])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_Post1]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_Subsections] FOREIGN KEY([Код_подразделения])
REFERENCES [dbo].[Subsections] ([Id])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_Subsections]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_Title] FOREIGN KEY([Код_звания])
REFERENCES [dbo].[Title] ([Id])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_Title]
GO
ALTER TABLE [dbo].[EmployeVictim]  WITH CHECK ADD  CONSTRAINT [FK_EmployeVictim_Employes1] FOREIGN KEY([Id_сотрудника])
REFERENCES [dbo].[Employes] ([Id])
GO
ALTER TABLE [dbo].[EmployeVictim] CHECK CONSTRAINT [FK_EmployeVictim_Employes1]
GO
ALTER TABLE [dbo].[EmployeVictim]  WITH CHECK ADD  CONSTRAINT [FK_EmployeVictim_Victims] FOREIGN KEY([Id_пострадавшнго])
REFERENCES [dbo].[Victims] ([Id])
GO
ALTER TABLE [dbo].[EmployeVictim] CHECK CONSTRAINT [FK_EmployeVictim_Victims]
GO
ALTER TABLE [dbo].[Victims]  WITH CHECK ADD  CONSTRAINT [FK_Victims_Gender] FOREIGN KEY([Пол])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Victims] CHECK CONSTRAINT [FK_Victims_Gender]
GO
/****** Object:  StoredProcedure [dbo].[AddJudge]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddJudge]

@Surname nvarchar(50), @Name nvarchar(50), @Patronymic nvarchar(50), @Experience int
AS
    INSERT INTO Судьи(Фамилия, Имя, Отчество, Стаж)
    VALUES (@Surname, @Name, @Patronymic, @Experience)
  
    SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[AddVictim]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddVictim]

@Surname nvarchar(50), @Name nvarchar(50), @Patronymic nvarchar(50), @Date date, @Sex int, @City nvarchar(50)

AS

INSERT INTO Пострадавшие (Фамилия, Имя, Отчество, Дата_рождения, Пол, Город)
VALUES (@Surname, @Name, @Patronymic, @Date, @Sex,	@City)

GO
/****** Object:  StoredProcedure [dbo].[DeleteJudge]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteJudge]
@Id int
AS
    delete from Судьи Where ID = @Id
GO
/****** Object:  StoredProcedure [dbo].[EditJudge]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditJudge]
@id int,
@Surname nvarchar(50), 
@Name nvarchar(50), 
@Patronymic nvarchar(50), 
@Experience int
AS
    update Судьи set Фамилия = @Surname, Имя=@Name, Отчество=@Patronymic, Стаж=@Experience where ID = @id;
GO
/****** Object:  StoredProcedure [dbo].[EditVictim]    Script Date: 21.03.2022 12:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditVictim]
@Id int,
@Surname nvarchar(50), 
@Name nvarchar(50), 
@Patronymic nvarchar(50), 
@Date date, 
@Sex int,	
@City nvarchar(50)
AS
    update Пострадавшие set Фамилия = @Surname, Имя=@Name, Отчество=@Patronymic, Дата_рождения = @Date, Пол=@Sex, Город=@City where ID = @id;
GO
USE [master]
GO
ALTER DATABASE [Police] SET  READ_WRITE 
GO
