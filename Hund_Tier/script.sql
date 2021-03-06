USE [Hund_Tier]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Animal](
	[id_animal] [int] NOT NULL,
	[cod_tipo_animal] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[cod_raza] [int] NOT NULL,
	[cod_sexo] [int] NOT NULL,
	[cod_tamano] [int] NOT NULL,
	[cod_edad] [int] NOT NULL,
	[cod_pelo] [int] NOT NULL,
	[color1] [int] NOT NULL,
	[color2] [int] NULL,
	[cod_castrado] [int] NULL,
	[con_crias] [varchar](10) NULL,
	[cod_color_collar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_animal] ASC,
	[cod_tipo_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_barrio] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Barrios] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Castracion]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Castracion](
	[id_castrado] [int] NOT NULL,
	[nombre] [nchar](10) NULL,
 CONSTRAINT [PK_Castracion] PRIMARY KEY CLUSTERED 
(
	[id_castrado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colores]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colores](
	[id_color] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Colores] PRIMARY KEY CLUSTERED 
(
	[id_color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Edad_Animal]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Edad_Animal](
	[codigo_edad] [int] NOT NULL,
	[nombre_edad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Edad_Animal] PRIMARY KEY CLUSTERED 
(
	[codigo_edad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados_Publicacion]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados_Publicacion](
	[cod_estado] [int] NOT NULL,
	[nombre_estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estados_Publicacion] PRIMARY KEY CLUSTERED 
(
	[cod_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gatos]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gatos](
	[id_gato] [int] NOT NULL,
	[nombre_gato] [varchar](50) NOT NULL,
	[raza_gato] [int] NOT NULL,
	[sexo_gato] [int] NOT NULL,
	[tamano_gato] [int] NOT NULL,
	[edad_gato] [int] NOT NULL,
	[pelo_gato] [int] NOT NULL,
	[color1] [int] NOT NULL,
	[color2] [int] NULL,
	[condicion_castrado] [int] NOT NULL,
	[condicion_crias] [int] NULL,
	[color_collar] [int] NULL,
 CONSTRAINT [PK_Gatos] PRIMARY KEY CLUSTERED 
(
	[id_gato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelo_Animal]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelo_Animal](
	[codigo_pelo] [int] NOT NULL,
	[nombre_pelo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_pelo_animal] PRIMARY KEY CLUSTERED 
(
	[codigo_pelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perros]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perros](
	[id_perro] [int] NOT NULL,
	[nombre_perro] [varchar](50) NOT NULL,
	[raza_perro] [int] NOT NULL,
	[sexo_perro] [int] NOT NULL,
	[tamano_perro] [int] NOT NULL,
	[edad_perro] [int] NOT NULL,
	[pelo_perro] [int] NOT NULL,
	[color1] [int] NOT NULL,
	[color2] [int] NULL,
	[condicion_castrado] [int] NULL,
	[condicion_crias] [int] NULL,
	[color_collar] [int] NULL,
 CONSTRAINT [PK_Perros] PRIMARY KEY CLUSTERED 
(
	[id_perro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Publicacion](
	[cod_publicacion] [int] NOT NULL,
	[tipo_animal] [int] NOT NULL,
	[id_animal] [int] NOT NULL,
	[tipo_publicacion] [int] NOT NULL,
	[fecha_publicacion] [datetime] NOT NULL,
	[fecha_cerrada_publicacion] [datetime] NULL,
	[barrio] [int] NOT NULL,
	[descripcion] [varchar](1000) NOT NULL,
	[usuario_responsable] [int] NOT NULL,
	[telefono2] [varchar](50) NULL,
	[estado_publicacion] [int] NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_publicacion] ASC,
	[id_animal] ASC,
	[tipo_animal] ASC,
	[tipo_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Razas]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Razas](
	[cod_raza] [int] NOT NULL,
	[cod_tipo_animal] [int] NOT NULL,
	[nombre_raza] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Razas] PRIMARY KEY CLUSTERED 
(
	[cod_raza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Razas_Gatos]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Razas_Gatos](
	[id_raza] [int] NOT NULL,
	[nombre_raza] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Razas_Gatos] PRIMARY KEY CLUSTERED 
(
	[id_raza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Razas_Perros]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Razas_Perros](
	[id_raza] [int] NOT NULL,
	[nombre_raza] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Razas_Perros] PRIMARY KEY CLUSTERED 
(
	[id_raza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sexo_Animal]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sexo_Animal](
	[codigo_sexo] [int] NOT NULL,
	[nombre_sexo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sexo_animal] PRIMARY KEY CLUSTERED 
(
	[codigo_sexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tamano_Animal]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tamano_Animal](
	[codigo_tamano] [int] NOT NULL,
	[nombre_tamano] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tamano_animal] PRIMARY KEY CLUSTERED 
(
	[codigo_tamano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Animal]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Animal](
	[codigo_animal] [int] NOT NULL,
	[nombre_tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_animal] PRIMARY KEY CLUSTERED 
(
	[codigo_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Publicacion]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Publicacion](
	[id_tipo_publicacion] [int] NOT NULL,
	[nombre_publicacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo_publicacion] PRIMARY KEY CLUSTERED 
(
	[id_tipo_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 3/10/2017 8:57:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[num_telefono] [varchar](50) NULL,
	[email] [varchar](50) NOT NULL,
	[id_barrio] [int] NOT NULL,
	[calle] [varchar](50) NULL,
	[numero] [varchar](50) NULL,
	[piso] [int] NULL,
	[departamento] [varchar](50) NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[habilitado] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (1, 1, N'Lucas', 3, 2, 2, 2, 2, 1, NULL, 2, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (2, 1, N'pichon', 3, 2, 2, 1, 1, 1, 3, 1, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (3, 1, N'chicho', 1, 1, 2, 1, 1, 6, NULL, 1, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (4, 1, N'chicho', 1, 1, 2, 1, 1, 6, NULL, 1, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (5, 1, N'asd ', 4, 1, 1, 2, 1, 2, 6, 1, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (6, 1, N'lasd', 1, 2, 2, 2, 1, 1, 3, 2, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (7, 1, N'luquini', 1, 1, 1, 1, 2, 1, 3, 2, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (8, 1, N'luquini', 1, 1, 1, 1, 1, 1, 2, 2, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (9, 1, N'Sara', 5, 1, 2, 1, 2, 6, 14, 3, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (10, 1, N'Turron', 4, 1, 1, 2, 2, 1, 2, 2, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (11, 1, N'Rinoceronte', 9, 1, 3, 2, 1, 4, NULL, 1, NULL, NULL)
INSERT [dbo].[Animal] ([id_animal], [cod_tipo_animal], [nombre], [cod_raza], [cod_sexo], [cod_tamano], [cod_edad], [cod_pelo], [color1], [color2], [cod_castrado], [con_crias], [cod_color_collar]) VALUES (12, 1, N'lo', 20, 1, 1, 1, 1, 1, 9, 2, NULL, NULL)
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (1, N'1 DE MAYO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (2, N'2 DE SEPTIEMBRE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (3, N'20 DE JUNIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (4, N'23 DE ABRIL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (5, N'25 DE MAYO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (6, N'4 DE FEBRERO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (7, N'ACHAVAL PENA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (8, N'ACOSTA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (9, N'AERONAUTICO - VILLA ZAPPELIN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (10, N'AEROPUERTO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (11, N'AIRES DEL SUR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (12, N'ALBERDI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (13, N'ALBORADA NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (14, N'ALBORADA SUR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (15, N'ALEJANDRO CENTENO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (16, N'ALMIRANTE BROWN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (17, N'ALTA CORDOBA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (18, N'ALTAMIRA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (19, N'ALTO ALBERDI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (20, N'ALTO DE DON BOSCO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (21, N'ALTO DE SANTA ANA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (22, N'ALTO HERMOSO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (23, N'ALTO PALERMO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (24, N'ALTO VERDE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (26, N'ALTOS DE VELEZ SARSFIELD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (27, N'ALTOS DE VILLA CABRERA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (28, N'ALTOS SAN MARTIN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (29, N'ALTOS SUD DE SAN VICENTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (30, N'AMEGHINO NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (31, N'AMEGHINO SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (32, N'AMPLIACION ALTAMIRA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (33, N'AMPLIACION BENJAMIN MATIENZO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (34, N'AMPLIACION CABO FARINA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (35, N'AMPLIACION EMPALME')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (36, N'AMPLIACION GENERAL ARTIGAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (37, N'AMPLIACION JARDIN ESPINOSA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (38, N'AMPLIACION JOSE IGNACIO DIAZ SECCION 2')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (39, N'AMPLIACION JOSE IGNACIO DIAZ SECCION 3')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (40, N'AMPLIACION KENNEDY')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (41, N'AMPLIACION LAS PALMAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (42, N'AMPLIACION LOS ALAMOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (43, N'AMPLIACION LOS PLATANOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (44, N'AMPLIACION PALMAR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (45, N'AMPLIACION PANAMERICANO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (46, N'AMPLIACION PARQUE SAN CARLOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (47, N'AMPLIACION POETA LUGONES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (48, N'AMPLIACION PRIMERO DE MAYO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (49, N'AMPLIACION PUEYRREDON')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (50, N'AMPLIACION RESIDENCIAL AMERICA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (51, N'AMPLIACION ROSEDAL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (52, N'AMPLIACION SAN FERNANDO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (53, N'AMPLIACION SAN PABLO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (54, N'AMPLIACION URCA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (55, N'AMPLIACION VELEZ SARSFIELD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (56, N'ANA MARIA ZUMARAN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (57, N'ANEXO LOS ALAMOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (58, N'APEADERO LA TABLADA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (59, N'ARGUELLO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (60, N'ARGUELLO II')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (61, N'ARGUELLO NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (62, N'ARTURO CAPDEVILA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (63, N'ATE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (64, N'AVENIDA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (65, N'AYACUCHO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (66, N'BAJADA DE PIEDRA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (67, N'BAJADA SAN ROQUE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (68, N'BAJO GALAN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (69, N'BAJO GENERAL PAZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (70, N'BARRANCAS DEL SUR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (72, N'BELLA VISTA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (73, N'BELLA VISTA OESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (74, N'BETANIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (75, N'BH_CAMINO A 60 CUADRAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (76, N'BIALET MASSE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (77, N'BOEDO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (78, N'BRIGADIER SAN MARTIN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (79, N'CABANA DEL PILAR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (80, N'CABO FARINA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (81, N'CACERES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (82, N'CALIFORNIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (83, N'CAMINO A SAN CARLOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (84, N'CAMINO A VILLA POSSE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (85, N'CARBO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (86, N'CAROLA LORENZINI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (87, N'CARRARA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (88, N'CASEROS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (89, N'CENTRO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (90, N'CENTRO AMERICA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (91, N'CERRO CHICO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (92, N'CERRO DE LAS ROSAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (93, N'CERRO NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (94, N'CERVECEROS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (95, N'CHATEAU CARRERAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (97, N'CIUDAD AMPLIACION CABILDO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (98, N'CIUDAD DE JUAN PABLO II')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (99, N'CIUDAD DE LOS CUARTETOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (100, N'CIUDAD DE MIS SUENOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (101, N'CIUDAD EVITA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (102, N'CIUDAD MI ESPERANZA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (103, N'CIUDAD OBISPO ANGELELLI')
GO
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (104, N'CIUDAD PARQUE LAS ROSAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (105, N'CIUDAD VILLA RETIRO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (106, N'CIUDADELA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (107, N'CLAROS DEL BOSQUE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (108, N'COFICO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (109, N'COLINAS DE BELLA VISTA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (110, N'COLINAS DE VELEZ SARSFIELD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (111, N'COLINAS DEL CERRO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (112, N'COLON')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (113, N'COLONIA LOLA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (114, N'COMANDANTE ESPORA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (115, N'COMERCIAL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (116, N'CONGRESO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (117, N'CONSORCIO 16 DE NOVIEMBRE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (118, N'CONSORCIO ESPERANZA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (119, N'COOPERATIVA 16 DE NOVIEMBRE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (120, N'COOPERATIVA EL FUTURO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (121, N'COOPERATIVA LA HERMOSA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (122, N'COOPERATIVA LA UNIDAD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (123, N'CORDOBA IV')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (124, N'CORDOBA V')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (125, N'CORRAL DE PALOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (126, N'COSTA VERDE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (127, N'COUNTRY ALTOS DEL CHATEAU')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (128, N'COUNTRY BARRANCAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (130, N'COUNTRY CLUB')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (131, N'COUNTRY FORTIN DEL POZO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (132, N'COUNTRY JOCKEY CLUB')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (133, N'COUNTRY LA RESERVA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (134, N'COUNTRY LA SANTINA - COUNTRY CAMPIÐA DEL SUR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (135, N'COUNTRY LAS DELICIAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (136, N'COUNTRY LOMAS DE LA CAROLINA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (137, N'COUNTRY LOS ALGARROBOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (138, N'COUNTRY LOS MIMBRES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (139, N'COUNTRY RANCH CLUB')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (140, N'COUNTRY VALLE ESCONDIDO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (141, N'CRISOL NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (142, N'CRISOL SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (143, N'CUPANI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (144, N'DE LOS BIOQUIMICOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (145, N'DE LOS DOCENTES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (146, N'DEAN FUNES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (147, N'DUCASSE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (148, N'EJERCITO ARGENTINO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (149, N'EL BOSQUE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (150, N'EL CABILDO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (151, N'EL CERRITO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (152, N'EL PUEBLITO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (153, N'EL QUEBRACHAL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (154, N'EL QUEBRACHO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (155, N'EL REFUGIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (156, N'EL TREBOL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (157, N'EL VIEJO ALGARROBO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (158, N'EMAUS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (159, N'EMPALME')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (160, N'EMPALME CASAS DE OBREROS Y EMPLEADOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (161, N'ESCOBAR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (162, N'ESTACION FLORES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (163, N'FERRER')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (164, N'FERREYRA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (165, N'FERREYRA SEGUNDA SECCION')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (166, N'FERROVIARIO MITRE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (167, N'FINCA LA DOROTEA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (168, N'FINCAS DEL SUR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (169, N'GENERAL ARENALES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (170, N'GENERAL ARTIGAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (171, N'GENERAL BELGRANO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (172, N'GENERAL BUSTOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (173, N'GENERAL MOSCONI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (174, N'GENERAL PAZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (175, N'GENERAL PUEYRREDON')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (176, N'GENERAL SAVIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (177, N'GRANADERO PRINGLES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (178, N'GRANJA DE FUNES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (180, N'GUARNICION MILITAR CORDOBA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (181, N'GUAYAQUIL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (182, N'GUEMES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (184, N'GUINAZU')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (185, N'GUINAZU SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (186, N'HIPOLITO IRIGOYEN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (187, N'HOGAR PROPIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (188, N'HORIZONTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (189, N'INAUDI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (190, N'INDEPENDENCIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (191, N'INDUSTRIAL ESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (192, N'INDUSTRIAL OESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (193, N'IPONA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (194, N'IPV ANEXO LOS GIGANTES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (195, N'IRUPE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (196, N'ITUZAINGO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (197, N'ITUZAINGO ANEXO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (198, N'ITUZAINGO II')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (199, N'JARDIN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (200, N'JARDIN DEL CLARET')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (201, N'JARDIN DEL PILAR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (202, N'JARDIN DEL SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (203, N'JARDIN ESPINOSA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (204, N'JARDIN HIPODROMO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (205, N'JARDINES DEL JOCKEY')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (206, N'JERONIMO LUIS DE CABRERA')
GO
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (207, N'JOCKEY CLUB')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (208, N'JOSE HERNANDEZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (209, N'JOSE I RUCCI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (211, N'JOSE IGNACIO DIAZ SECCION 1')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (212, N'JOSE IGNACIO DIAZ SECCION 2')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (213, N'JOSE IGNACIO DIAZ SECCION 3')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (214, N'JUAN B JUSTO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (215, N'JUAN XXIII')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (216, N'JUNIORS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (217, N'KAIROS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (218, N'KENNEDY')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (219, N'LA CAROLINA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (220, N'LA DOROTEA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (221, N'LA ESPERANZA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (222, N'LA FLORESTA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (223, N'LA FRANCE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (224, N'LA FRATERNIDAD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (225, N'LA HORTENSIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (226, N'LA SALLE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (227, N'LA TOMA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (228, N'LAMADRID')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (229, N'LAS CANITAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (230, N'LAS CANUELAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (231, N'LAS CORTADERAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (232, N'LAS DALIAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (233, N'LAS FLORES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (234, N'LAS HUERTILLAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (235, N'LAS LILAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (236, N'LAS MAGNOLIAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (237, N'LAS MARGARITAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (238, N'LAS PALMAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (239, N'LAS PALMAS ANEXO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (240, N'LAS PLAYAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (241, N'LAS ROSAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (242, N'LAS VIOLETAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (243, N'LICEO GENERAL PAZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (244, N'LOMAS DE SAN MARTIN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (245, N'LOS ALAMOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (246, N'LOS ANGELES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (247, N'LOS BOULEVARES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (248, N'LOS CEIBOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (249, N'LOS CHINGOLOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (250, N'LOS EUCALIPTUS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (251, N'LOS FILTROS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (252, N'LOS FRESNOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (253, N'LOS GIGANTES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (254, N'LOS GRANADOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (255, N'LOS HORNILLOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (256, N'LOS JACARANDAES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (257, N'LOS JOSEFINOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (258, N'LOS NARANJOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (259, N'LOS OLMOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (260, N'LOS OLMOS SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (261, N'LOS PARAISOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (262, N'LOS PINOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (263, N'LOS PLATANOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (264, N'LOS ROBLES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (265, N'LOS SAUCES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (266, N'LOURDES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (267, N'MAIPU SECCION 1')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (268, N'MAIPU SECCION 2')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (269, N'MALDONADO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (270, N'MARCELO T DE ALVEAR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (271, N'MARCOS SASTRE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (272, N'MARECHAL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (273, N'MARIA LASTENIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (274, N'MARIANO BALCARCE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (275, N'MARIANO FRAGUEIRO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (276, N'MARQUES ANEXO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (277, N'MARQUES DE SOBREMONTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (278, N'MAULLER')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (279, N'MAURIZI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (280, N'MERCANTIL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (281, N'MILITAR GENERAL DEHEZA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (282, N'MIRADOR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (283, N'MIRADOR DEL CHATEAU')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (284, N'MIRALTA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (285, N'MIRIZZI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (286, N'MUTUAL DE LOS DOCENTES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (287, N'NICOLAS AVELLANEDA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (288, N'NUESTRO HOGAR I')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (289, N'NUESTRO HOGAR II')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (290, N'NUESTRO HOGAR III')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (291, N'NUEVA CORDOBA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (292, N'NUEVA CORDOBA ANEXA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (293, N'NUEVA ITALIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (294, N'NUEVO URCA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (295, N'OBRERO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (296, N'OBSERVATORIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (297, N'OMBU')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (298, N'ONA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (299, N'OSN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (300, N'PADRE CLARET')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (301, N'PALERMO BAJO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (302, N'PALMAR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (303, N'PALMAS DEL CLARET')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (304, N'PANAMERICANO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (305, N'PARQUE ALAMEDA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (306, N'PARQUE ATLANTICA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (307, N'PARQUE CAPITAL')
GO
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (308, N'PARQUE CAPITAL SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (309, N'PARQUE CHACABUCO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (310, N'PARQUE CHATEAU CARRERAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (311, N'PARQUE COREMA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (312, N'PARQUE DE LA VEGA II')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (313, N'PARQUE DE LA VEGA III')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (314, N'PARQUE DEL ESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (315, N'PARQUE DON BOSCO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (316, N'PARQUE FUTURA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (317, N'PARQUE JORGE NEWBERY')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (318, N'PARQUE LATINO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (319, N'PARQUE LICEO SECCION 1')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (320, N'PARQUE LICEO SECCION 2')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (321, N'PARQUE LICEO SECCION 3')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (322, N'PARQUE LOS MOLINOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (323, N'PARQUE MODELO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (324, N'PARQUE MONTECRISTO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (325, N'PARQUE REPUBLICA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (326, N'PARQUE SAN CARLOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (327, N'PARQUE SAN VICENTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (328, N'PARQUE TABLADA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (329, N'PARQUE VELEZ SARSFIELD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (330, N'PASO DE LOS ANDES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (331, N'PATRIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (332, N'PATRICIOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (333, N'PATRICIOS ESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (334, N'PATRICIOS NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (335, N'PATRICIOS OESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (336, N'PIEDRAS BLANCAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (337, N'POETA LUGONES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (338, N'POLICARPIO CABRAL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (339, N'POLICIAL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (340, N'PORTAL DE CORDOBA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (341, N'PORTAL DEL JACARANDA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (342, N'POSTA DE VARGAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (343, N'PRIMERA JUNTA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (344, N'PROVIDENCIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (345, N'PUENTE BLANCO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (346, N'QUEBRADA DE LAS ROSAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (347, N'QUINTA SANTA ANA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (348, N'QUINTAS DE ARGUELLO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (349, N'QUINTAS DE FLORES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (350, N'QUINTAS DE ITALIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (351, N'QUINTAS DE SAN JORGE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (352, N'RAMON J CARCANO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (353, N'RECREO DEL NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (354, N'REMEDIOS DE ESCALADA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (355, N'RENACIMIENTO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (356, N'RENE FAVALORO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (357, N'RENE FAVALORO II')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (358, N'RES CHATEAU CARRERAS CO VI CO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (359, N'RESIDENCIAL AMERICA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (360, N'RESIDENCIAL ARAGON')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (361, N'RESIDENCIAL OLIVOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (362, N'RESIDENCIAL SAN CARLOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (363, N'RESIDENCIAL SAN JORGE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (364, N'RESIDENCIAL SAN ROQUE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (365, N'RESIDENCIAL SANTA ANA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (366, N'RESIDENCIAL SANTA ROSA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (367, N'RESIDENCIAL SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (368, N'RESIDENCIAL VELEZ SARSFIELD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (369, N'RIVADAVIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (370, N'RIVERA INDARTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (372, N'ROGELIO MARTINEZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (373, N'ROSEDAL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (374, N'ROSEDAL ANEXO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (375, N'SACHI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (376, N'SAN ANTONIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (377, N'SAN CAYETANO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (378, N'SAN DANIEL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (379, N'SAN FELIPE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (380, N'SAN FERNANDO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (381, N'SAN FRANCISCO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (382, N'SAN IGNACIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (383, N'SAN JAVIER')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (384, N'SAN JOSE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (385, N'SAN LORENZO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (386, N'SAN LORENZO NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (387, N'SAN LUIS DE FRANCIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (388, N'SAN MARCELO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (389, N'SAN MARTIN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (391, N'SAN MARTIN ANEXO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (392, N'SAN MARTIN NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (393, N'SAN NICOLAS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (394, N'SAN PABLO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (395, N'SAN PEDRO NOLASCO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (396, N'SAN RAFAEL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (397, N'SAN RAMON')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (398, N'SAN SALVADOR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (399, N'SAN VICENTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (400, N'SANTA CECILIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (401, N'SANTA CLARA DE ASIS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (402, N'SANTA ISABEL ANEXO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (403, N'SANTA ISABEL SECCION 1')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (404, N'SANTA ISABEL SECCION 2')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (405, N'SANTA ISABEL SECCION 3')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (406, N'SANTA RITA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (407, N'SARGENTO CABRAL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (408, N'SARMIENTO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (409, N'SEP')
GO
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (410, N'SEP SEGUNDA ETAPA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (411, N'SMATA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (412, N'SOLARES DE SANTA MARIA - ALTOS DE MANANTIALES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (413, N'SUAREZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (414, N'TABLADA PARK')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (415, N'TALLERES ESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (416, N'TALLERES OESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (417, N'TALLERES SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (418, N'TEJAS DEL SUR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (419, N'TEJAS II')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (420, N'TENIENTE BENJAMIN MATIENZO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (421, N'TEODORO FELDS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (422, N'TRANVIARIOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (423, N'UOCRA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (424, N'URCA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (425, N'URITORCO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (426, N'URQUIZA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (427, N'VALLE DEL CERRO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (428, N'VASQUEZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (429, N'VICOR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (430, N'VILLA 4 DE AGOSTO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (431, N'VILLA 9 DE JULIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (432, N'VILLA ADELA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (433, N'VILLA ALBERDI')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (434, N'VILLA ALBERTO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (435, N'VILLA ALICIA RISLER')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (436, N'VILLA ALLENDE PARQUE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (437, N'VILLA ARGENTINA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (438, N'VILLA ASPACIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (439, N'VILLA AVALOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (440, N'VILLA AZALAIS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (441, N'VILLA AZALAIS ANEXO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (442, N'VILLA AZALAIS OESTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (443, N'VILLA BELGRANO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (444, N'VILLA BUSTOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (445, N'VILLA CABRERA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (446, N'VILLA CENTENARIO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (447, N'VILLA CLARET')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (448, N'VILLA CLAUDINA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (449, N'VILLA CORINA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (450, N'VILLA CORNU')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (451, N'VILLA CORONEL OLMEDO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (452, N'VILLA EL LIBERTADOR')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (453, N'VILLA ESQUIU')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (454, N'VILLA EUCARISTICA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (455, N'VILLA GENERAL URQUIZA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (456, N'VILLA GRAN PARQUE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (457, N'VILLA LA MERCED')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (458, N'VILLA MAFEKIN')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (459, N'VILLA MARTA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (460, N'VILLA MARTINEZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (461, N'VILLA PAEZ')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (462, N'VILLA QUISQUIZACATE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (463, N'VILLA RETIRO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (464, N'VILLA REVOL')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (465, N'VILLA REVOL ANEXO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (466, N'VILLA RIVADAVIA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (467, N'VILLA RIVERA INDARTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (468, N'VILLA SAN CARLOS')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (469, N'VILLA SAN ISIDRO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (470, N'VILLA SERRANA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (471, N'VILLA SIBURU')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (472, N'VILLA SILVANO FUNES')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (473, N'VILLA SOLFERINO')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (474, N'VILLA UNION')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (475, N'VILLA WARCALDE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (477, N'VIVERO NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (478, N'YAPEYU')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (479, N'YOFRE H')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (480, N'YOFRE I')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (481, N'YOFRE NORTE')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (482, N'YOFRE SUD')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (483, N'ZEPA')
INSERT [dbo].[Barrios] ([id_barrio], [nombre]) VALUES (484, N'MANATIALES I - MANATIALES II')
INSERT [dbo].[Castracion] ([id_castrado], [nombre]) VALUES (1, N'Si        ')
INSERT [dbo].[Castracion] ([id_castrado], [nombre]) VALUES (2, N'No        ')
INSERT [dbo].[Castracion] ([id_castrado], [nombre]) VALUES (3, N'N/D       ')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (1, N'Negro')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (2, N'Blanco')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (3, N'Amarillo')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (4, N'Atigrado')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (5, N'Avellana')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (6, N'Azul')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (7, N'Azul grisaceo')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (8, N'Belton')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (9, N'Bleiz')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (10, N'Bronce')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (11, N'Café')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (12, N'Caoba')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (13, N'Cobre')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (14, N'Con anteojos')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (15, N'Chocolate')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (16, N'Fuego')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (17, N'Hígado')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (18, N'Manchado')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (19, N'Marrón')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (20, N'Naranja')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (21, N'Pardo')
INSERT [dbo].[Colores] ([id_color], [nombre]) VALUES (22, N'Plateado')
INSERT [dbo].[Edad_Animal] ([codigo_edad], [nombre_edad]) VALUES (1, N'Cachorro')
INSERT [dbo].[Edad_Animal] ([codigo_edad], [nombre_edad]) VALUES (2, N'Adulto')
INSERT [dbo].[Estados_Publicacion] ([cod_estado], [nombre_estado]) VALUES (1, N'Publicada')
INSERT [dbo].[Estados_Publicacion] ([cod_estado], [nombre_estado]) VALUES (2, N'Finalizada')
INSERT [dbo].[Estados_Publicacion] ([cod_estado], [nombre_estado]) VALUES (3, N'Cancelada')
INSERT [dbo].[Pelo_Animal] ([codigo_pelo], [nombre_pelo]) VALUES (1, N'Corto')
INSERT [dbo].[Pelo_Animal] ([codigo_pelo], [nombre_pelo]) VALUES (2, N'Largo')
INSERT [dbo].[Perros] ([id_perro], [nombre_perro], [raza_perro], [sexo_perro], [tamano_perro], [edad_perro], [pelo_perro], [color1], [color2], [condicion_castrado], [condicion_crias], [color_collar]) VALUES (1, N'anita', 3, 1, 2, 2, 2, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Perros] ([id_perro], [nombre_perro], [raza_perro], [sexo_perro], [tamano_perro], [edad_perro], [pelo_perro], [color1], [color2], [condicion_castrado], [condicion_crias], [color_collar]) VALUES (2, N'asd ', 2, 2, 1, 1, 2, 8, 14, NULL, NULL, NULL)
INSERT [dbo].[Perros] ([id_perro], [nombre_perro], [raza_perro], [sexo_perro], [tamano_perro], [edad_perro], [pelo_perro], [color1], [color2], [condicion_castrado], [condicion_crias], [color_collar]) VALUES (3, N'Turron', 1, 2, 2, 2, 1, 10, NULL, 1, NULL, NULL)
INSERT [dbo].[Perros] ([id_perro], [nombre_perro], [raza_perro], [sexo_perro], [tamano_perro], [edad_perro], [pelo_perro], [color1], [color2], [condicion_castrado], [condicion_crias], [color_collar]) VALUES (4, N'pacho', 2, 1, 1, 2, 2, 2, 7, 3, NULL, NULL)
INSERT [dbo].[Publicacion] ([cod_publicacion], [tipo_animal], [id_animal], [tipo_publicacion], [fecha_publicacion], [fecha_cerrada_publicacion], [barrio], [descripcion], [usuario_responsable], [telefono2], [estado_publicacion], [ciudad]) VALUES (1, 1, 2, 1, CAST(0x0000A7FC00F22610 AS DateTime), NULL, 4, N'asdasda', 3, N'156546', 1, N'Cordoba')
INSERT [dbo].[Publicacion] ([cod_publicacion], [tipo_animal], [id_animal], [tipo_publicacion], [fecha_publicacion], [fecha_cerrada_publicacion], [barrio], [descripcion], [usuario_responsable], [telefono2], [estado_publicacion], [ciudad]) VALUES (2, 1, 8, 1, CAST(0x0000A7FC01227037 AS DateTime), NULL, 4, N'saidnaos', 1, N'0356215453098', 1, N'Cordoba')
INSERT [dbo].[Publicacion] ([cod_publicacion], [tipo_animal], [id_animal], [tipo_publicacion], [fecha_publicacion], [fecha_cerrada_publicacion], [barrio], [descripcion], [usuario_responsable], [telefono2], [estado_publicacion], [ciudad]) VALUES (3, 1, 9, 1, CAST(0x0000A7FC01310679 AS DateTime), NULL, 11, N'Sarita es una perra bajita, que fuma con mallita', 1, N'0356215453098', 1, N'Cordoba')
INSERT [dbo].[Publicacion] ([cod_publicacion], [tipo_animal], [id_animal], [tipo_publicacion], [fecha_publicacion], [fecha_cerrada_publicacion], [barrio], [descripcion], [usuario_responsable], [telefono2], [estado_publicacion], [ciudad]) VALUES (4, 1, 10, 1, CAST(0x0000A7FD00BAB2DB AS DateTime), NULL, 291, N'Turron es un perro duro que se perdio ayer. Saludos terricolas', 1, N'0351153525590', 1, N'Cordoba')
INSERT [dbo].[Publicacion] ([cod_publicacion], [tipo_animal], [id_animal], [tipo_publicacion], [fecha_publicacion], [fecha_cerrada_publicacion], [barrio], [descripcion], [usuario_responsable], [telefono2], [estado_publicacion], [ciudad]) VALUES (5, 1, 11, 1, CAST(0x0000A7FD00BD5281 AS DateTime), NULL, 19, N'asdasda', 5, N'0356215453098', 1, N'Cordoba')
INSERT [dbo].[Publicacion] ([cod_publicacion], [tipo_animal], [id_animal], [tipo_publicacion], [fecha_publicacion], [fecha_cerrada_publicacion], [barrio], [descripcion], [usuario_responsable], [telefono2], [estado_publicacion], [ciudad]) VALUES (6, 1, 12, 1, CAST(0x0000A801014676FF AS DateTime), NULL, 8, N'asdasdaa', 1, N'035156156165', 1, N'Cordoba')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (1, 1, N'Labrador')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (2, 1, N'Pastor Aleman')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (3, 1, N'Golden Retriever')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (4, 1, N'Bulldog Frances')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (5, 1, N'Bulldog Ingles')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (7, 1, N'Yorkshire Terrier')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (8, 1, N'Caniche')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (9, 1, N'Boxer')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (10, 1, N'Dachshunds')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (11, 1, N'Rottweiler')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (12, 1, N'Pit Bull')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (13, 1, N'Chow Chow')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (14, 1, N'Dalmata')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (15, 1, N'Collie')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (16, 1, N'Pug Carlino')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (17, 1, N'Doberman')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (18, 1, N'Gran Danés')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (19, 1, N'Cocker Inglés')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (20, 1, N'Schnauzer')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (21, 1, N'Shar Pei')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (22, 1, N'Bichon Maltés')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (23, 1, N'Border Collie')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (24, 1, N'Chihuahua')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (25, 1, N'Bull Terrier')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (26, 1, N'Pastor Belga')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (27, 1, N'Basset Hound')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (28, 1, N'Cocker Americano')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (29, 1, N'Corgi')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (30, 1, N'Pincher')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (31, 1, N'Fox Terrier')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (32, 1, N'Mastín Napolitano')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (33, 1, N'Pekines')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (34, 1, N'Galgo')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (35, 1, N'Jack Russell')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (36, 2, N'Mestizo')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (37, 2, N'Siames')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (38, 2, N'Persa')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (39, 2, N'Bengala')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (40, 2, N'Sphynx')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (41, 2, N'Absinio')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (42, 2, N'Azul Ruso')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (43, 2, N'Burmes')
INSERT [dbo].[Razas] ([cod_raza], [cod_tipo_animal], [nombre_raza]) VALUES (44, 2, N'Exotico')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (0, N'Mestizo')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (1, N'Siames')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (2, N'Persa')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (3, N'Bengala')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (4, N'Sphynx')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (5, N'Absinio')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (6, N'Azul Ruso')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (7, N'Burmes')
INSERT [dbo].[Razas_Gatos] ([id_raza], [nombre_raza]) VALUES (8, N'Exotico')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (0, N'Mestizo')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (1, N'Labrador ')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (2, N'Pastor Aleman')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (3, N'Golden Retriever')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (4, N'Bulldog Frances')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (5, N'Bulldog Ingles')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (7, N'Yorkshire Terrier')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (8, N'Caniche')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (9, N'Boxer')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (10, N'Dachshunds')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (11, N'Rottweiler')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (12, N'Pit Bull')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (13, N'Chow Chow')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (14, N'Dalmata')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (15, N'Collie')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (16, N'Pug Carlino')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (17, N'Doberman')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (18, N'Gran Danés')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (19, N'Cocker Inglés')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (20, N'Schnauzer')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (21, N'Shar Pei')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (22, N'Bichon Maltés')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (23, N'Border Collie')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (24, N'Chihuahua')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (25, N'Bull Terrier')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (26, N'Pastor Belga')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (27, N'Basset Hound')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (28, N'Cocker Americano')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (29, N'Corgi')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (30, N'Pincher')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (31, N'Fox Terrier')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (32, N'Mastín Napolitano')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (33, N'Pekines')
INSERT [dbo].[Razas_Perros] ([id_raza], [nombre_raza]) VALUES (34, N'Galgo')
INSERT [dbo].[Sexo_Animal] ([codigo_sexo], [nombre_sexo]) VALUES (1, N'Hembra')
INSERT [dbo].[Sexo_Animal] ([codigo_sexo], [nombre_sexo]) VALUES (2, N'Macho')
INSERT [dbo].[Tamano_Animal] ([codigo_tamano], [nombre_tamano]) VALUES (1, N'Chico')
INSERT [dbo].[Tamano_Animal] ([codigo_tamano], [nombre_tamano]) VALUES (2, N'Mediano')
INSERT [dbo].[Tamano_Animal] ([codigo_tamano], [nombre_tamano]) VALUES (3, N'Grande')
INSERT [dbo].[Tipo_Animal] ([codigo_animal], [nombre_tipo]) VALUES (1, N'Perro')
INSERT [dbo].[Tipo_Animal] ([codigo_animal], [nombre_tipo]) VALUES (2, N'Gato')
INSERT [dbo].[Tipo_Publicacion] ([id_tipo_publicacion], [nombre_publicacion]) VALUES (1, N'Adopcion')
INSERT [dbo].[Tipo_Publicacion] ([id_tipo_publicacion], [nombre_publicacion]) VALUES (2, N'Perdido')
INSERT [dbo].[Tipo_Publicacion] ([id_tipo_publicacion], [nombre_publicacion]) VALUES (3, N'Encontrado')
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (1, N'admin', N'istrador', N'0356215453098', N'admin@gmail.com', 36, N'Leopoldo Lugones', N'159', 13, N'D', N'admin', N'admin', 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (2, N'Juan', N'Giacosa', N'0356215453098', N'juangiacosa@gmail.com', 5, N'Av leopoldo lugones', N'159', 13, N'D', N'Juan', N'pepe', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (3, N'Lucas', N'Prosdoscimo', NULL, N'luquitas@gmail.com', 4, NULL, NULL, NULL, NULL, N'Luqui01', N'lucas', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (4, N'Meli', N'Stoll', N'013457799', N'meli@gmail.com', 182, N'Pueyrredon', N'556', 7, N'a', N'meli', N'meli', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (5, N'asd', N'asd', NULL, N'juan@gmail.com', 9, NULL, NULL, NULL, NULL, N'ju', N'asd', 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (6, N'juan', N'cuñado', N'3454654', N'juanmacuniado@gmail.com', 291, N'ituzaingo', N'435', 0, N'D', N'juancuniado', N'pepe123', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (7, N'Juan Pedro', N'Rodriguez', NULL, N'Juacholo@nino.com', 9, NULL, NULL, NULL, NULL, N'juanCholo', N'123', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (8, N'Juanito', N'Perez', NULL, N'nenemalo@gmail.com', 14, NULL, NULL, NULL, NULL, N'neneMalito', N'123', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (9, N'Lucho', N'aviles', NULL, N'LuchoElAguilucho@hotmail.com', 6, NULL, NULL, NULL, NULL, N'LuchoAguilucho', N'lucho', 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (10, N'Peter', N'La anguila', NULL, N'PeterAnguila@hotmail.com', 11, NULL, NULL, NULL, NULL, N'ptrLaAnguila', N'peter', 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (11, N'Luciana', N'Wachowski', NULL, N'laWacha@hotmail.com', 7, NULL, NULL, NULL, NULL, N'luWacha', N'luciana', 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (12, N'Pepe', N'Acosta', NULL, N'pepeAco@gmail.com', 8, NULL, NULL, NULL, NULL, N'pepeAco', N'pepe', 1)
INSERT [dbo].[Usuarios] ([id_usuario], [nombre], [apellido], [num_telefono], [email], [id_barrio], [calle], [numero], [piso], [departamento], [username], [password], [habilitado]) VALUES (13, N'Lucas', N'Pipi', NULL, N'pipiLucas@gmail.com', 6, NULL, NULL, NULL, NULL, N'pipiLucas', N'pipi', 1)
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Castrado1] FOREIGN KEY([cod_castrado])
REFERENCES [dbo].[Castracion] ([id_castrado])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Castrado1]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Color_1] FOREIGN KEY([color1])
REFERENCES [dbo].[Colores] ([id_color])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Color_1]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Color_2] FOREIGN KEY([color2])
REFERENCES [dbo].[Colores] ([id_color])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Color_2]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Edad_Animal] FOREIGN KEY([cod_edad])
REFERENCES [dbo].[Edad_Animal] ([codigo_edad])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Edad_Animal]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Pelo_Animal] FOREIGN KEY([cod_pelo])
REFERENCES [dbo].[Pelo_Animal] ([codigo_pelo])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Pelo_Animal]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Razas] FOREIGN KEY([cod_raza])
REFERENCES [dbo].[Razas] ([cod_raza])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Razas]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Sexo1] FOREIGN KEY([cod_sexo])
REFERENCES [dbo].[Sexo_Animal] ([codigo_sexo])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Sexo1]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Tamano_animal] FOREIGN KEY([cod_tamano])
REFERENCES [dbo].[Tamano_Animal] ([codigo_tamano])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Tamano_animal]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Tipo_Animal] FOREIGN KEY([cod_tipo_animal])
REFERENCES [dbo].[Tipo_Animal] ([codigo_animal])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Tipo_Animal]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Colores1] FOREIGN KEY([color1])
REFERENCES [dbo].[Colores] ([id_color])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Colores1]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Colores2] FOREIGN KEY([color2])
REFERENCES [dbo].[Colores] ([id_color])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Colores2]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Cond_Castrado] FOREIGN KEY([condicion_castrado])
REFERENCES [dbo].[Castracion] ([id_castrado])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Cond_Castrado]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Edad] FOREIGN KEY([edad_perro])
REFERENCES [dbo].[Edad_Animal] ([codigo_edad])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Edad]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Pelo] FOREIGN KEY([pelo_perro])
REFERENCES [dbo].[Pelo_Animal] ([codigo_pelo])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Pelo]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Razas] FOREIGN KEY([raza_perro])
REFERENCES [dbo].[Razas_Perros] ([id_raza])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Razas]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Sexos] FOREIGN KEY([sexo_perro])
REFERENCES [dbo].[Sexo_Animal] ([codigo_sexo])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Sexos]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Tamano] FOREIGN KEY([tamano_perro])
REFERENCES [dbo].[Tamano_Animal] ([codigo_tamano])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Tamano]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Barrios] FOREIGN KEY([barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Barrios]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Estado_Publicacion] FOREIGN KEY([estado_publicacion])
REFERENCES [dbo].[Estados_Publicacion] ([cod_estado])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Estado_Publicacion]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Tipo_Publicacion] FOREIGN KEY([tipo_publicacion])
REFERENCES [dbo].[Tipo_Publicacion] ([id_tipo_publicacion])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Tipo_Publicacion]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Usuario] FOREIGN KEY([usuario_responsable])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Usuario]
GO
ALTER TABLE [dbo].[Razas]  WITH CHECK ADD  CONSTRAINT [FK_Razas_Tipo_Animal] FOREIGN KEY([cod_tipo_animal])
REFERENCES [dbo].[Tipo_Animal] ([codigo_animal])
GO
ALTER TABLE [dbo].[Razas] CHECK CONSTRAINT [FK_Razas_Tipo_Animal]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Barrios1] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Barrios1]
GO
