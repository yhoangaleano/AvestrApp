USE [AvestrApp]
GO
/****** Object:  Table [dbo].[TipoPersona]    Script Date: 07/03/2016 12:34:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPersona](
	[idTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoPersona] [varchar](30) NOT NULL,
	[estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoPersona] PRIMARY KEY CLUSTERED 
(
	[idTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
