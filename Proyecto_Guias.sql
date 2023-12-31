﻿USE [db_name]
GO
/****** Object:  Table [dbo].[gj_aventura_usuario]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_aventura_usuario](
	[id_aventura] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_gj_aventura_usuario] PRIMARY KEY CLUSTERED 
(
	[id_aventura] ASC,
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_aventuras]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_aventuras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](800) NOT NULL,
	[importante] [bit] NOT NULL,
	[orden] [int] NOT NULL,
	[id_guia] [int] NOT NULL,
 CONSTRAINT [PK_dj_aventuras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_fuentes]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_fuentes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[img_url] [varchar](255) NOT NULL,
	[id_juego] [int] NOT NULL,
 CONSTRAINT [PK_gj_fuentes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_guia_usuario]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_guia_usuario](
	[id_guia] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_gj_guia_usuario] PRIMARY KEY CLUSTERED 
(
	[id_guia] ASC,
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_guias]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_guias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[orden] [int] NOT NULL,
	[id_juego] [int] NOT NULL,
 CONSTRAINT [PK_gj_guias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_img_aventuras]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_img_aventuras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img_url] [varchar](255) NOT NULL,
	[orden] [int] NOT NULL,
	[id_aventura] [int] NOT NULL,
 CONSTRAINT [PK_gj_img_aventuras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_img_background]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_img_background](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img_url] [varchar](255) NOT NULL,
	[id_juego] [int] NOT NULL,
 CONSTRAINT [PK_gj_img_background] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_juegos]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_juegos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[img_cover] [varchar](255) NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
 CONSTRAINT [PK_gj_juegos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_personajes]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_personajes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
	[img_url] [varchar](255) NOT NULL,
	[id_juego] [int] NOT NULL,
 CONSTRAINT [PK_gj_personajes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gj_usuarios]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gj_usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[token] [varchar](255) NOT NULL,
 CONSTRAINT [PK_gj_usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gj_aventura_usuario]  WITH CHECK ADD  CONSTRAINT [FK_gj_aventura_usuario_gj_aventuras] FOREIGN KEY([id_aventura])
REFERENCES [dbo].[gj_aventuras] ([id])
GO
ALTER TABLE [dbo].[gj_aventura_usuario] CHECK CONSTRAINT [FK_gj_aventura_usuario_gj_aventuras]
GO
ALTER TABLE [dbo].[gj_aventuras]  WITH CHECK ADD  CONSTRAINT [FK_gj_aventuras_gj_guias] FOREIGN KEY([id_guia])
REFERENCES [dbo].[gj_guias] ([id])
GO
ALTER TABLE [dbo].[gj_aventuras] CHECK CONSTRAINT [FK_gj_aventuras_gj_guias]
GO
ALTER TABLE [dbo].[gj_fuentes]  WITH CHECK ADD  CONSTRAINT [FK_gj_fuentes_gj_juegos] FOREIGN KEY([id_juego])
REFERENCES [dbo].[gj_juegos] ([id])
GO
ALTER TABLE [dbo].[gj_fuentes] CHECK CONSTRAINT [FK_gj_fuentes_gj_juegos]
GO
ALTER TABLE [dbo].[gj_guia_usuario]  WITH CHECK ADD  CONSTRAINT [FK_gj_guia_usuario_gj_guias] FOREIGN KEY([id_guia])
REFERENCES [dbo].[gj_guias] ([id])
GO
ALTER TABLE [dbo].[gj_guia_usuario] CHECK CONSTRAINT [FK_gj_guia_usuario_gj_guias]
GO
ALTER TABLE [dbo].[gj_guias]  WITH CHECK ADD  CONSTRAINT [FK_gj_guias_gj_juegos] FOREIGN KEY([id_juego])
REFERENCES [dbo].[gj_juegos] ([id])
GO
ALTER TABLE [dbo].[gj_guias] CHECK CONSTRAINT [FK_gj_guias_gj_juegos]
GO
ALTER TABLE [dbo].[gj_img_aventuras]  WITH CHECK ADD  CONSTRAINT [FK_gj_img_aventuras_gj_aventuras] FOREIGN KEY([id_aventura])
REFERENCES [dbo].[gj_aventuras] ([id])
GO
ALTER TABLE [dbo].[gj_img_aventuras] CHECK CONSTRAINT [FK_gj_img_aventuras_gj_aventuras]
GO
ALTER TABLE [dbo].[gj_img_background]  WITH CHECK ADD  CONSTRAINT [FK_gj_img_background_gj_juegos] FOREIGN KEY([id_juego])
REFERENCES [dbo].[gj_juegos] ([id])
GO
ALTER TABLE [dbo].[gj_img_background] CHECK CONSTRAINT [FK_gj_img_background_gj_juegos]
GO
ALTER TABLE [dbo].[gj_personajes]  WITH CHECK ADD  CONSTRAINT [FK_gj_personajes_gj_juegos] FOREIGN KEY([id_juego])
REFERENCES [dbo].[gj_juegos] ([id])
GO
ALTER TABLE [dbo].[gj_personajes] CHECK CONSTRAINT [FK_gj_personajes_gj_juegos]
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_aventura_estado_put]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_aventura_estado_put]
	@usuario AS VARCHAR(50),
	@token AS VARCHAR(255),
	@id_aventura AS INT,
	@estado AS BIT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_usuario AS INT = ISNULL((SELECT id FROM gj_usuarios WHERE usuario = @usuario AND token = @token), 0)
	
	IF (@id_usuario <> 0)
		BEGIN
			IF EXISTS (SELECT * FROM gj_aventura_usuario WHERE id_aventura = @id_aventura AND id_usuario = @id_usuario) 
				BEGIN
					UPDATE gj_aventura_usuario SET
						estado = @estado
					WHERE
						id_aventura = @id_aventura AND 
						id_usuario = @id_usuario
				END
			ELSE 
				BEGIN
					INSERT INTO gj_aventura_usuario
						(id_aventura, id_usuario, estado)
					VALUES
						(@id_aventura, @id_usuario, @estado)
				END
		END

	SELECT @usuario AS usuario, @estado AS estado

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_aventuras]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_aventuras]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		id,
		descripcion,
		importante,
		orden,
		id_guia
	FROM gj_aventuras

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_aventuras_byid_juego]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_aventuras_byid_juego]
	@id_juego AS INT,
	@user AS VARCHAR(255)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_usuario AS INT = ISNULL((SELECT id FROM gj_usuarios WHERE usuario = @user), 0)

	IF (@id_usuario <> 0)
		BEGIN
			SELECT
				a.id,
				a.descripcion,
				a.importante,
				a.orden,
				a.id_guia,
				ISNULL((SELECT b.estado FROM gj_aventura_usuario b WHERE b.id_aventura = a.id AND b.id_usuario = @id_usuario), 0) AS estado
			FROM gj_aventuras a 
				INNER JOIN gj_guias b ON a.id_guia = b.id
			WHERE
				b.id_juego = @id_juego
		END
	ELSE
		BEGIN
			SELECT
				a.id,
				a.descripcion,
				a.importante,
				a.orden,
				a.id_guia,
				0 AS estado
			FROM gj_aventuras a
				INNER JOIN gj_guias b ON a.id_guia = b.id
			WHERE
				b.id_juego = @id_juego
		END

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_aventuras_img]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_aventuras_img]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		id,
		img_url,
		orden,
		id_aventura
	FROM gj_img_aventuras

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_aventuras_img_byid_juego]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_aventuras_img_byid_juego]
	@id_juego AS INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		a.id,
		a.img_url,
		a.orden,
		a.id_aventura
	FROM gj_img_aventuras a
		INNER JOIN gj_aventuras b ON a.id_aventura = b.id
		INNER JOIN gj_guias c ON b.id_guia = c.id
	WHERE
		c.id_juego = @id_juego

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_background_img]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_background_img]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		a.id,
		a.img_url,
		a.id_juego
	FROM gj_img_background a

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_background_img_byid_juego]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_background_img_byid_juego]
	@id AS INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		a.id,
		a.img_url,
		a.id_juego
	FROM gj_img_background a
		INNER JOIN gj_juegos b ON a.id_juego = b.id
	WHERE
		b.id = @id

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_fuentes]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_fuentes]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		a.id,
		a.nombre,
		a.img_url,
		a.id_juego
	FROM gj_fuentes a

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_fuentes_byid_juego]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_fuentes_byid_juego]
	@id AS INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		a.id,
		a.nombre,
		a.img_url,
		a.id_juego
	FROM gj_fuentes a
		INNER JOIN gj_juegos b ON a.id_juego = b.id
	WHERE
		b.id = @id

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_guia_estado_put]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_guia_estado_put]
	@usuario AS VARCHAR(50),
	@token AS VARCHAR(255),
	@id_guia AS INT,
	@estado AS BIT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_usuario AS INT = ISNULL((SELECT id FROM gj_usuarios WHERE usuario = @usuario AND token = @token), 0)
	
	IF (@id_usuario <> 0)
		BEGIN
			IF EXISTS (SELECT * FROM gj_guia_usuario WHERE id_guia = @id_guia AND id_usuario = @id_usuario) 
				BEGIN
					UPDATE gj_guia_usuario SET
						estado = @estado
					WHERE
						id_guia = @id_guia AND 
						id_usuario = @id_usuario
				END
			ELSE 
				BEGIN
					INSERT INTO gj_guia_usuario
						(id_guia, id_usuario, estado)
					VALUES
						(@id_guia, @id_usuario, @estado)
				END
		END

	SELECT @usuario AS usuario, @estado AS estado

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_guias]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_guias]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		id,
		nombre,
		orden,
		id_juego
	FROM gj_guias

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_guias_byid_juego]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_guias_byid_juego]
	@id_juego AS INT,
	@user AS VARCHAR(255)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @id_usuario AS INT = ISNULL((SELECT id FROM gj_usuarios WHERE usuario = @user), 0)

	IF (@id_usuario <> 0)
		BEGIN
			SELECT
				a.id,
				a.nombre,
				a.orden,
				a.id_juego,
				ISNULL((SELECT b.estado FROM gj_guia_usuario b WHERE b.id_guia = a.id AND b.id_usuario = @id_usuario), 0) AS estado
			FROM gj_guias a
			WHERE
				a.id_juego = @id_juego
			ORDER BY
				a.orden
		END
	ELSE
		BEGIN
			SELECT
				a.id,
				a.nombre,
				a.orden,
				a.id_juego,
				0 AS estado
			FROM gj_guias a
			WHERE
				a.id_juego = @id_juego
			ORDER BY
				a.orden
		END
	
END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_juegos]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_juegos]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		id,
		nombre,
		img_cover,
		descripcion
	FROM gj_juegos

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_juegos_byid]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_juegos_byid]
	@id AS INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		a.id,
		a.nombre,
		a.img_cover,
		a.descripcion,
		(SELECT COUNT(b.id) FROM gj_personajes b WHERE a.id = b.id_juego) AS cant_personaes,
		(SELECT COUNT(c.id) FROM gj_fuentes c WHERE a.id = c.id_juego) AS cant_fuentes,
		(SELECT COUNT(d.id) FROM gj_guias d WHERE a.id = d.id_juego) AS cant_guias
	FROM gj_juegos a
	WHERE a.id = @id

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_personajes]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_personajes]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		id,
		nombre,
		descripcion,
		img_url,
		id_juego
	FROM gj_personajes

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_personajes_byid_juego]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_personajes_byid_juego]
	@id AS INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		a.id,
		a.nombre,
		a.descripcion,
		a.img_url,
		a.id_juego
	FROM gj_personajes a
		INNER JOIN gj_juegos b ON a.id_juego = b.id
	WHERE
		b.id = @id

END
GO
/****** Object:  StoredProcedure [dbo].[pa_gj_Usuario_post]    Script Date: 19-10-2023 16:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_gj_Usuario_post]
	@usuario VARCHAR(255),
	@token VARCHAR(255)
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT id FROM gj_usuarios WHERE usuario = @usuario) 
		BEGIN
			UPDATE gj_usuarios SET
				token = @token
			WHERE
				usuario = @usuario
		END
	ELSE
		BEGIN
			INSERT INTO gj_usuarios
				(usuario, token)
			VALUES
				(@usuario, @token)
		END

	SELECT
		id,
		usuario,
		token
	FROM gj_usuarios
	WHERE
		usuario = @usuario AND
		token = @token

END
GO

-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------

--UPDATE gj_juegos SET img_cover = 'https://bsite.net/metalflap/file?fileName=' + img_cover
--UPDATE gj_img_background SET img_url = 'https://bsite.net/metalflap/file?fileName=' + img_url
--UPDATE gj_personajes SET img_url = 'https://bsite.net/metalflap/file?fileName=' + img_url
--UPDATE gj_img_aventuras SET img_url = 'https://bsite.net/metalflap/file?fileName=' + img_url

SELECT * FROM gj_usuarios
--EXECUTE pa_gj_Usuario_post '', ''

SELECT * FROM gj_juegos
EXECUTE pa_gj_juegos
EXECUTE pa_gj_juegos_byid 1

SELECT * FROM gj_img_background
EXECUTE pa_gj_background_img
EXECUTE pa_gj_background_img_byid_juego 1

SELECT * FROM gj_fuentes
EXECUTE pa_gj_fuentes
EXECUTE pa_gj_fuentes_byid_juego 1

SELECT * FROM gj_personajes
EXECUTE pa_gj_personajes
EXECUTE pa_gj_personajes_byid_juego 1

SELECT * FROM gj_guias
EXECUTE pa_gj_guias
EXECUTE pa_gj_guias_byid_juego 1, ''

SELECT * FROM gj_guia_usuario
--EXECUTE pa_gj_guia_estado_put '', '', 1, 1

SELECT * FROM gj_aventuras
EXECUTE pa_gj_aventuras
EXECUTE pa_gj_aventuras_byid_juego 1, ''

SELECT * FROM gj_aventura_usuario
--EXECUTE pa_gj_aventura_estado_put '', '', 1, 1

SELECT * FROM gj_img_aventuras
EXECUTE pa_gj_aventuras_img
EXECUTE pa_gj_aventuras_img_byid_juego 1

--TRUNCATE TABLE gj_guias
--TRUNCATE TABLE gj_aventuras
--TRUNCATE TABLE gj_img_aventuras

SELECT * FROM gj_usuarios
SELECT * FROM gj_guia_usuario
SELECT * FROM gj_aventura_usuario
--TRUNCATE TABLE gj_usuarios
--TRUNCATE TABLE gj_guia_usuario
--TRUNCATE TABLE gj_aventura_usuario

--------------------------------------------------------------------
--------------------------------------------------------------------
--INSERT INTO gj_juegos
--	(id, nombre, img_cover, descripcion)
--VALUES
--	(1, 'Chrono Cross', 'cover_01.jpg', 'Lejos el mejor RPG en mi opinion personal. Precisamente, este juego, me inspiro hacer esta pagina.'),
--	(2, 'Comrades', 'cover_02.jpg', 'Creo que soy el único que juega a esto, los servidores siempre están vacíos.'),
--	(3, 'Darksiders 2', 'cover_03.jpg', 'Un MANJAR de los dioses.')

--INSERT INTO gj_img_aventuras
--	(id, img_url, id_juego)
--VALUES
--	(1, 'background_01.jpg', 1),
--	(2, 'background_02.jpg', 1),
--	(3, 'z_ffxvc_background_01.jpg', 2),
--	(4, 'z-ds2_background_01.jpg', 3),
--	(5, 'z-ds2_mapa_01.jpg', 3),
--	(6, 'z-ds2_mapa_02.jpg', 3),
--	(7, 'z-ds2_mapa_03.jpg', 3),
--	(8, 'z-ds2_mapa_04.jpg', 3)

--INSERT INTO gj_fuentes
--	(id, nombre, img_url, id_juego)
--VALUES
--	(1, 'Guia', 'https://guiamania.com/41154/', 1),
--	(2, 'Window Frame', 'https://www.ign.com/wikis/chrono-cross/Window_Frames/', 1),
--	(3, 'Finales', 'https://game8.co/games/Chrono-Cross-Radical-Dreamers-Edition/archives/375630/', 1),
--	(4, 'Items', 'https://game8.co/games/Chrono-Cross-Radical-Dreamers-Edition/archives/371977/', 1),
--	(6, 'Dragones', 'https://chrono.fandom.com/wiki/Chronopedia/', 1),
--	(7, 'Tecnicas', 'https://guiltybit.com/como-conseguir-las-tecnicas-definitivas-de-todos-los-personajes-en-chrono-cross/', 1),
--	(8, 'Criosphinx', 'https://chrono.fandom.com/wiki/Criosphinx/', 1),
--	(9, 'Bend of Time', 'https://chrono.fandom.com/wiki/Bend_of_Time/', 1),
--	(10, 'Triple Tech Delta Force', 'https://www.trueachievements.com/a356989/deadly-delta-achievement/', 1),
--	(11, 'Triple Tech Z-Slash', 'https://www.trueachievements.com/a356990/z-one-and-only-achievement/', 1)

--INSERT INTO gj_personajes
--	(id, nombre, descripcion, img_url, id_juego)
--VALUES
--	(1, 'Serge', 'Se obtiene al inciar la aventura', 'https://bsite.net/metalflap/file?fileName=pj_serge.png', 1),
--	(2, 'Mojo', 'Se obtiene con el Shark Tooth Amulet', 'https://bsite.net/metalflap/file?fileName=pj_mojo.png', 1),
--	(3, 'Leena', 'Se obtiene rechazando a Kid 3 veces', 'https://bsite.net/metalflap/file?fileName=pj_leena.png', 1),
--	(4, 'Poshul', 'Se obtiene rechazando a Kid 3 veces o en Arni Village dandole el hueso', 'https://bsite.net/metalflap/file?fileName=pj_poshul.png', 1),
--	(5, 'Kid', 'Se obtiene en Termina o Cape Howl', 'https://bsite.net/metalflap/file?fileName=pj_kid.png', 1),
--	(6, 'Guile', 'Se obtiene en Termina hablando con él en el bar', 'https://bsite.net/metalflap/file?fileName=pj_guile.png', 1),
--	(7, 'Nikki', 'Se obtiene en Termina hablando con Miki en el barco de Magical Dreamers', 'https://bsite.net/metalflap/file?fileName=pj_nikki.png', 1),
--	(8, 'Pierre', 'Se obtiene en Termina entregandole el Heros Medal en la herreria', 'https://bsite.net/metalflap/file?fileName=pj_pierre.png', 1),
--	(9, 'Glenn', 'Se obtiene en Termina al decidir No salvar a Kid', 'https://bsite.net/metalflap/file?fileName=pj_glenn.png', 1),
--	(10, 'Macha', 'Se obtiene en Termina al decidir No salvar a Kid', 'https://bsite.net/metalflap/file?fileName=pj_macha.png', 1),
--	(11, 'Doc', 'Se obtiene en Termina al decidir No salvar a Kid', 'https://bsite.net/metalflap/file?fileName=pj_doc.png', 1),
--	(12, 'Korcha', 'Se obtiene en Termina al decidir salvar a Kid', 'https://bsite.net/metalflap/file?fileName=pj_korcha.png', 1),
--	(13, 'Greco', 'Se obtiene en Termina al decidir salvar a Kid', 'https://bsite.net/metalflap/file?fileName=pj_greco.png', 1),
--	(14, 'Razzly', 'Se obtiene en Hydra Marsh al decidir salvar a Kid', 'https://bsite.net/metalflap/file?fileName=pj_razzly.png', 1),
--	(15, 'Mel', 'Se obtiene en Guldove, despue se capturarla y salir de la isla', 'https://bsite.net/metalflap/file?fileName=pj_mel.png', 1),
--	(16, 'Pip', 'Se obtiene en el barco fantasma', 'https://bsite.net/metalflap/file?fileName=pj_pip.png', 1),
--	(17, 'Luccia', 'Se obtiene en Viper Manor al ir nuevamente', 'https://bsite.net/metalflap/file?fileName=pj_luccia.png', 1),
--	(18, 'Lynx', 'Se obtiene despues del evento en Fort Dragonia', 'https://bsite.net/metalflap/file?fileName=pj_lynx.png', 1),
--	(19, 'Sprigg', 'Se obtiene en el Mundo Abstracto', 'https://bsite.net/metalflap/file?fileName=pj_sprigg.png', 1),
--	(20, 'Harle', 'Se obtiene en el Mundo Abstracto', 'https://bsite.net/metalflap/file?fileName=pj_harle.png', 1),
--	(21, 'Radius', 'Se obtiene al vencerlo en Arni Village', 'https://bsite.net/metalflap/file?fileName=pj_radius.png', 1),
--	(22, 'Zappa', 'Se obtiene en Termina con Lynx', 'https://bsite.net/metalflap/file?fileName=pj_zappa.png', 1),
--	(23, 'Van', 'Se obtiene en Termina con Lynx', 'https://bsite.net/metalflap/file?fileName=pj_van.png', 1),
--	(24, 'Norris', 'Se obtiene en Viper Manor si Radius esta en tu equipo', 'https://bsite.net/metalflap/file?fileName=pj_norris.png', 1),
--	(25, 'Starky', 'Se obtiene venciendolo en la isla de Sky Dragon', 'https://bsite.net/metalflap/file?fileName=pj_starky.png', 1),
--	(26, 'Janice', 'Se obtiene en el Zelbess al ganar el SLAM de combate', 'https://bsite.net/metalflap/file?fileName=pj_janice.png', 1),
--	(27, 'Sneff', 'Se obtiene en Zelbess despues de derrotar al sabio', 'https://bsite.net/metalflap/file?fileName=pj_sneff.png', 1),
--	(28, 'Irenes', 'Se obtiene en Zelbess despues de derrotar al sabio', 'https://bsite.net/metalflap/file?fileName=pj_irenes.png', 1),
--	(29, 'Miki', 'Se obtiene en Zelbess despues de derrotar al sabio', 'https://bsite.net/metalflap/file?fileName=pj_miki.png', 1),
--	(30, 'Zoah', 'Se obtiene en el bar de Termina, habitacion oculta', 'https://bsite.net/metalflap/file?fileName=pj_zoah.png', 1),
--	(31, 'Karsh', 'Se obtiene en el bar de Termina, habitacion oculta', 'https://bsite.net/metalflap/file?fileName=pj_karsh.png', 1),
--	(32, 'Orcha', 'Se obtiene en Viper Manor despues de rescatar a Riddel', 'https://bsite.net/metalflap/file?fileName=pj_orcha.png', 1),
--	(33, 'Grobyc', 'Se obtiene en Viper Manor despues del combate con el Mecha', 'https://bsite.net/metalflap/file?fileName=pj_grobyc.png', 1),
--	(34, 'Skelly', 'Se obtiene al conseguir todos sus huesos, son 6 en total', 'https://bsite.net/metalflap/file?fileName=pj_skelly.png', 1),
--	(35, 'Riddel', 'Se obtiene al rescatarla del ejercito en Viper Manor', 'https://bsite.net/metalflap/file?fileName=pj_riddel.png', 1),
--	(36, 'Viper', 'Se obtiene despues de rescatar a Riddel en Viper Manor', 'https://bsite.net/metalflap/file?fileName=pj_viper.png', 1),
--	(37, 'Fargo', 'Se obtiene despues de rescatar a Riddel en Viper Manor', 'https://bsite.net/metalflap/file?fileName=pj_fargo.png', 1),
--	(38, 'Marcy', 'Se obtiene despues de rescatar a Riddel en Viper Manor', 'https://bsite.net/metalflap/file?fileName=pj_marcy.png', 1),
--	(39, 'Turnip', 'Se obtiene en Hermits Hideaway (AW), (HW), utilizando Ice Gun o Ice Breath con Poshul en tu equip', 'https://bsite.net/metalflap/file?fileName=pj_turnip.png', 1),
--	(40, 'Funguy', 'Se obtiene en Shadow Forest al darle el Mushroom al hombre de la cueva en la cascada', 'https://bsite.net/metalflap/file?fileName=pj_funguy.png', 1),
--	(41, 'Neofio', 'Se obtiene en la pileta de Viper Manor con la Life Sparkle', 'https://bsite.net/metalflap/file?fileName=pj_neofio.png', 1),
--	(42, 'Leah', 'Se obtiene al llegar a la isla de Gaeas Navel', 'https://bsite.net/metalflap/file?fileName=pj_leah.png', 1),
--	(43, 'Steena', 'Se obtiene en Guldove al mostrarle el Dragon Emblem', 'https://bsite.net/metalflap/file?fileName=pj_steena.png', 1),
--	(44, 'Draggy', 'Se obtiene al poner el huevo gigante en Fort Dragonia', 'https://bsite.net/metalflap/file?fileName=pj_draggy.png', 1),
--	(45, 'Orlha', 'Se obtiene en Guldove devolviendole el Sapphire Brooch como Serge', 'https://bsite.net/metalflap/file?fileName=pj_orlha.png', 1)

--SET IDENTITY_INSERT gj_guias ON
--GO

--INSERT INTO gj_guias
--	(id, nombre, orden, id_juego)
--VALUES
--	(1, 'El Sueño', 1, 1),
--	(2, 'Final oculto: Programmer''s Ending (Final 1/11)', 2, 1),
--	(3, '(HW) Arni Village', 3, 1),
--	(4, '(HW) Lizard Rock', 4, 1),
--	(5, '(AW) Another World', 5, 1),
--	(6, '(AW) Hydra Swamp', 6, 1),
--	(7, '(AW) Fossil Valley', 7, 1),
--	(8, '(AW) Termina', 8, 1),
--	(9, 'Final oculto: General Kid (Final 2/11)', 9, 1),
--	(10, '(AW) Infiltración a Viper Manor', 10, 1),
--	(11, '(AW) Viper Manor', 11, 1),
--	(12, 'Final oculto: The 1 Hero (Final 3/11)', 12, 1),
--	(13, '(AW) Guldove', 13, 1),
--	(14, '(HW) Bosque Hydra', 14, 1),
--	(15, '(AW) Piratas Fantasmas', 15, 1),
--	(16, '(AW) Guldove | Termina | Viper Manor', 16, 1),
--	(17, '(HW) Arni Village', 17, 1),
--	(18, '(AW) Costa Este de El Nido', 18, 1),
--	(19, 'Final oculto: The Magical Dreamers (Final 4/11)', 19, 1),       
--	(20, '(AW) Fort Dragonia', 20, 1),
--	(21, 'Mundo Abstracto y el Más Allá', 21, 1),
--	(22, 'Final oculto: New Beginnings (Final 5/11)', 22, 1),
--	(23, '(HW) Termina', 23, 1),
--	(24, '(HW) Viper Manor', 24, 1),
--	(25, '(HW) Nido Triangle | Sky Dragon Isle | Marbule', 25, 1),        
--	(26, '(HW) El Zelbess de Fargo', 26, 1),
--	(27, '(HW) Mar del Edén', 27, 1),
--	(28, '(HW) Isla Maldita', 28, 1),
--	(29, '(HW) Mar del Edén', 29, 1),
--	(30, '(AW) Hydra Swamp | Termina', 30, 1),
--	(31, '(AW) Viper Manor', 31, 1),
--	(32, 'Final oculto: Onward Dragoons (Final 6/11)', 32, 1),
--	(33, '(AW) Guldove | Water Dragon Isle | Isle of the Damned | Termina', 33, 1),
--	(34, '(AW) Hermit''s Hideaway', 34, 1),
--	(35, 'Final oculto: Darkened Fate (Final 7/11)', 35, 1),
--	(36, '(AW) Isla del Dragón del Cielo', 36, 1),
--	(37, '(HW) Preparación', 37, 1),
--	(38, '(HW) Dragón Verde', 38, 1),
--	(39, '(HW) Dragón de Agua', 39, 1),
--	(40, '(HW) Dragón de Tierra', 40, 1),
--	(41, '(AW) Dragón de Fuego', 41, 1),
--	(42, '(AW) Dragón Negro', 42, 1),
--	(43, '(AW) Dragón del Cielo', 43, 1),
--	(44, '(AW) Criosphinx', 44, 1),
--	(45, '(AW) Guldove', 45, 1),
--	(46, '(HW) Fuerte Dragonian', 46, 1),
--	(47, '(AW) La Búsqueda de la Masamune', 47, 1),
--	(48, 'Final oculto: Career Change (Final 8/11)', 48, 1),
--	(49, '(HW) Mar de Edén', 49, 1),
--	(50, '(HW) Chronopolis', 50, 1),
--	(51, '(AW) Cascadas Divinas de los Dragones', 51, 1),
--	(52, 'Cosas por Hacer', 52, 1),
--	(53, '(AW) Hermit''s Hideaway', 53, 1),
--	(54, '(AW) El Nido Triangle', 54, 1),
--	(55, 'Final oculto: Return of the Downtrodden (Final 9/11)', 55, 1),  
--	(56, '(AW) Dinopolis y Terra Tower', 56, 1),
--	(57, '(HW) Playa Opassa', 57, 1),
--	(58, 'Final: 1 Ending (Final 10/11)', 58, 1),
--	(59, 'Final: Bad Ending (Final 11/11)', 59, 1),
--	(60, 'Consideraciones', 60, 1)

--SET IDENTITY_INSERT gj_guias OFF
--GO

--SET IDENTITY_INSERT gj_aventuras ON
--GO

--INSERT INTO gj_aventuras
--	(id, descripcion, importante, orden, id_guia)
--VALUES
--	(1, 'Obs: (HW) = Home World, (AW) = Another World debo validar (Turnip y Neofio)', 0, 1, 1),
--	(2, 'Sigue el camino hasta el pilar de luz', 0, 2, 1),
--	(3, 'Ponte encima de la plataforma magenta', 0, 3, 1),
--	(4, 'Entra por la puerta', 0, 4, 1),
--	(5, 'Inicias el juego con estos marcos (Marco 1/15) (Marco 2/15) (Marco 3/15)', 0, 5, 1),
--	(6, 'Cuando despiertes crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+. Vencer al Time Devourer inmediatamente sin reclutar compañeros', 1, 1, 2),
--	(7, 'Despiertas con Serge (Personaje 1/45)', 0, 1, 3),
--	(8, 'Habla con Marge (Mamá)', 0, 2, 3),
--	(9, 'Ve al puerto y habla con Leena', 0, 3, 3),
--	(10, 'Obten la Shellfish Window Frame (Marco 4/15) de la tienda de elements', 0, 4, 3),
--	(11, 'Consogue la Komodo Scale (Item /56) dandole la razon al vendedor y regalasela al muchacho', 0, 5, 3),
--	(12, 'Coge el Shark Tooth Amulet (Item /56) de uno de los tipos de las casas de la derecha', 0, 6, 3),
--	(13, 'Consigue el Heckran Bone (Item /56) de debajo de la cama del bar', 0, 7, 3),
--	(14, 'Habla con la camarera del bar la de los poemas y finalmente NO reclutes a Poshul aún', 0, 8, 3),
--	(15, 'Empuja la roca enfrente de la cueva, y lucha con el primer Komodo', 0, 1, 4),
--	(16, 'Usa el saliente para llegar el segundo Komodo', 0, 2, 4),
--	(17, 'Debes perseguir, para cazar y luego luchar con el tercer Komodo, y luego a Mamá Komodo', 0, 3, 4),
--	(18, 'Sal por la izquierda de la playa, y sigue recto…', 0, 4, 4),
--	(19, 'Ve a Arni y habla con Marge y Leena', 0, 1, 5),
--	(20, 'Habla con la camarera del bar la de los poemas', 0, 2, 5),
--	(21, 'Ve a Cape Howl y examina la tumba', 0, 3, 5),
--	(22, 'Lucharás con Karsh, Solt y Peppor', 0, 4, 5),
--	(23, 'Nombra a Kid pero NO la reclutes aún (rechazala 3 veces)', 0, 5, 5),
--	(24, 'Leena (Personaje 3/45) y Poshul (Personaje 4/45) se te unirán ahora, (es la única manera de conseguir a Leena)', 0, 6, 5),
--	(25, 'Ve donde conseguiste el Shark Tooth Amulet y muestraselo al predicador, se te unira Mojo (Personaje 2/45) al salir de alli', 0, 7, 5),
--	(26, 'Ve al noroeste, encuentra a un chico que te dará el Safety Gear (Item /56)', 0, 1, 6),
--	(27, 'Vete por ahora al Fossil Valley', 0, 2, 6),
--	(28, 'Obten el Heavy Skull (Item /56) de Skelly', 0, 1, 7),
--	(29, 'Obten las Bellflower (Item /56)', 0, 2, 7),
--	(30, 'Obten el Big Egg (Item /56) cerca del pájaro', 0, 3, 7),
--	(31, 'Continua el camino hacia el norte y lucha contra Solt y Peppor', 0, 4, 7),
--	(32, 'Ve a la estatua en lo más alto del pueblo, habla con el tipo que la esta limpiando, y consigue a Kid (Personaje 5/45) y obtendras el Tele Porter (Item /56)', 0, 1, 8),
--	(33, 'Obten el marco Tea for Three (Marco 5/15)', 0, 2, 8),
--	(34, 'Ve a la parte más al este del pueblo, dale las flores a Glenn', 0, 3, 8),
--	(35, 'Aqui debes decidir cual de los 3 personajes quieres reclutar para infiltrarte en el Viper Manor, No los puedes conseguir a todos en una partida, deberas iniciar una partida (NG+) para los 2 que falten', 0, 4, 8),
--	(36, 'Opción 1: Consigue a Guile (Personaje 6/45), Habla con él en el bar. Ve al cenemterio de Termina, encuentra el barco de Korcha y sube por el rompeolas', 1, 5, 8),
--	(37, 'Opción 2: Consigue a Pierre (Personaje 8/45), en la Herrería, primero debes conseguir el Hero''s Medal (Item /56) del del niño que juega afuera y devolverselo a Pierre, Ve a la puerta principal de Viper Manor', 1, 6, 8),
--	(38, 'Opción 3: Consigue a Nikki (Personaje 7/45), habla con todos en el barco de Magical Dreamers hasta que llegue Miki. Ve al Bosque Shadow, consigue la Aroma Pouch (Item /56) y úsalo para mover a los monstruitos hacia el monstruo-planta gigante, en la cueva de la cascada puedes encontrar el Skullduggery (Marco 6/15) y recoge la Angry Scapula (Item /56) de Skelly, avanza por el camino que bloqueaba el mounstruo, mueve la roca para detener a los insectos, avanza hasta salir por el pozo', 1, 7, 8),
--	(39, 'Crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+. Vencer al Time Devourer antes de infiltrarte en Viper Manor', 1, 1, 9),
--	(40, 'La puerta principal está cerrada', 0, 1, 10),
--	(41, 'La llave Manor Key (Item /56) está en la parte superior derecha del establo de alimentación de dragones', 0, 2, 10),
--	(42, 'Debes jugar al juego de alimentar dragones al menos una vez, si quieres alimentarlos todos sin fallar, puedes usar el Time Shifter (Item /56) que puedes obtener en la partida (NG+)', 0, 3, 10),
--	(43, 'Gira la estatua de la serpiente, y cae en la trampa', 0, 1, 11),
--	(44, 'Lucha con los guardias, coge su ropa y entra en las habitaciones de la parte izquierda', 0, 2, 11),
--	(45, 'En la cocina, habla con Glenn, ve a su habitación, y te escribirá la combinación de la estatua', 0, 3, 11),
--	(46, 'En las habitaciones de la derecha, recoge todos los articulos y el pendiente para caer en otra trampa', 0, 4, 11),
--	(47, 'Lucha con los bichos de Luccia', 0, 5, 11),
--	(48, 'Libera al criatura que esta enjaulada', 0, 6, 11),
--	(49, 'La habitacion que esta al lado del laboratorio podras conseguir el Decor Shield (Item /56), si la colocas en la armadura sin escudo encontraras una habitacion secreta', 0, 7, 11),
--	(50, 'Vuelve a la entrada y usa la combinación apropiada en la estatua de la serpiente', 0, 8, 11),
--	(51, 'Ve al oeste, a la biblioteca, verás a Balthasar (Chrono Trigger), lucha con Marcy', 0, 9, 11),
--	(52, 'Obten el marco Porre''s Furnace (Marco 7/15)', 0, 10, 11),
--	(53, 'Habla con el viejo, vuelve a la habitación grande, busca en las columnas un botón que accione el ascensor', 0, 11, 11),
--	(54, 'Lucha con los guardias, toma el ascensor y pasa la puerta', 0, 12, 11),
--	(55, 'Lucha contra Lynx, habrá unas cuantas escenas', 0, 13, 11),
--	(56, 'Este final tiene 2 variantes, las variantes dependeran de que decisión tomas en Guldove', 0, 1, 12),
--	(57, 'Opcion 1: No salvar a Kid. Crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+, Vencer al Time Devourer inmediatamente despues de que Kid quede envenenada', 1, 2, 12),
--	(58, 'Opcion 2: Salvar a Kid. Crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+, Vencer al Time Devourer inmediatamente despues de encontrar la cura en Hydra Marsh y Kid se haya recuperado', 1, 3, 12),
--	(59, 'Tendras que eleguir entre salvar o NO salvar a kid recibiras el Astral Amulet (Item /56), dependiendo de la decicion podras obtener nuevos personajes distintos en ambos casos', 0, 1, 13),
--	(60, 'En ambos casos debes hablar con el Shaman y el enano del bar el cual te dara el Green Tinkler (Item /56)', 0, 2, 13),
--	(61, 'Opcion 1: No salvar a Kid: Habla con Korcha y luego con Macha, toma el barco de Kocha hacia Termina, en la entrada verás a Glenn. Vuelve al barco, conseguirás a Glenn (Personaje 9/45) y Macha (Personaje 10/45), Macha te dara el Tropical Paradise (Marco 8/15). Haz el capitulo: 15.- (AW) Piratas Fantasmas, luego vuelve a Guldove para ver al Doc y Kid. Se te unira el Doc (Personaje 11/45). Finalmente puedes hacer el capitulo: 14.- (HW) Bosque Hydra', 1, 3, 13),
--	(62, 'Opcion 2: Salvar a Kid: Se te une Korcha (Personaje 12/45), Toma el barco hacia Termina, en la entrada verás a Glenn, Ve a la Playa Opassa, Haz el capitulo: 14.- (HW) Bosque Hydra, vuelve a Guldove, asegúrate de darle el medicamento a Kid y luego trata de captura a Mel (Personaje 13/45) si es que las quieres conseguir, ella te da el Guldovian Stitch (Marco 9/15), para ello deberas hablar con Orla y el portero del Shaman luego ve al escondite de Mel. Viaja a Termina, escucha a Glenn Vuelve al bote aceptando a Korcha NUEVAMENTE y viaja a Guldove a la casa de Mel (Por fin se une la bastarda). Finalmente ve al capitulo: 15.- (AW) Piratas Fantasmas', 1, 4, 13),
--	(63, 'Lega a la playa y viaja al (HW) con el Astral Amulet de Kid', 0, 1, 14),
--	(64, 'Ve al Hydra Marsh, lucha con Beeba, obten la Beeba Flute (Item /56) y úsala al norte de todo, Lucha contra el Wingapede y cae por el agujero en donde acabas de pelear', 0, 2, 14),
--	(65, 'No Salvar a Kid: Al caer por el agujero veras que el pulpo ya se comio a Razzly', 1, 3, 14),
--	(66, 'Salvar a Kid: Lucha con el pulpo y consigue a Razzly el hada (Personaje 14/45), sigue por la parte norte luego este, lucha contra la Hydra, obtendras la Hydra Humour (Item /56)', 1, 4, 14),
--	(67, 'Ve a la zona nublosa entre El Nido y el The Dead Sea', 0, 1, 15),
--	(68, 'Cuando ataquen los fantasmas, observa que la puerta principal está cerrada', 0, 2, 15),
--	(69, 'Mata a todos los esqueletos y habla con los piratas para encontrar una llave', 0, 3, 15),
--	(70, 'Durante el recorrido encontraras a la criatura que liberaste, si la capturas reclutaras a Pip (Personaje 15/45)', 0, 4, 15),
--	(71, 'Llega a la cubierta, lucha con el Diamond Jar', 0, 5, 15),
--	(72, 'Ve a guldove y consigue la Pelvic Bone (Item /56) de Skelly de la niña comerciante cerca del barco', 0, 1, 16),
--	(73, 'Ve a Termina y consigue a Greco (Personaje 16/45) en la casa del cementerio', 0, 2, 16),
--	(74, 'Ve a Viper Manor y busca Luccia (Personaje 17/45) para reclutarla', 0, 3, 16),
--	(75, 'Ve a Arni Village habla con la camarera del bar y te dara el Book of Poems (Item /56)', 0, 1, 17),
--	(76, 'Habla con el viejo pescador cerca de Leena, te llevará a la Isla del Dragón de Agua', 0, 2, 17),
--	(77, 'Aquí, ve hasta el Dragón de Agua y te dará el Ice Breath (Item /56)', 0, 3, 17),
--	(78, 'Cuando vuelvas a (AW) ve a Arni Village y entregale a la camarera el Book of Poems', 0, 4, 17),
--	(79, 'Ve en bote al refugio del hermitaño en (AW) y usa el Ice Breath en el suelo arido', 0, 5, 17),
--	(80, 'Cruza el Monte Piro, usa el Ice Breath para congelar la lava', 0, 1, 18),
--	(81, 'Te recomiendo recoger todos los cofres primero antes de congelar todo', 0, 2, 18),
--	(82, 'Cruza todo el Monte hasta llegar a Fort Dragonia', 0, 3, 18),
--	(83, 'Antes de terminar la Fortaleza, crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+. Vencer al Time Devourer con la siguiente formacion Nikki, Razzly y Kid, Para reemplazar a Serge del euipo puede usar el Relief Charm (Item /56) que obtienes al iniciar la partida NG+', 1, 1, 19),
--	(84, 'Resuelve todos los puzzles y jefes', 0, 1, 20),
--	(85, 'Debes vencer al SOL (Hincha Pelotas), toma el acensor', 0, 2, 20),
--	(86, 'Lynx y Viper estarán aquí, continua la historia...', 0, 3, 20),
--	(87, 'Hola Lynx (Personaje 18/45), toma una manzana del árbol y Sprigg vendrá', 0, 1, 21),
--	(88, 'Entra en su casa y podras reclutar a Sprigg (Personaje 19/45)', 0, 2, 21),
--	(89, 'Ve al norte, sigue a Serge a cada puerta que vaya (en tu piso)', 0, 3, 21),
--	(90, 'Harle (Personaje 20/45) se te une, avanza, escapa por el agujero y aparecerás en Hydra Marsh', 0, 4, 21),
--	(91, 'Crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+. Vencer al Time Devourer con Lynx', 1, 1, 22),
--	(92, 'Intenta cruzar el portal para ir a (HW) en la playa luego intenta cruzar el Fossil Valley', 0, 1, 23),
--	(93, 'Ve a Arni Village, habla con Marge y lucha contra Radius (Personaje 21/45) para reclutarlo', 0, 2, 23),
--	(94, 'Cruza el Fossil Valley y consigue el Infrared Vision (Marco 10/15)', 0, 3, 23),
--	(95, 'Ve Termina para reclutara Zappa (Personaje 22/45) este te data el Smith Spirit (Item /56) y a Van (Personaje 23/45)', 0, 4, 23),
--	(96, 'Con Radius ve a Termina a buscar a Norris, luego entra por el Shadow Forest, despues de hablar con el niño salvar a un hombre ,golpeando a un insecto ahogado, y te dara el Mushroom (Item /56). Puedes obtener Funguy (Personaje 40/45) si le das el champiñon al hombre de la cueva', 0, 1, 24),
--	(97, 'Ve por las mazmorras, si no puedes pasar tendras que ir por la entrada principal y bajar por el pozo. Habla con Norris (Personaje 24/45), se te unirá si Radius está contigo', 0, 2, 24),
--	(98, 'Ve a Termina, ahora podras usar un bote inflable donde estaba el barco de Nikki', 0, 3, 24),
--	(99, 'Ve al Nido Triangle, nada hasta el fondo y obten el Star Fragment (Item /56)', 0, 1, 25),
--	(100, 'Ve a Sky Dragon Isle e intenta abrir el cofre, lucha contra Starky (Personaje 25/45) y véncelo para reclutarlo, obten Our Favorite Martian (Marco 11/15)', 0, 2, 25),
--	(101, 'Ve Marbule sin ningun humano en tu equipo, habla con Toma, haz todas las preguntas y habla con el otro tipo, y obten el Valencian Cloth (Marco 12/15), duerme en la posada, habla con Irenes por la noche', 0, 3, 25),
--	(102, 'Intenta cruzar la puerta del fondo del barco, Fargo te debe dar permiso, abre la puerta siguiente y veras a un orejon que hace aseo, hablale', 0, 1, 26),
--	(103, 'Ve a pedirle a fargo permiso para cruzar la puerta, te hara juega a la Roulette y perderas. ve a la primera puerta debajo del casino, veras algo sospechozo', 0, 2, 26),
--	(104, 'Mira el show de Sneff, convertira a alguien en gato, sale y vuelve a entrar para que Sneff te convierta en gato', 0, 3, 26),   
--	(105, 'Mientras seas gato y le hablas al gato de la cocina podras obtener el Monster''s Mouth (Marco 13/15)', 0, 4, 26),
--	(106, 'Entra en el en la habitacion que esta debajo de la ruleta, roba el Handle (Item /56)', 0, 5, 26),
--	(107, 'Ve donde Sneff y que te vuelva a convertir, juega a la Roulette con Fargo otra vez. Perderá, ahora cruza esa puerta', 0, 6, 26),
--	(108, 'Si ganas los 3 combates del SLAM podras reclutar a Janice (Personaje 26/45)', 0, 7, 26),
--	(109, 'Lucha contra el Sabio y obten la Fiddler Crab (Item /56)', 0, 8, 26),
--	(110, 'Ve al casino donde esta la ruleta, luego ve a la segunda habitacion bajando las escaleras y reclutaras a Sneff (Personaje 27/45)', 0, 9, 26),
--	(111, 'Sube a la cubierta y luego por el mástil, aqui se unira Irenes (Personaje 28/45)', 0, 10, 26),
--	(112, 've al The Dead Sea y usa la Fiddler Crab, entra y verás la Masamune', 0, 1, 27),
--	(113, 'Después de hablar, ve a la Hermit''s Hideaway (HW), habla con Radius y recibe el Garai''s Keepsake (Item /56)', 0, 2, 27),       
--	(114, 'Llega al espejo de la izquierda del todo (bajando por el esqueleto serpiente)', 0, 1, 28),
--	(115, 'Lucha con Garai (a llorar a la playa)', 0, 2, 28),       
--	(116, 'Obten la Einlanzer (Item /56) y úsala para destruir la Masamune en Dead Sea', 0, 3, 28),
--	(117, 'Ve al The Dead Sea, recoge todos los cofres', 0, 1, 29), 
--	(118, 'Habla con el fantasma y se le caera algo, recogelo y Obten el Station Pass (Item /56) con este item podra obtener Obten el Medical Book (Item /56)', 0, 2, 29),
--	(119, 'Obten el Prop Sword (Item /56)', 0, 3, 29),
--	(120, 'Lucha con Miguel, y la ciudad será destruida (el Dragón del Cielo te salvará)', 0, 4, 29),
--	(121, 'Viaja por el portal de la playa a (AW)', 0, 1, 30),      
--	(122, 've a Hydra Marshes y explora todo lucha con jefes obtendras una habilidad especial, mas adelante en una lagunilla obten el Life Sparkle (Item /56) y Busca el Good Backbone (Item /56) de Skelly en una cueva (por la zona este)', 0, 2, 30),
--	(123, 'Ve al bar de Termina, hay una habitacion secreta, aqui podras reclutar a Zoah (Personaje 30/45) o Karsh (Personaje 31/45), siquieres obtener a los 2 deberas terminar el juego e iniciar (NG+) Pero si eliges a Karsh, Zoha se te unira en el S.S Zelbess tambien obtendras el Tear of Hate (Item /56)', 0, 3, 30),
--	(124, 'Opcion 1: Consigue a Zoah', 1, 4, 30),
--	(125, 'Opcion 2: Consigue a Karsh', 1, 5, 30),
--	(126, 'Ve a Viper Manor, habla con Norris en la habitación del oeste de la entrada y te dara la Prison Key (Item /56)', 0, 1, 31),    
--	(127, 'Si vas a la carcel, encontraras una la Parlor Key (Item /56)', 0, 2, 31),
--	(128, 'Ve a las alcantarillas desde la cocina, encuentra y apaga la válvula', 0, 3, 31),
--	(129, 'Vuelve a la primera sección, ahora ya puedes cruzar, y apaga la segunda válvula', 0, 4, 31),
--	(130, 'En la siguiente pantalla, sube la válvula y vuelve al otro lado', 0, 5, 31),
--	(131, 'Bájala, procede, y lucharás contra un bicho gordo, procede subir las escaleras', 0, 6, 31),
--	(132, 'Lucharás contra Dark Orcha para rescatar a Riddel, luego se te unira Orcha (Personaje 32/45)', 0, 7, 31),
--	(133, 'Sigue recto hacia la biblioteca, lucharás con Grovyc y Mecha', 0, 8, 31),
--	(134, 'Eapa hacia la biblioteca, lucha con Mecha otra vez, y escapa por la ventana', 0, 9, 31),
--	(135, 'Grobyc (Personaje 33/45) se unirá a tu grupo', 0, 10, 31),
--	(136, 'Crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+. Vencer al Time Devourer inmediatamente despues de rescatar a Riddel', 1, 1, 32),
--	(137, 'Ve a Guldove y Lucha con Orlha y conseguirás su Sapphire Brooch (Item /56), devuélvesela cuando seas Serge de nuevo, y se te unirá', 0, 1, 33),
--	(138, 'Dale al Doc el libro para desbloquear su habilidad', 0, 2, 33),
--	(139, 'Ve Water Dragon Isle y a Un tipo te dará el Sturdy Ribs (Item /56) de Skelly', 0, 3, 33),
--	(140, 'Ve a Isle of the Damned, recoge los Mixed Bones (Item /56) de Skelly en la cueva al noroeste de la primera pantalla', 0, 4, 33),
--	(141, 'Si ya tienes todas las 6 partes de Skelly (Heavy Skull, Pelvic Bone, Mixed Bones, Angry Scapula, Good Backbone, Sturdy Ribs) ve a Termina a la casa de la derecha de la estatua de Viper, y se te unirá Skelly (Personaje 34/45) si hablas con la abuela', 0, 5, 33),      
--	(142, 'Habla con Riddel (Personaje 35/45) y se te unira', 0, 1, 34),
--	(143, 'Se te uniran Viper (Personaje 36/45), Fargo (Personaje 37/45) y Mercy (Personaje 38/45)... (Zoah o Karsh)', 0, 2, 34),
--	(144, 'Crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+. Vencer al Time Devourer despues de que Harle abandona tu grupo', 1, 1, 35),   
--	(145, 'Hay 8 dragones, uno por cada elemento', 0, 1, 36),       
--	(146, 'Recuerda robar a los dragones (con Fargo), cada dragón tiene una armadura que bloquea dicho elemento', 0, 2, 36),
--	(147, 'Son enemigos bastante básicos, usa magias de elementos opuestos', 0, 3, 36),
--	(148, 'Personajes del elemento innato opuesto hacen y reciben el doble de daño', 0, 4, 36),
--	(149, 'Personajes del mismo elemento que dicho dragón hacen y reciben la mitad de daño', 0, 5, 36),
--	(150, 'Elementos del mismo color los curarán', 0, 6, 36),       
--	(151, 'No hay un orden especifico para derrotarlos', 0, 7, 36), 
--	(152, 'Para activar la mision de los dragones hay q ir a hablar con el dragon del cielo', 0, 8, 36),
--	(153, 'Primero ve al S.S Zelbess (HW) lleva a Fargo a verse asimismo', 0, 1, 37),
--	(154, 'Después del concierto ve a Marbule y vence a todos los monstruos, cuando vuelvas podras reclutar a Miki (Personaje 29/45)', 0, 2, 37),
--	(155, 'Ve a Hydra Marshes (HW) y consigue la Ancient Fruit (Item /56), si no te la da el bicho ve a (AW) al mismo lugar para que te la de, luego vuelve', 0, 3, 37),
--	(156, 'En Hydra Marshes, usa la Beeba Flute cerca del segundo Beeba', 0, 1, 38),
--	(157, 'El bicho Hydra te llevará a Gaea''s Navel, aqui reclutas a Leah (Personaje 42/45)', 0, 2, 38),
--	(158, 'Roba la armadura cuando este debilitado, al vencerlo te dara la Green Relic (Item /56)', 0, 3, 38),
--	(159, 'Ve a la Isla del Dragón de Agua (Water Dragon Isle), esta al final del todo', 0, 1, 39),
--	(160, 'Roba la armadura cuando este debilitado, al vencerlo te dara la Blue Relic (Item /56)', 0, 2, 39),
--	(161, 'Ve a Cleared Earth Dragon Isle, entra por las arenas movedizas', 0, 1, 40),
--	(162, 'Debes ir a la izquierda y abajo de la cueva, obten los Explosive (Item /56) del NPC, si el NPC no esta trata de mover a la tortuga, luego sale de la isla y vuelve a entrar', 0, 2, 40),
--	(163, 'Debes matar y poner cada tortuga en los agujeros géiser con los explosivos', 0, 3, 40),
--	(164, 'Salta dentro del nuevo agujero y lucha con el dragón', 0, 4, 40),
--	(165, 'Roba la armadura cuando este debilitado, al vencerlo te dara la Yellow Relic (Item /56)', 0, 5, 40),
--	(166, 'Ve al monte del Dragón de Fuego en Mount Pyre (AW)', 0, 1, 41),
--	(167, 'Ve a la cascada de lava, baja a la primera cascada y entra por la puerta', 0, 2, 41),
--	(168, 'Roba la armadura cuando este debilitado, al vencerlo te dara la Red Relic (Item /56)', 0, 3, 41),
--	(169, 'Ve a Marbule (AW), el dragón estará en la cueva, habla con el NPC y te dara el Quill and Papyrus (Marco 15/15)', 0, 1, 42),    
--	(170, 'Si tienes a Pierre, no tendrás que luchar con él para la Black Crest', 0, 2, 42),
--	(171, 'Roba la armadura cuando este debilitado, al vencerlo te dara la Black Relic (Item /56)', 0, 3, 42),
--	(172, 'Ve a Sky Dragon Isle y lucha con el dragon', 0, 1, 43),  
--	(173, 'Roba la armadura cuando este debilitado, al vencerlo te dara la White Relic (Item /56)', 0, 2, 43),
--	(174, 'Esta Mision es opcional (No es Importante) debes ir a Earth Dragon Isle y... (a llorar a la playa) sino esperar a la partida (NG+)', 1, 1, 44),
--	(175, 'Este dragon es el jefe mas dificil del juego, aun mas que el jefe final', 0, 2, 44),
--	(176, 'El truco para vencerlo es responder correctamente sus acertijo o luchando a fuerza bruta', 0, 3, 44),
--	(177, 'Si lograste robar la armadura con Fargo al dragon de tierra (Coraza Dorada) lo venceras en cuestion de tiempo', 0, 4, 44),     
--	(178, 'De lo contrario sera un jefe dificil, debes llevar muchas curas y trampas de elemento como Terremoto y Tormenta Electrica', 0, 5, 44),
--	(179, 'Si lo vences te dara las Gafas de Sol, uno de los mejores articulos de euipamiento del juego', 0, 6, 44),
--	(180, 'Muestra el cristal roto a Direa y Steena, y consigue el Dragon Emblem (Item /56)', 0, 1, 45),
--	(181, 'Enséñaselo al guardia de la tienda de Steena en Guldove (HW) y ella te dara el Dragon Tear (Item /56)', 0, 2, 45),
--	(182, 'Ahora Steena (Personaje 43/45) se te unira, Lleva a Steena a Fort Dragonia', 0, 3, 45),
--	(183, 'Ve a Fort Dragonia', 0, 1, 46),
--	(184, 'Pon el amuleto en la ranura de la entrada', 0, 2, 46),   
--	(185, 'Lucha contra Dark Serge en la sala del ascensor', 0, 3, 46),
--	(186, 'Baja, pon el huevo gigante en el centro y y obtendras a Draggy (Personaje 44/45)', 0, 4, 46),
--	(187, 'Sube a la habitación principal y abre la puerta, aqui obtendras el Tear of Love (Item /56)', 0, 5, 46),
--	(188, 'Esta mision es opcional y dificil, Necesitarás a Riddel y Karsh', 0, 1, 47),
--	(189, 'Lucha con Solt y Peppor en Isle of the Damned (AW) y obtendras el Memento Pendant (Item /56)', 0, 2, 47),
--	(190, 'Ve a la isla escondida al noreste de El Nido (HW)', 0, 3, 47),
--	(191, 'Usa el pendiente y esto hará que luches con Dario (a llorar a la playa)', 0, 4, 47),
--	(192, 'La Masamune se transformará en la la Mastermune, la mejor arma de Serge', 0, 5, 47),
--	(193, 'Pon a Glenn en posición principal y llévalo a la tumba de Dario', 0, 6, 47),
--	(194, 'Ve a Termina y procura de que Glen NO tenga equipada la Einlanzer, ve a la tumba familiar de Glen y obten la Einlanzer doble', 0, 7, 47),
--	(195, 'Crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+. Vencer al Time Devourer despues de vencer a Dario y antes de que aparezca Terra Tower', 1, 1, 48),
--	(196, 'Si quieres reclutar a Orlha (Personaje 45/45), ve a Guldove (AW) y dale el Sapphire Brooch', 0, 1, 49),
--	(197, 'Si tienes a Glenn, ahora le puedes equipar la Einlanzer', 0, 2, 49),
--	(198, 'Lleva a Steena al Sea of Eden y entra en uno de los agujeros', 0, 3, 49),
--	(199, 'Ve a cada una de las islas', 0, 4, 49),
--	(200, 'En la tercera tendrías que luchar contra los Destinos', 0, 5, 49),
--	(201, 'Se vienen los Mecha', 0, 1, 50),
--	(202, 'Encuentra la entrada a la sala de ordenadores y ve a la base', 0, 2, 50),
--	(203, 'Usa el control remoto robot para accionar el puente', 0, 3, 50),
--	(204, 'En la habitación principal, ve a la derecha hacia la habitación de las escaleras', 0, 4, 50),
--	(205, 'Hay un objeto importante para Grobyc en el cofre del fondo de todo', 0, 5, 50),
--	(206, 'En el segundo piso hay una habitación donde puedes activar el elevador', 0, 6, 50),
--	(207, 'En el tercero y cuarto piso, obsérvalo todo, pero no puedes entrar en una habitación', 0, 7, 50),
--	(208, 'En el primer piso, en el muelle, habla con el fantasma azul', 0, 8, 50),
--	(209, 'Ve a la habitación donde no pudiste entrar y coge la Card Key (Item /56)', 0, 9, 50),
--	(210, 'Ahora que el Séptimo dragón está aquí, el séptimo elemento es activado', 0, 10, 50),
--	(211, 'Ve al Divine Dragon Falls que están justo al este del Fossil Valley', 0, 1, 51),
--	(212, 'Usa los 2 fragmentos de cristal en los pilares, el Tear of Hate y el Tear of Love', 0, 2, 51),
--	(213, 'Ahora conseguirás el Chrono Cross (Item /56), y el elemento. Ponla en la primera ranura de Serge', 0, 3, 51),
--	(214, 'Presta atención en las bolas de colores que aparecen ahora en batalla, son importantes', 0, 4, 51),
--	(215, 'Ve a la casa de casa de Radius en Hermit''s Hideaway (HW) con Poshul en tu equipo', 0, 1, 52),
--	(216, 'Podras reclutar a Turnip (Personaje 39/45) para esto debes haber usa el Ice Breath o la Ice Gun en el suelo en Hermit''s Hideaway (AW)', 0, 2, 52),
--	(217, 'Ve a la pileta de Viper Manor (AW) con el Life Sparkle y obtendras a Neofio (Personaje 41/45)', 0, 3, 52),
--	(218, 'Ve con Viber en tu equipo podras conseguir los cofres de la sala secreta, despues de leer la carta en la oficina secreta', 0, 4, 52),
--	(219, 'Para entrar a la oficina secreta, debes mover la cabeza de la estatua de la izquierda', 0, 5, 52),
--	(220, 'Ve a Gaea''s Navel (AW) vence al cavernícola del arbol y consigues el Snakes & Orbs (Marco 14/15)', 0, 6, 52),
--	(221, 'Ve a Hermit''s Hideaway, verás a Kid', 0, 1, 53),
--	(222, 'Si tienes la Mastermune, entrarás en un sueño', 0, 2, 53),
--	(223, 'En casa de Lucca, busca por ahí y hay una puerta trampilla en la habitación de arriba derecha', 0, 3, 53),
--	(224, 'En la primera habitación, pulsa L2, Triangulo, R2, y Triangulo en la máquina', 0, 4, 53),
--	(225, 'Obtendrás el Ataque de nivel 7 de Kid', 0, 5, 53),       
--	(226, 'Necesitarás la Ice gun (Item /56) de Lucca para apagar las llamas', 0, 6, 53),
--	(227, 'Rescata a todos los niños hasta que alcances a Kid y el sueño se acabará', 0, 7, 53),
--	(228, 'Ve con Starky, y lucha con el pez gigante en el fondo del mar', 0, 1, 54),
--	(229, 'El Pez gigante es sólo débil al fuego, no a los ataques físicos', 0, 2, 54),
--	(230, 'Ahora vuela con el bote hacia Dinopolis', 0, 3, 54),     
--	(231, 'Crea un guardado independiente de la partida principal, cuando termines el juego carga esta partida con el Continue+. Vencer al Time Devourer antes de terminar Terra Tower', 1, 1, 55),
--	(232, 'Venciendo a los seis guardianes elementales', 0, 1, 56), 
--	(233, 'Se recomienda usar elementos trap para robar las invocaciones', 0, 2, 56),
--	(234, 'Al final, te encontrarás al Dragón Lunar', 0, 3, 56),    
--	(235, 'Atiende al orden de colores a los que cambia, y anotalos XD, igual los anote por ti', 0, 4, 56),
--	(236, 'Si lo vences, la Llama Congelada se perderá en una corriente temporal', 0, 5, 56),
--	(237, 'Obtendrás el Time Egg (Item /56), este item lo obtendras en la partida NG+', 0, 6, 56),
--	(238, 'Ve a la playa que gatillo todos los eventos de tu historia', 0, 1, 57),
--	(239, 'Habla con los Chrono, Lucca y Marle', 0, 2, 57),
--	(240, 'Aca podras sacar 2 finales Distintos uno bueno y el otro malo, crea un guardado independiente de la partida principal, cuando termines el juego NO guardes la partida nueva, sino que carga esta partida de forma normal para sacar el otro final.', 0, 3, 57),
--	(241, 'Usa el Time Egg encima del agujero de gusano lila para la batalla final y al terminar el juego recuperaras el Time Egg en el (NG+)', 0, 4, 57),
--	(242, 'Salva a Schala del Time Devourer tocando el Chrono Cross', 0, 1, 58),
--	(243, 'Para sto debes crear la secuencia de colores que realizo el Dragón Lunar', 0, 2, 58),
--	(244, 'Lanza elementos en este orden: Amarillo, Rojo, Verde, Azul, Negro, Blanco, y Chrono Cross', 1, 3, 58),
--	(245, 'Ayuda si esperas a que todos puedan usar hasta la octava fila', 0, 4, 58),
--	(246, 'Usa magias de curación de modo que el Time Devourer no lo cuente ni interrumpa tu orden de bolas', 0, 5, 58),
--	(247, 'Mata al Time Devourer junto a Schala! Sin usar la secuencia de colores', 1, 1, 59),
--	(248, 'Bend of Time, es un area oculta que solo se puede acceder en una partida NG+, aqui puedes luchar encontra Ozzie, Slash y Flea, personajes de Chrono Trigger, los puedes capturar para el Dopellgang de Sprigg', 1, 1, 60),
--	(249, 'Los 10 portales del Bend of Time son los siguientes. 1: Lizard Rock. 2: Viper Manor, Viper Manor Bluffs. 3: Water Dragon Isle, Hydra Marshes, S. S. Invincible. 4: Fort Dragonia, Temporal Vortex. 5: Shadow Forest, Fossil Valley, 6: Mt. Pyre, Isle of the Damned. 7: Dead Sea, 8: Marbule, Gaea''s Navel, Earth Dragon Isle. 9: Chronopolis, Sea of Eden. 10: Terra Tower, Lucca''s House.', 1, 2, 60),
--	(250, 'Para obtener a los 46 personajes se debe recorrer el juego al amenos 3 veces seguida usando el NG+ y usar el Chrono Cross en la casa de Sprigg', 1, 3, 60),
--	(251, 'Con el Chrono Cross puedes recuperar todos los personajes de las partidas anteriores PERO, para poder considerar a Harle, debes terminar el juego con Lynx y Harle e iniciar el NG+', 1, 4, 60),      
--	(252, 'Para obtener Guile, Nikki y Pierre se debe hacer en 3 pasadas, no se puede conseguir en una partida', 1, 5, 60),
--	(253, 'Para obtener Korcha, Mel ,Razzly o Macha, Glen, Doc se debe hacer en 2 pasadas, no se puede conseguir en una partida', 1, 6, 60),
--	(254, 'Leena solo se puede obtener rechazando a Kid 3 veces en Cape Howl', 1, 7, 60)

--SET IDENTITY_INSERT gj_aventuras OFF
--GO

--SET IDENTITY_INSERT gj_img_aventuras ON
--GO

--INSERT INTO gj_img_aventuras
--	(id, img_url, orden, id_aventura)
--VALUES
--	(1, 'frame_arnian_wood.jpg', 1, 5),
--	(2, 'frame_simple_line.jpg', 2, 5),
--	(3, 'frame_iron_plate.jpg', 3, 5),
--	(4, 'final_01.jpg', 1, 6),
--	(5, 'adv_03_01.jpg', 1, 10),
--	(6, 'frame_shellfish.jpg', 2, 10),
--	(7, 'adv_03_02.jpg', 1, 11),
--	(8, 'adv_03_03.jpg', 2, 11),
--	(9, 'item_komodo_scale.jpg', 3, 11),
--	(10, 'adv_03_04.jpg', 4, 11),
--	(11, 'adv_03_05.jpg', 1, 12),
--	(12, 'item_shark_tooth.jpg', 2, 12),
--	(13, 'adv_03_06.jpg', 1, 13),
--	(14, 'item_heckran.jpg', 2, 13),
--	(15, 'adv_03_07.jpg', 1, 14),
--	(16, 'adv_04_01.jpg', 1, 18),
--	(17, 'adv_04_02.jpg', 2, 18),
--	(18, 'adv_04_03.jpg', 3, 18),
--	(19, 'adv_05_01.jpg', 1, 22),
--	(20, 'adv_05_02.jpg', 2, 22),
--	(21, 'adv_05_03.jpg', 1, 23),
--	(22, 'adv_05_04.jpg', 2, 23),
--	(23, 'adv_05_05.jpg', 3, 23),
--	(24, 'adv_05_06.jpg', 1, 24),
--	(25, 'adv_05_07.jpg', 2, 24),
--	(26, 'adv_05_08.jpg', 1, 25),
--	(27, 'adv_05_09.jpg', 2, 25),
--	(28, 'adv_06_01.jpg', 1, 26),
--	(29, 'item_safety_gear.jpg', 2, 26),
--	(30, 'adv_07_01', 1, 28),
--	(31, 'adv_07_02', 2, 28),
--	(32, 'item_heavy_skull.jpg', 3, 28),
--	(33, 'adv_07_03.jpg', 1, 29),
--	(34, 'adv_07_04.jpg', 2, 29),
--	(35, 'item_bellflower.jpg', 3, 29),
--	(36, 'adv_07_05.jpg', 1, 30),
--	(37, 'item_big_egg.jpg', 2, 30),
--	(38, 'adv_08_01.jpg', 1, 32),
--	(39, 'adv_08_02.jpg', 2, 32),
--	(40, 'adv_08_03.jpg', 3, 32),
--	(41, 'item_tele_porter.jpg', 4, 32),
--	(42, 'adv_08_04.jpg', 1, 33),
--	(43, 'frame_tea_for_three.jpg', 2, 33),
--	(44, 'adv_08_05.jpg', 1, 34),
--	(45, 'adv_08_06.jpg', 2, 34),
--	(46, 'adv_08_07.jpg', 1, 36),
--	(47, 'adv_08_08.jpg', 2, 36),
--	(48, 'adv_08_09.jpg', 3, 36),
--	(49, 'adv_08_10.jpg', 1, 37),
--	(50, 'adv_08_11.jpg', 2, 37),
--	(51, 'item_heros_medal.jpg', 3, 37),
--	(52, 'adv_08_12.jpg', 4, 37),
--	(53, 'adv_08_13.jpg', 5, 37),
--	(54, 'adv_08_14.jpg', 1, 38),
--	(55, 'adv_08_15.jpg', 2, 38),
--	(56, 'adv_08_16.jpg', 3, 38),
--	(57, 'adv_08_17.jpg', 4, 38),
--	(58, 'item_angry_scapula.jpg', 5, 38),
--	(59, 'adv_08_18.jpg', 6, 38),
--	(60, 'item_aroma_pouch.jpg', 7, 38),
--	(61, 'frame_skullduggery.jpg', 8, 38),
--	(62, 'adv_08_19.jpg', 9, 38),
--	(63, 'adv_08_20.jpg', 10, 38),
--	(64, 'final_02.jpg', 1, 39),
--	(65, 'adv_10_01.jpg', 1, 41),
--	(66, 'adv_10_02.jpg', 2, 41),
--	(67, 'item_manor_key.jpg', 3, 41),
--	(68, 'item_time_shifter.jpg', 1, 42),
--	(69, 'adv_11_01.jpg', 1, 43),
--	(70, 'adv_11_02.jpg', 1, 45),
--	(71, 'adv_11_03.jpg', 2, 45),
--	(72, 'adv_11_04.jpg', 1, 48),
--	(73, 'adv_11_05.jpg', 2, 48),
--	(74, 'adv_11_06.jpg', 3, 48),
--	(75, 'adv_11_07.jpg', 4, 48),
--	(76, 'adv_11_08.jpg', 1, 49),
--	(77, 'item_decor_shield.jpg', 2, 49),
--	(78, 'adv_11_09.jpg', 3, 49),
--	(79, 'adv_11_10.jpg', 4, 49),
--	(80, 'adv_11_11.jpg', 1, 52),
--	(81, 'adv_11_12.jpg', 2, 52),
--	(82, 'frame_porres_furnace.jpg', 3, 52),
--	(83, 'adv_11_13.jpg', 1, 55),
--	(84, 'adv_11_14.jpg', 2, 55),
--	(85, 'final_03.jpg', 1, 56),
--	(86, 'adv_13_01.jpg', 1, 59),
--	(87, 'item_astral_amulet.jpg', 2, 59),
--	(88, 'adv_13_02.jpg', 1, 60),
--	(89, 'adv_13_03.jpg', 2, 60),
--	(90, 'item_green_tinkler.jpg', 3, 60),
--	(91, 'adv_13_04.jpg', 1, 61),
--	(92, 'adv_13_07.jpg', 2, 61),
--	(93, 'adv_13_08.jpg', 3, 61),
--	(94, 'adv_13_09.jpg', 4, 61),
--	(95, 'adv_13_10.jpg', 5, 61),
--	(96, 'adv_13_11.jpg', 6, 61),
--	(97, 'adv_15_01.jpg', 7, 61),
--	(98, 'adv_13_12.jpg', 8, 61),
--	(99, 'adv_13_13.jpg', 9, 61),
--	(100, 'frame_tropical_paradise.jpg', 10, 61),
--	(101, 'adv_13_05.jpg', 1, 62),
--	(102, 'adv_13_06.jpg', 2, 62),
--	(103, 'adv_13_09.jpg', 3, 62),
--	(104, 'adv_14_01.jpg', 4, 62),
--	(105, 'adv_13_14.jpg', 5, 62),
--	(106, 'adv_13_15.jpg', 6, 62),
--	(107, 'adv_13_16.jpg', 7, 62),
--	(108, 'adv_13_17.jpg', 8, 62),
--	(109, 'adv_13_18.jpg', 9, 62),
--	(110, 'frame_guldovian_stitch.jpg', 10, 62),
--	(111, 'adv_14_01.jpg', 1, 64),
--	(112, 'adv_14_02.jpg', 2, 64),
--	(113, 'item_beeba_flute.jpg', 3, 64),
--	(114, 'adv_14_03.jpg', 4, 64),
--	(115, 'adv_14_04.jpg', 1, 65),
--	(116, 'adv_14_05.jpg', 1, 66),
--	(117, 'adv_14_06.jpg', 2, 66),
--	(118, 'adv_14_07.jpg', 3, 66),
--	(119, 'adv_14_08.jpg', 4, 66),
--	(120, 'item_hydra_humour.jpg', 5, 66),
--	(121, 'adv_15_01.jpg', 1, 68),
--	(122, 'adv_15_02.jpg', 2, 68),
--	(123, 'adv_15_03.jpg', 1, 69),
--	(124, 'adv_15_04.jpg', 2, 69),
--	(125, 'adv_15_05.jpg', 1, 70),
--	(126, 'adv_16_01.jpg', 1, 72),
--	(127, 'item_pelvic_bone.jpg', 2, 72),
--	(128, 'adv_16_02.jpg', 1, 73),
--	(129, 'adv_16_03.jpg', 2, 73),
--	(130, 'adv_16_04.jpg', 1, 74),
--	(131, 'adv_16_05.jpg', 2, 74),
--	(132, 'adv_16_06.jpg', 3, 74),
--	(133, 'adv_16_07.jpg', 4, 74),
--	(134, 'adv_17_01.jpg', 1, 75),
--	(135, 'item_book_of_poems.jpg', 2, 75),
--	(136, 'adv_17_02.jpg', 1, 77),
--	(137, 'adv_17_03.jpg', 2, 77),
--	(138, 'item_ice_breath.jpg', 3, 77),
--	(139, 'adv_17_04.jpg', 4, 77),
--	(140, 'adv_17_05.jpg', 1, 78),
--	(141, 'adv_17_06.jpg', 1, 79),
--	(142, 'adv_17_07.jpg', 2, 79),
--	(143, 'adv_18_01.jpg', 1, 82),
--	(144, 'adv_18_02.jpg', 2, 82),
--	(145, 'adv_18_03.jpg', 3, 82),
--	(146, 'adv_18_04.jpg', 4, 82),
--	(147, 'final_04.jpg', 1, 83),
--	(148, 'item_relief_charm.jpg', 2, 83),
--	(149, 'adv_20_01.jpg', 1, 86),
--	(150, 'adv_20_02.jpg', 2, 86),
--	(151, 'adv_21_01.jpg', 1, 90),
--	(152, 'adv_21_02.jpg', 2, 90),
--	(153, 'final_05.jpg', 1, 91),
--	(154, 'adv_23_01.jpg', 1, 93),
--	(155, 'adv_23_02.jpg', 2, 93),
--	(156, 'frame_infrared_vision.jpg', 1, 94),
--	(157, 'adv_23_03.jpg', 1, 95),
--	(158, 'adv_23_04.jpg', 2, 95),
--	(159, 'adv_23_05.jpg', 3, 95),
--	(160, 'item_smith_spirit.jpg', 4, 95),
--	(161, 'adv_23_06.jpg', 5, 95),
--	(162, 'adv_23_07.jpg', 6, 95),
--	(163, 'adv_24_01.jpg', 1, 96),
--	(164, 'adv_24_02.jpg', 2, 96),
--	(165, 'item_mushroom.jpg', 3, 96),
--	(166, 'adv_24_03.jpg', 4, 96),
--	(167, 'adv_24_04.jpg', 5, 96),
--	(168, 'adv_24_05.jpg', 1, 97),
--	(169, 'adv_24_06.jpg', 2, 97),
--	(170, 'adv_24_07.jpg', 3, 97),
--	(171, 'adv_24_08.jpg', 4, 97),
--	(172, 'adv_24_09.jpg', 1, 98),
--	(173, 'adv_25_01.jpg', 1, 99),
--	(174, 'adv_25_02.jpg', 2, 99),
--	(175, 'item_star_fragment.jpg', 3, 99),
--	(176, 'adv_25_03.jpg', 1, 100),
--	(177, 'adv_25_04.jpg', 2, 100),
--	(178, 'frame_our_favorite_martian.jpg', 3, 100),        
--	(179, 'adv_25_05.jpg', 1, 101),
--	(180, 'frame_valencian_cloth.jpg', 2, 101),
--	(181, 'adv_25_06.jpg', 3, 101),
--	(182, 'adv_26_01.jpg', 1, 103),
--	(183, 'adv_26_02.jpg', 2, 103),
--	(184, 'adv_26_03.jpg', 3, 103),
--	(185, 'adv_26_04.jpg', 4, 103),
--	(186, 'adv_26_05.jpg', 1, 107),
--	(187, 'adv_26_06.jpg', 2, 107),
--	(188, 'frame_monsters_mouth.jpg', 3, 107),
--	(189, 'adv_26_07.jpg', 4, 107),
--	(190, 'item_handle.jpg', 5, 107),
--	(191, 'adv_26_08.jpg', 6, 107),
--	(192, 'adv_26_09.jpg', 1, 111),
--	(193, 'adv_26_10.jpg', 2, 111),
--	(194, 'adv_26_11.jpg', 3, 111),
--	(195, 'item_fiddler_crab.jpg', 4, 111),
--	(196, 'adv_26_12.jpg', 5, 111),
--	(197, 'adv_26_13.jpg', 6, 111),
--	(198, 'adv_26_14.jpg', 7, 111),
--	(199, 'adv_27_01.jpg', 1, 113),
--	(200, 'adv_27_02.jpg', 2, 113),
--	(201, 'adv_27_03.jpg', 3, 113),
--	(202, 'adv_27_04.jpg', 4, 113),
--	(203, 'adv_27_05.jpg', 5, 113),
--	(204, 'item_garais_keepsake.jpg', 6, 113),
--	(205, 'adv_28_01.jpg', 1, 116),
--	(206, 'adv_28_02.jpg', 2, 116),
--	(207, 'item_einlanzer.jpg', 3, 116),
--	(208, 'adv_28_03.jpg', 4, 116),
--	(209, 'adv_29_01.jpg', 1, 118),
--	(210, 'item_station_pass.jpg', 2, 118),
--	(211, 'adv_29_02.jpg', 3, 118),
--	(212, 'item_medical_book.jpg', 4, 118),
--	(213, 'adv_29_03.jpg', 1, 119),
--	(214, 'item_prop_sword.jpg', 2, 119),
--	(215, 'adv_30_01.jpg', 1, 122),
--	(216, 'adv_30_02.jpg', 2, 122),
--	(217, 'item_life_sparkle.jpg', 3, 122),
--	(218, 'adv_30_03.jpg', 4, 122),
--	(219, 'item_good_backbone.jpg', 5, 122),
--	(220, 'adv_30_04.jpg', 1, 123),
--	(221, 'adv_30_05.jpg', 2, 123),
--	(222, 'item_tear_of_hate.jpg', 3, 123),
--	(223, 'adv_30_06.jpg', 4, 123),
--	(224, 'adv_31_01.jpg', 1, 126),
--	(225, 'item_prison_key.jpg', 2, 126),
--	(226, 'adv_31_02.jpg', 1, 127),
--	(227, 'item_parlor_key.jpg', 2, 127),
--	(228, 'adv_31_03.jpg', 1, 131),
--	(229, 'adv_31_04.jpg', 2, 131),
--	(230, 'adv_31_05.jpg', 3, 131),
--	(231, 'adv_31_06.jpg', 4, 131),
--	(232, 'adv_31_07.jpg', 1, 135),
--	(233, 'adv_31_08.jpg', 2, 135),
--	(234, 'final_06.jpg', 1, 136),
--	(235, 'adv_33_01.jpg', 1, 138),
--	(236, 'item_sapphire_brooch.jpg', 2, 138),
--	(237, 'adv_33_02.jpg', 3, 138),
--	(238, 'adv_33_03.jpg', 4, 138),
--	(239, 'adv_33_04.jpg', 1, 139),
--	(240, 'item_sturdy_ribs.jpg', 2, 139),
--	(241, 'adv_33_05.jpg', 1, 140),
--	(242, 'item_mixed_bones.jpg', 2, 140),
--	(243, 'adv_33_06.jpg', 1, 141),
--	(244, 'adv_33_07.jpg', 2, 141),
--	(245, 'adv_34_01.jpg', 1, 143),
--	(246, 'adv_34_02.jpg', 2, 143),
--	(247, 'adv_34_03.jpg', 3, 143),
--	(248, 'adv_34_04.jpg', 4, 143),
--	(249, 'final_07.jpg', 1, 144),
--	(250, 'adv_37_01.jpg', 1, 153),
--	(251, 'adv_37_02.jpg', 2, 153),
--	(252, 'adv_37_03.jpg', 1, 154),
--	(253, 'adv_37_04.jpg', 2, 154),
--	(254, 'adv_37_05.jpg', 3, 154),
--	(255, 'adv_37_06.jpg', 1, 155),
--	(256, 'item_ancient_fruit.jpg', 2, 155),
--	(257, 'adv_38_01.jpg', 1, 157),
--	(258, 'adv_38_02.jpg', 2, 157),
--	(259, 'adv_38_03.jpg', 1, 158),
--	(260, 'item_green_relic.jpg', 2, 158),
--	(261, 'adv_38_04.jpg', 3, 158),
--	(262, 'adv_39_01.jpg', 1, 160),
--	(263, 'adv_39_02.jpg', 2, 160),
--	(264, 'item_blue_relic.jpg', 3, 160),
--	(265, 'adv_40_01.jpg', 1, 162),
--	(266, 'adv_40_02.jpg', 2, 162),
--	(267, 'adv_40_03.jpg', 3, 162),
--	(268, 'item_explosive.jpg', 4, 162),
--	(269, 'adv_40_04.jpg', 1, 165),
--	(270, 'item_yellow_relic.jpg', 2, 165),
--	(271, 'adv_41_01.jpg', 1, 168),
--	(272, 'adv_41_02.jpg', 2, 168),
--	(273, 'item_red_relic.jpg', 3, 168),
--	(274, 'adv_42_01.jpg', 1, 169),
--	(275, 'frame_quill_and_papyrus.jpg', 2, 169),
--	(276, 'adv_42_02.jpg', 1, 171),
--	(277, 'item_black_relic.jpg', 2, 171),
--	(278, 'adv_43_01.jpg', 1, 173),
--	(279, 'adv_43_02.jpg', 2, 173),
--	(280, 'item_white_relic.jpg', 3, 173),
--	(281, 'adv_44_01.jpg', 1, 179),
--	(282, 'adv_45_01.jpg', 1, 180),
--	(283, 'item_dragon_emblem.jpg', 2, 180),
--	(284, 'adv_45_02.jpg', 1, 182),
--	(285, 'adv_45_03.jpg', 2, 182),
--	(286, 'item_dragon_tear.jpg', 3, 182),
--	(287, 'adv_45_04.jpg', 4, 182),
--	(288, 'adv_46_01.jpg', 1, 187),
--	(289, 'adv_46_02.jpg', 2, 187),
--	(290, 'adv_46_03.jpg', 3, 187),
--	(291, 'item_tear_of_love.jpg', 4, 187),
--	(292, 'adv_47_01.jpg', 1, 189),
--	(293, 'adv_47_02.jpg', 2, 189),
--	(294, 'item_memento_pendant.jpg', 3, 189),
--	(295, 'adv_47_03.jpg', 1, 194),
--	(296, 'adv_47_04.jpg', 2, 194),
--	(297, 'adv_47_05.jpg', 3, 194),
--	(298, 'final_08.jpg', 1, 195),
--	(299, 'adv_49_01.jpg', 1, 200),
--	(300, 'adv_49_02.jpg', 2, 200),
--	(301, 'adv_49_03.jpg', 3, 200),
--	(302, 'adv_49_04.jpg', 4, 200),
--	(303, 'adv_50_01.jpg', 1, 205),
--	(304, 'adv_50_02.jpg', 2, 205),
--	(305, 'adv_50_03.jpg', 1, 209),
--	(306, 'adv_50_04.jpg', 2, 209),
--	(307, 'item_card_key.jpg', 3, 209),
--	(308, 'adv_50_05.jpg', 4, 209),
--	(309, 'adv_51_01.jpg', 1, 213),
--	(310, 'adv_51_02.jpg', 2, 213),
--	(311, 'adv_51_03.jpg', 3, 213),
--	(312, 'item_chrono_cross.jpg', 4, 213),
--	(313, 'adv_52_01.jpg', 1, 216),
--	(314, 'adv_52_02.jpg', 1, 217),
--	(315, 'adv_52_03.jpg', 2, 217),
--	(316, 'adv_52_04.jpg', 1, 219),
--	(317, 'adv_52_05.jpg', 2, 219),
--	(318, 'adv_52_06.jpg', 1, 220),
--	(319, 'adv_52_07.jpg', 2, 220),
--	(320, 'adv_52_08.jpg', 3, 220),
--	(321, 'adv_53_01.jpg', 1, 227),
--	(322, 'adv_53_02.jpg', 2, 227),
--	(323, 'adv_53_03.jpg', 3, 227),
--	(324, 'item_ice_gun.jpg', 4, 227),
--	(325, 'adv_54_01.jpg', 1, 230),
--	(326, 'final_09.jpg', 1, 231),
--	(327, 'adv_56_01.jpg', 1, 237),
--	(328, 'adv_56_02.jpg', 2, 237),
--	(329, 'item_time_egg.jpg', 3, 237),
--	(330, 'final_10.jpg', 4, 237),
--	(331, 'adv_57_01.jpg', 1, 241)

--SET IDENTITY_INSERT gj_img_aventuras OFF
--GO
--------------------------------------------------------------------
--------------------------------------------------------------------