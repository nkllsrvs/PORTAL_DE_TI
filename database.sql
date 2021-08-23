USE [DB_Portal_TI]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ACAO]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ACAO](
	[ID_ACAO] [int] IDENTITY(1,1) NOT NULL,
	[DS_ACAO] [varchar](100) NULL,
	[DS_ACTION] [varchar](30) NULL,
	[REMOVED] [bit] NULL,
 CONSTRAINT [PK__TB_ACAO__6E48DEFFC7C4A75D] PRIMARY KEY CLUSTERED 
(
	[ID_ACAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ACAO_CONTROLE]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ACAO_CONTROLE](
	[ID_ACAO] [int] NOT NULL,
	[ID_CONTROLE] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TB_ACAO_CONTROLE] PRIMARY KEY CLUSTERED 
(
	[ID_ACAO] ASC,
	[ID_CONTROLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ACESSOS]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ACESSOS](
	[ID_USUARIO] [int] NOT NULL,
	[DATA_HORA] [datetime] NOT NULL,
	[ID_CONTROLE] [int] NOT NULL,
	[ID_ACAO] [int] NOT NULL,
 CONSTRAINT [PK_TB_ACESSOS] PRIMARY KEY CLUSTERED 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_AVISOS]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_AVISOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AVISO] [varchar](30) NULL,
	[TOOLTIP] [varchar](150) NULL,
	[AVISO_DET] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_BANNER]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_BANNER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BANNER] [varchar](30) NULL,
	[TOOLTIP] [varchar](150) NULL,
	[CAMINHO_IMG] [varchar](150) NULL,
	[BANNER_DET] [text] NULL,
	[DATA_CADASTRO] [datetime] NULL,
	[LINK] [varchar](255) NULL,
	[REMOVED] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_BANNER4]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_BANNER4](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BANNER4] [varchar](30) NULL,
	[TOOLTIP] [varchar](150) NULL,
	[CAMINHO_IMG] [varchar](150) NULL,
	[BANNER4_DET] [text] NULL,
	[DATA_CADASTRO] [datetime] NULL,
	[LINK] [varchar](255) NULL,
	[REMOVED] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CONTROLE]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CONTROLE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DS_CONTROLLER] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TB_CONTROLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_FAQ]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_FAQ](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FAQ] [varchar](30) NULL,
	[TOOLTIP] [varchar](150) NULL,
	[CAMINHO_IMG] [varchar](30) NULL,
	[FAQ_DET] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_MENU]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MENU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PAI] [int] NULL,
	[NOME] [varchar](30) NULL,
	[TOOLTIP] [varchar](150) NULL,
	[LINK] [varchar](150) NULL,
	[ORDEM] [int] NOT NULL,
	[ICON] [varchar](50) NULL,
	[REMOVED] [bit] NULL,
	[ID_CONTROLE] [int] NULL,
	[EXIBIR] [bit] NOT NULL,
 CONSTRAINT [PK_TB_MENU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_NEWS]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_NEWS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [nvarchar](max) NULL,
	[RESENHA] [nvarchar](max) NULL,
	[CAMINHO_IMG] [nvarchar](max) NULL,
	[TEXTO] [nvarchar](max) NULL,
	[DATA_CADASTRO] [datetime] NULL,
	[REMOVED] [bit] NULL,
 CONSTRAINT [PK_TB_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PERFIL]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PERFIL](
	[ID_PERFIL] [int] IDENTITY(1,1) NOT NULL,
	[DS_PERFIL] [varchar](150) NULL,
	[REMOVED] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PERFIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PERFIL_ACAO]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PERFIL_ACAO](
	[ID_PERFIL_ACAO] [int] IDENTITY(1,1) NOT NULL,
	[ID_ACAO] [int] NOT NULL,
	[ID_PERFIL] [int] NOT NULL,
	[ID_MENU] [int] NOT NULL,
	[REMOVED] [bit] NULL,
 CONSTRAINT [PK__TB_PERFI__C557B32674101CA8] PRIMARY KEY CLUSTERED 
(
	[ID_PERFIL_ACAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PERFIL_USUARIO]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PERFIL_USUARIO](
	[ID_PERFIL_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[ID_USUARIO] [int] NULL,
	[ID_PERFIL] [int] NULL,
	[REMOVED] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PERFIL_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PROCESSOS]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PROCESSOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PROCESSO] [varchar](30) NULL,
	[TOOLTIP] [varchar](150) NULL,
	[PROCESSO_DET] [text] NULL,
	[DATA_CADASTRO] [datetime] NULL,
	[REMOVED] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TIPO_ACAO]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TIPO_ACAO](
	[ID_TIPO_ACAO] [int] IDENTITY(1,1) NOT NULL,
	[DS_TIPO_ACAO] [varchar](30) NULL,
	[ID_ACAO] [int] NULL,
	[REMOVED] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TIPO_ACAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_USUARIO]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_USUARIO](
	[ID_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](50) NULL,
	[NOME_COMPLETO] [varchar](150) NULL,
	[LOGIN] [varchar](50) NULL,
	[MATRICULA] [varchar](50) NULL,
	[EMAIL] [varchar](150) NULL,
	[REMOVED] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_USUARIO_ACAO]    Script Date: 8/19/2021 1:24:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_USUARIO_ACAO](
	[ID_USUARIO_ACAO] [int] IDENTITY(1,1) NOT NULL,
	[ID_ACAO] [int] NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[ID_MENU] [int] NOT NULL,
	[REMOVED] [bit] NULL,
 CONSTRAINT [PK_TB_USUARIO_ACAO] PRIMARY KEY CLUSTERED 
(
	[ID_USUARIO_ACAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210728151856_InitialCreate', N'2.1.14-servicing-32113')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210728152232_InitialCreate', N'2.1.14-servicing-32113')
GO
SET IDENTITY_INSERT [dbo].[TB_ACAO] ON 

INSERT [dbo].[TB_ACAO] ([ID_ACAO], [DS_ACAO], [DS_ACTION], [REMOVED]) VALUES (1, N'Exibir', N'Index', 0)
INSERT [dbo].[TB_ACAO] ([ID_ACAO], [DS_ACAO], [DS_ACTION], [REMOVED]) VALUES (2, N'Detalhes', N'Detail', 0)
INSERT [dbo].[TB_ACAO] ([ID_ACAO], [DS_ACAO], [DS_ACTION], [REMOVED]) VALUES (3, N'Criar', N'Create', 0)
INSERT [dbo].[TB_ACAO] ([ID_ACAO], [DS_ACAO], [DS_ACTION], [REMOVED]) VALUES (4, N'Deletar', N'Delete', 0)
INSERT [dbo].[TB_ACAO] ([ID_ACAO], [DS_ACAO], [DS_ACTION], [REMOVED]) VALUES (5, N'Editar', N'Edit', 0)
SET IDENTITY_INSERT [dbo].[TB_ACAO] OFF
GO
INSERT [dbo].[TB_ACAO_CONTROLE] ([ID_ACAO], [ID_CONTROLE]) VALUES (1, 1)
INSERT [dbo].[TB_ACAO_CONTROLE] ([ID_ACAO], [ID_CONTROLE]) VALUES (1, 2)
INSERT [dbo].[TB_ACAO_CONTROLE] ([ID_ACAO], [ID_CONTROLE]) VALUES (1, 3)
INSERT [dbo].[TB_ACAO_CONTROLE] ([ID_ACAO], [ID_CONTROLE]) VALUES (1, 4)
INSERT [dbo].[TB_ACAO_CONTROLE] ([ID_ACAO], [ID_CONTROLE]) VALUES (1, 5)
INSERT [dbo].[TB_ACAO_CONTROLE] ([ID_ACAO], [ID_CONTROLE]) VALUES (2, 2)
INSERT [dbo].[TB_ACAO_CONTROLE] ([ID_ACAO], [ID_CONTROLE]) VALUES (3, 2)
INSERT [dbo].[TB_ACAO_CONTROLE] ([ID_ACAO], [ID_CONTROLE]) VALUES (5, 5)
GO
SET IDENTITY_INSERT [dbo].[TB_BANNER] ON 

INSERT [dbo].[TB_BANNER] ([ID], [BANNER], [TOOLTIP], [CAMINHO_IMG], [BANNER_DET], [DATA_CADASTRO], [LINK], [REMOVED]) VALUES (3, N'Paisagem 2sasdsads ', N'Banner teste 2', N'/samples/painel-paisagem-g-frete-gratis-decoracao-de-festa.jpg', N'Banner 2', CAST(N'2020-07-06T13:23:44.000' AS DateTime), N'/banner/3', 0)
INSERT [dbo].[TB_BANNER] ([ID], [BANNER], [TOOLTIP], [CAMINHO_IMG], [BANNER_DET], [DATA_CADASTRO], [LINK], [REMOVED]) VALUES (2, N'Paisagem', N'Banner teste', N'/samples/painel-paisagem-g-frete-gratis-decoracao-de-festa.jpg', N'Banner 1', CAST(N'2020-07-06T13:23:44.000' AS DateTime), N'/banner/2', 0)
INSERT [dbo].[TB_BANNER] ([ID], [BANNER], [TOOLTIP], [CAMINHO_IMG], [BANNER_DET], [DATA_CADASTRO], [LINK], [REMOVED]) VALUES (4, N'Paisagem 3', NULL, N'/samples/painel-paisagem-g-frete-gratis-decoracao-de-festa.jpg', N'Banner 3', CAST(N'2020-07-06T13:23:44.000' AS DateTime), N'/banner/4', 0)
SET IDENTITY_INSERT [dbo].[TB_BANNER] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_BANNER4] ON 

INSERT [dbo].[TB_BANNER4] ([ID], [BANNER4], [TOOLTIP], [CAMINHO_IMG], [BANNER4_DET], [DATA_CADASTRO], [LINK], [REMOVED]) VALUES (1, N'Card1', N'teste', N'/samples/card01.png', N'Card1', CAST(N'2020-07-06T13:23:44.000' AS DateTime), N'/highlight/1', 0)
INSERT [dbo].[TB_BANNER4] ([ID], [BANNER4], [TOOLTIP], [CAMINHO_IMG], [BANNER4_DET], [DATA_CADASTRO], [LINK], [REMOVED]) VALUES (2, N'Card2', N'teste', N'/samples/card02.png', N'Card2', CAST(N'2020-07-06T13:23:44.000' AS DateTime), N'/highlight/2', 0)
INSERT [dbo].[TB_BANNER4] ([ID], [BANNER4], [TOOLTIP], [CAMINHO_IMG], [BANNER4_DET], [DATA_CADASTRO], [LINK], [REMOVED]) VALUES (3, N'Card3', N'teste', N'/samples/card03.png', N'Card3', CAST(N'2020-07-06T13:23:44.000' AS DateTime), N'/highlight/3', 0)
INSERT [dbo].[TB_BANNER4] ([ID], [BANNER4], [TOOLTIP], [CAMINHO_IMG], [BANNER4_DET], [DATA_CADASTRO], [LINK], [REMOVED]) VALUES (4, N'Card4', N'teste', N'/samples/card04.png', N'Card4', CAST(N'2020-07-06T13:23:44.000' AS DateTime), N'/highlight/4', 0)
SET IDENTITY_INSERT [dbo].[TB_BANNER4] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_CONTROLE] ON 

