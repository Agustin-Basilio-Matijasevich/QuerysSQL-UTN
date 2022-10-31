USE [db_Gimnasio]
GO
/****** Object:  Table [dbo].[Asiste$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asiste$](
	[Cod_Clase_FK_PK] [int] NOT NULL,
	[Numero_Socio_FK_PK] [int] NOT NULL,
 CONSTRAINT [PK_Asiste$] PRIMARY KEY CLUSTERED 
(
	[Cod_Clase_FK_PK] ASC,
	[Numero_Socio_FK_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clase$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clase$](
	[Cod_Clase_PK] [int] NOT NULL,
	[DNI_FK_PK] [varchar](50) NOT NULL,
	[Numero_Sala_FK_PK] [int] NOT NULL,
 CONSTRAINT [PK_Clase$_1] PRIMARY KEY CLUSTERED 
(
	[Cod_Clase_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dato_Bancario$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dato_Bancario$](
	[Alias_PK] [varchar](50) NOT NULL,
	[DNI_FK_PK] [varchar](50) NOT NULL,
	[CBU] [varchar](50) NOT NULL,
	[Nombre_Banco] [varchar](50) NULL,
 CONSTRAINT [PK_Dato_Bancario$] PRIMARY KEY CLUSTERED 
(
	[Alias_PK] ASC,
	[DNI_FK_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disciplina$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplina$](
	[Disciplina_PK] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Disciplina$] PRIMARY KEY CLUSTERED 
(
	[Disciplina_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrenador$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrenador$](
	[DNI_FK_PK] [varchar](50) NOT NULL,
	[Tiene_Titulacion] [bit] NOT NULL,
 CONSTRAINT [PK_Entrenador$] PRIMARY KEY CLUSTERED 
(
	[DNI_FK_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrenador_Experiencia$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrenador_Experiencia$](
	[DNI_PK] [varchar](50) NOT NULL,
	[Area_Experiencia_PK] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Entrenador_Experiencia$] PRIMARY KEY CLUSTERED 
(
	[DNI_PK] ASC,
	[Area_Experiencia_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Es_impartida$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Es_impartida$](
	[DNI_FK_PK] [varchar](50) NOT NULL,
	[Disciplina_PK_FK] [int] NOT NULL,
 CONSTRAINT [PK_Es_impartida$] PRIMARY KEY CLUSTERED 
(
	[DNI_FK_PK] ASC,
	[Disciplina_PK_FK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona$](
	[DNI_PK] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
 CONSTRAINT [PK_Persona$] PRIMARY KEY CLUSTERED 
(
	[DNI_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sala$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sala$](
	[Numero_Sala_PK] [int] NOT NULL,
	[Disciplina_FK_PK] [int] NOT NULL,
	[Ubicacion] [varchar](255) NULL,
	[Metros_Cuadrados] [varchar](50) NULL,
 CONSTRAINT [PK_Sala$] PRIMARY KEY CLUSTERED 
(
	[Numero_Sala_PK] ASC,
	[Disciplina_FK_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socio$]    Script Date: 10/28/2022 7:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socio$](
	[DNI_FK] [varchar](50) NOT NULL,
	[Numero_Socio_PK] [int] NOT NULL,
	[Profesion] [varchar](50) NULL,
 CONSTRAINT [PK_Socio$] PRIMARY KEY CLUSTERED 
(
	[DNI_FK] ASC,
	[Numero_Socio_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Asiste$]  WITH CHECK ADD  CONSTRAINT [FK_Asiste$_Clase$] FOREIGN KEY([Cod_Clase_FK_PK])
REFERENCES [dbo].[Clase$] ([Cod_Clase_PK])
GO
ALTER TABLE [dbo].[Asiste$] CHECK CONSTRAINT [FK_Asiste$_Clase$]
GO
ALTER TABLE [dbo].[Clase$]  WITH CHECK ADD  CONSTRAINT [FK_Clase$_Entrenador$1] FOREIGN KEY([DNI_FK_PK])
REFERENCES [dbo].[Entrenador$] ([DNI_FK_PK])
GO
ALTER TABLE [dbo].[Clase$] CHECK CONSTRAINT [FK_Clase$_Entrenador$1]
GO
ALTER TABLE [dbo].[Dato_Bancario$]  WITH CHECK ADD  CONSTRAINT [FK_Dato_Bancario$_Persona$] FOREIGN KEY([DNI_FK_PK])
REFERENCES [dbo].[Persona$] ([DNI_PK])
GO
ALTER TABLE [dbo].[Dato_Bancario$] CHECK CONSTRAINT [FK_Dato_Bancario$_Persona$]
GO
ALTER TABLE [dbo].[Entrenador$]  WITH CHECK ADD  CONSTRAINT [FK_Entrenador$_Persona$] FOREIGN KEY([DNI_FK_PK])
REFERENCES [dbo].[Persona$] ([DNI_PK])
GO
ALTER TABLE [dbo].[Entrenador$] CHECK CONSTRAINT [FK_Entrenador$_Persona$]
GO
ALTER TABLE [dbo].[Entrenador_Experiencia$]  WITH CHECK ADD  CONSTRAINT [FK_Entrenador_Experiencia$_Entrenador$] FOREIGN KEY([DNI_PK])
REFERENCES [dbo].[Entrenador$] ([DNI_FK_PK])
GO
ALTER TABLE [dbo].[Entrenador_Experiencia$] CHECK CONSTRAINT [FK_Entrenador_Experiencia$_Entrenador$]
GO
ALTER TABLE [dbo].[Es_impartida$]  WITH CHECK ADD  CONSTRAINT [FK_Es_impartida$_Disciplina$] FOREIGN KEY([Disciplina_PK_FK])
REFERENCES [dbo].[Disciplina$] ([Disciplina_PK])
GO
ALTER TABLE [dbo].[Es_impartida$] CHECK CONSTRAINT [FK_Es_impartida$_Disciplina$]
GO
ALTER TABLE [dbo].[Es_impartida$]  WITH CHECK ADD  CONSTRAINT [FK_Es_impartida$_Entrenador$] FOREIGN KEY([DNI_FK_PK])
REFERENCES [dbo].[Entrenador$] ([DNI_FK_PK])
GO
ALTER TABLE [dbo].[Es_impartida$] CHECK CONSTRAINT [FK_Es_impartida$_Entrenador$]
GO
ALTER TABLE [dbo].[Sala$]  WITH CHECK ADD  CONSTRAINT [FK_Sala$_Clase$] FOREIGN KEY([Numero_Sala_PK])
REFERENCES [dbo].[Clase$] ([Cod_Clase_PK])
GO
ALTER TABLE [dbo].[Sala$] CHECK CONSTRAINT [FK_Sala$_Clase$]
GO
ALTER TABLE [dbo].[Sala$]  WITH CHECK ADD  CONSTRAINT [FK_Sala$_Disciplina$] FOREIGN KEY([Disciplina_FK_PK])
REFERENCES [dbo].[Disciplina$] ([Disciplina_PK])
GO
ALTER TABLE [dbo].[Sala$] CHECK CONSTRAINT [FK_Sala$_Disciplina$]
GO
ALTER TABLE [dbo].[Socio$]  WITH CHECK ADD  CONSTRAINT [FK_Socio$_Persona$] FOREIGN KEY([DNI_FK])
REFERENCES [dbo].[Persona$] ([DNI_PK])
GO
ALTER TABLE [dbo].[Socio$] CHECK CONSTRAINT [FK_Socio$_Persona$]
GO
