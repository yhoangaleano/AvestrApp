USE [AvestrApp]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 07/03/2016 12:34:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[nombrePersona] [varchar](50) NOT NULL,
	[apellidoPersona] [varchar](50) NOT NULL,
	[usuario] [varchar](20) NOT NULL,
	[contrasenia] [varchar](100) NOT NULL,
	[salt] [varchar](100) NOT NULL,
	[edad] [tinyint] NOT NULL,
	[estado] [tinyint] NOT NULL CONSTRAINT [DF_Persona_estado]  DEFAULT ((1)),
	[idTipoPersona] [int] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_TipoPersona] FOREIGN KEY([idTipoPersona])
REFERENCES [dbo].[TipoPersona] ([idTipoPersona])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_TipoPersona]
GO