INSERT [dbo].[TB_CONTROLE] ([ID], [DS_CONTROLLER]) VALUES (1, N'PortalDeTI')
INSERT [dbo].[TB_CONTROLE] ([ID], [DS_CONTROLLER]) VALUES (2, N'News')
INSERT [dbo].[TB_CONTROLE] ([ID], [DS_CONTROLLER]) VALUES (3, N'Banner')
INSERT [dbo].[TB_CONTROLE] ([ID], [DS_CONTROLLER]) VALUES (4, N'Configuration')
INSERT [dbo].[TB_CONTROLE] ([ID], [DS_CONTROLLER]) VALUES (5, N'Permissions')
SET IDENTITY_INSERT [dbo].[TB_CONTROLE] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_MENU] ON 

INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (1, NULL, N'Home', N'Home', N'https://localhost:5001', 1, N'fas fa-home', 0, 1, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (2, NULL, N'News', N'News', N'https://localhost:5001/news', 2, N'fas fa-home', 0, 2, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (3, NULL, N'News Manager V', N'News Manager V', N'https://localhost:5001/detalhesnews', 1, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (4, 3, N'Novo', N'Novo', N'https://localhost:5001/detalhes', 1, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (5, 3, N'Editar', N'Editar', N'https://localhost:5001/detalhes', 2, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (6, 3, N'Configurações', N'Configurações', N'https://localhost:5001/detalhes', 3, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (7, 3, N'Pesquisar', N'Pesquisar', N'https://localhost:5001/detalhes', 2, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (8, NULL, N'Processos', N'Processos', N'https://localhost:5001/detalhes', 3, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (9, NULL, N'Capacitação', N'Capacitação', N'https://localhost:5001/detalhes', 4, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (10, NULL, N'Artefatos', N'Artefatos', N'https://localhost:5001/detalhes', 5, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (11, NULL, N'Dashboards', N'Dashboards', N'https://localhost:5001/detalhes', 6, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (12, NULL, N'TI + Simples', N'TI + Simples', N'https://localhost:5001/detalhes', 7, N'fas fa-home', 0, NULL, 1)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (17, NULL, N'Banner', N'Banner', N'https://localhost:5001/', 8, N'fas fa-home', 0, 3, 0)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (19, NULL, N'Configuration', N'Configuration', N'https://localhost:5001/configuration', 9, N'fas fa-cogs', 0, 4, 0)
INSERT [dbo].[TB_MENU] ([ID], [ID_PAI], [NOME], [TOOLTIP], [LINK], [ORDEM], [ICON], [REMOVED], [ID_CONTROLE], [EXIBIR]) VALUES (21, NULL, N'Permissions', N'Permissions', N'https://localhost:5001/', 10, N'fas fa-cogs', 0, 5, 0)
SET IDENTITY_INSERT [dbo].[TB_MENU] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_NEWS] ON 

INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (1, N'Notícia 01', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-11-11T13:23:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (2, N'Notícia 02', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'3999-07-06T13:23:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (3, N'Notícia 03', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'1999-07-06T13:24:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (4, N'Notícia 04', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:25:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (5, N'Notícia 05', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:26:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (6, N'Notícia 06', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:27:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (7, N'Notícia 07', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:28:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (8, N'Notícia 08', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:29:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (9, N'Notícia 09', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:30:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (10, N'Notícia 10', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:31:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (11, N'Notícia 11', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:32:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (12, N'Notícia 12', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:33:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (13, N'Notícia 13', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:34:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (14, N'Notícia 14', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:35:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (15, N'Notícia 15', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:36:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (16, N'Notícia 16', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:37:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (17, N'Notícia 17', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:38:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (18, N'Notícia 18', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:39:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (19, N'Notícia 19', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:40:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (20, N'Notícia 20', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:41:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (21, N'Notícia 21', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:42:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (22, N'Notícia 22', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:43:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (23, N'Notícia 23', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:44:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (24, N'Notícia 24', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'1996-07-24T13:45:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (25, N'Notícia 25', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:46:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (26, N'Notícia 26', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:47:44.000' AS DateTime), 0)
INSERT [dbo].[TB_NEWS] ([ID], [NOME], [RESENHA], [CAMINHO_IMG], [TEXTO], [DATA_CADASTRO], [REMOVED]) VALUES (27, N'Notícia 27', N'Veja como foi', N'/samples/news01.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', CAST(N'2020-07-06T13:48:44.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[TB_NEWS] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_PERFIL] ON 

INSERT [dbo].[TB_PERFIL] ([ID_PERFIL], [DS_PERFIL], [REMOVED]) VALUES (1, N'Administrador', 0)
SET IDENTITY_INSERT [dbo].[TB_PERFIL] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_PERFIL_ACAO] ON 

INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (1, 1, 1, 1, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (2, 1, 1, 2, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (3, 1, 1, 19, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (4, 2, 1, 17, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (5, 1, 1, 21, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (6, 5, 1, 21, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (7, 1, 1, 1, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (8, 1, 1, 2, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (9, 2, 1, 2, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (10, 1, 1, 19, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (11, 1, 1, 21, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (12, 5, 1, 21, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (13, 1, 1, 1, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (14, 1, 1, 2, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (15, 2, 1, 2, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (16, 1, 1, 17, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (17, 1, 1, 19, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (18, 1, 1, 21, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (19, 5, 1, 21, 0)
INSERT [dbo].[TB_PERFIL_ACAO] ([ID_PERFIL_ACAO], [ID_ACAO], [ID_PERFIL], [ID_MENU], [REMOVED]) VALUES (20, 3, 1, 2, 0)
SET IDENTITY_INSERT [dbo].[TB_PERFIL_ACAO] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_PERFIL_USUARIO] ON 

INSERT [dbo].[TB_PERFIL_USUARIO] ([ID_PERFIL_USUARIO], [ID_USUARIO], [ID_PERFIL], [REMOVED]) VALUES (1, 1, 1, 0)
INSERT [dbo].[TB_PERFIL_USUARIO] ([ID_PERFIL_USUARIO], [ID_USUARIO], [ID_PERFIL], [REMOVED]) VALUES (2, 3, 1, 0)
INSERT [dbo].[TB_PERFIL_USUARIO] ([ID_PERFIL_USUARIO], [ID_USUARIO], [ID_PERFIL], [REMOVED]) VALUES (3, 2, 1, 0)
INSERT [dbo].[TB_PERFIL_USUARIO] ([ID_PERFIL_USUARIO], [ID_USUARIO], [ID_PERFIL], [REMOVED]) VALUES (4, 4, 1, 0)
SET IDENTITY_INSERT [dbo].[TB_PERFIL_USUARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_PROCESSOS] ON 

INSERT [dbo].[TB_PROCESSOS] ([ID], [PROCESSO], [TOOLTIP], [PROCESSO_DET], [DATA_CADASTRO], [REMOVED]) VALUES (1, N'Auditoria Sox', N'teste', N'teste', CAST(N'2021-07-29T13:17:44.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[TB_PROCESSOS] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_USUARIO] ON 

INSERT [dbo].[TB_USUARIO] ([ID_USUARIO], [NOME], [NOME_COMPLETO], [LOGIN], [MATRICULA], [EMAIL], [REMOVED]) VALUES (1, N'Rômulo', N'Rômulo Pereira Felix', N'romulo.pereira', N'12345678', N'romulo.pereira@teste.com.br', 0)
INSERT [dbo].[TB_USUARIO] ([ID_USUARIO], [NOME], [NOME_COMPLETO], [LOGIN], [MATRICULA], [EMAIL], [REMOVED]) VALUES (2, N'Douglas', N'Douglas', N'Desenvolvimento\\douglas.santos', N'12312312', N'teste', 0)
INSERT [dbo].[TB_USUARIO] ([ID_USUARIO], [NOME], [NOME_COMPLETO], [LOGIN], [MATRICULA], [EMAIL], [REMOVED]) VALUES (3, N'Ivo', N'Ivo', N'ivo.telefonica', N'12345678', N'ivo@ivo', 0)
INSERT [dbo].[TB_USUARIO] ([ID_USUARIO], [NOME], [NOME_COMPLETO], [LOGIN], [MATRICULA], [EMAIL], [REMOVED]) VALUES (4, N'André', N'André', N'andre.andre', N'12345678', N'andre@andre', 0)
SET IDENTITY_INSERT [dbo].[TB_USUARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_USUARIO_ACAO] ON 

INSERT [dbo].[TB_USUARIO_ACAO] ([ID_USUARIO_ACAO], [ID_ACAO], [ID_USUARIO], [ID_MENU], [REMOVED]) VALUES (21, 1, 2, 2, 0)
INSERT [dbo].[TB_USUARIO_ACAO] ([ID_USUARIO_ACAO], [ID_ACAO], [ID_USUARIO], [ID_MENU], [REMOVED]) VALUES (22, 2, 2, 2, 0)
INSERT [dbo].[TB_USUARIO_ACAO] ([ID_USUARIO_ACAO], [ID_ACAO], [ID_USUARIO], [ID_MENU], [REMOVED]) VALUES (29, 1, 1, 1, 0)
INSERT [dbo].[TB_USUARIO_ACAO] ([ID_USUARIO_ACAO], [ID_ACAO], [ID_USUARIO], [ID_MENU], [REMOVED]) VALUES (36, 1, 1, 17, 0)
INSERT [dbo].[TB_USUARIO_ACAO] ([ID_USUARIO_ACAO], [ID_ACAO], [ID_USUARIO], [ID_MENU], [REMOVED]) VALUES (37, 1, 1, 2, 0)
INSERT [dbo].[TB_USUARIO_ACAO] ([ID_USUARIO_ACAO], [ID_ACAO], [ID_USUARIO], [ID_MENU], [REMOVED]) VALUES (38, 2, 1, 2, 0)
INSERT [dbo].[TB_USUARIO_ACAO] ([ID_USUARIO_ACAO], [ID_ACAO], [ID_USUARIO], [ID_MENU], [REMOVED]) VALUES (40, 1, 1, 21, 0)
INSERT [dbo].[TB_USUARIO_ACAO] ([ID_USUARIO_ACAO], [ID_ACAO], [ID_USUARIO], [ID_MENU], [REMOVED]) VALUES (41, 5, 1, 21, 0)
SET IDENTITY_INSERT [dbo].[TB_USUARIO_ACAO] OFF
GO
ALTER TABLE [dbo].[TB_BANNER] ADD  CONSTRAINT [DF_TB_BANNER_DATA_CADASTRO]  DEFAULT (getdate()) FOR [DATA_CADASTRO]
GO
ALTER TABLE [dbo].[TB_ACESSOS]  WITH CHECK ADD  CONSTRAINT [FK_TB_ACESSOS_TB_ACAO] FOREIGN KEY([ID_ACAO])
REFERENCES [dbo].[TB_ACAO] ([ID_ACAO])
GO
ALTER TABLE [dbo].[TB_ACESSOS] CHECK CONSTRAINT [FK_TB_ACESSOS_TB_ACAO]
GO
ALTER TABLE [dbo].[TB_ACESSOS]  WITH CHECK ADD  CONSTRAINT [FK_TB_ACESSOS_TB_CONTROLE] FOREIGN KEY([ID_CONTROLE])
REFERENCES [dbo].[TB_CONTROLE] ([ID])
GO
ALTER TABLE [dbo].[TB_ACESSOS] CHECK CONSTRAINT [FK_TB_ACESSOS_TB_CONTROLE]
GO
ALTER TABLE [dbo].[TB_MENU]  WITH CHECK ADD  CONSTRAINT [FK_TB_MENU_TB_CONTROLE] FOREIGN KEY([ID_CONTROLE])
REFERENCES [dbo].[TB_CONTROLE] ([ID])
GO
ALTER TABLE [dbo].[TB_MENU] CHECK CONSTRAINT [FK_TB_MENU_TB_CONTROLE]
GO
ALTER TABLE [dbo].[TB_PERFIL_ACAO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PERFIL_ACAO_TB_ACAO] FOREIGN KEY([ID_ACAO])
REFERENCES [dbo].[TB_ACAO] ([ID_ACAO])
GO
ALTER TABLE [dbo].[TB_PERFIL_ACAO] CHECK CONSTRAINT [FK_TB_PERFIL_ACAO_TB_ACAO]
GO
ALTER TABLE [dbo].[TB_PERFIL_ACAO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PERFIL_ACAO_TB_MENU] FOREIGN KEY([ID_MENU])
REFERENCES [dbo].[TB_MENU] ([ID])
GO
ALTER TABLE [dbo].[TB_PERFIL_ACAO] CHECK CONSTRAINT [FK_TB_PERFIL_ACAO_TB_MENU]
GO
ALTER TABLE [dbo].[TB_PERFIL_ACAO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PERFIL_ACAO_TB_PERFIL] FOREIGN KEY([ID_PERFIL])
REFERENCES [dbo].[TB_PERFIL] ([ID_PERFIL])
GO
ALTER TABLE [dbo].[TB_PERFIL_ACAO] CHECK CONSTRAINT [FK_TB_PERFIL_ACAO_TB_PERFIL]
GO
ALTER TABLE [dbo].[TB_PERFIL_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PERFIL_USUARIO_TB_PERFIL] FOREIGN KEY([ID_PERFIL])
REFERENCES [dbo].[TB_PERFIL] ([ID_PERFIL])
GO
ALTER TABLE [dbo].[TB_PERFIL_USUARIO] CHECK CONSTRAINT [FK_TB_PERFIL_USUARIO_TB_PERFIL]
GO
ALTER TABLE [dbo].[TB_PERFIL_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PERFIL_USUARIO_TB_USUARIO] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[TB_USUARIO] ([ID_USUARIO])
GO
ALTER TABLE [dbo].[TB_PERFIL_USUARIO] CHECK CONSTRAINT [FK_TB_PERFIL_USUARIO_TB_USUARIO]
GO
ALTER TABLE [dbo].[TB_USUARIO_ACAO]  WITH CHECK ADD  CONSTRAINT [FK_TB_USUARIO_ACAO_TB_ACAO] FOREIGN KEY([ID_ACAO])
REFERENCES [dbo].[TB_ACAO] ([ID_ACAO])
GO
ALTER TABLE [dbo].[TB_USUARIO_ACAO] CHECK CONSTRAINT [FK_TB_USUARIO_ACAO_TB_ACAO]
GO
ALTER TABLE [dbo].[TB_USUARIO_ACAO]  WITH CHECK ADD  CONSTRAINT [FK_TB_USUARIO_ACAO_TB_MENU] FOREIGN KEY([ID_MENU])
REFERENCES [dbo].[TB_MENU] ([ID])
GO
ALTER TABLE [dbo].[TB_USUARIO_ACAO] CHECK CONSTRAINT [FK_TB_USUARIO_ACAO_TB_MENU]
GO
ALTER TABLE [dbo].[TB_USUARIO_ACAO]  WITH CHECK ADD  CONSTRAINT [FK_TB_USUARIO_ACAO_TB_USUARIO] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[TB_USUARIO] ([ID_USUARIO])
GO
ALTER TABLE [dbo].[TB_USUARIO_ACAO] CHECK CONSTRAINT [FK_TB_USUARIO_ACAO_TB_USUARIO]
GO
