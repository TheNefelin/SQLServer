
-- Tablas -------------------------------------------------------
-- --------------------------------------------------------------
CREATE TABLE PF_EnlacesGrps (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Estado BIT NOT NULL,
	UNIQUE (Nombre),
)
GO

CREATE TABLE PF_Enlaces (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	EnlaceUrl VARCHAR(256) NOT NULL,
	Estado BIT NOT NULL,
	Id_EnlaceGrp INT NOT NULL,
	UNIQUE (Nombre),
	FOREIGN KEY (Id_EnlaceGrp) REFERENCES PF_EnlacesGrps(Id),
)
GO

CREATE TABLE PF_Youtube (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Embed VARCHAR(50) NOT NULL,
	UNIQUE (Nombre),
	UNIQUE (Embed),
)
GO

CREATE TABLE PF_Proyectos (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	ImgUrl VARCHAR(100) NOT NULL
)
GO

CREATE TABLE PF_Lenguajes (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	ImgUrl VARCHAR(100) NOT NULL,
)
GO

CREATE TABLE PF_Tecnologias (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	ImgUrl VARCHAR(100) NOT NULL,
)
GO

CREATE TABLE PF_Pro_Leng (
	Id_Proyecto INT,
	Id_Lenguaje INT,
	PRIMARY KEY (Id_Proyecto, Id_Lenguaje),
	FOREIGN KEY (Id_Proyecto) REFERENCES PF_Proyectos(Id),
	FOREIGN KEY (Id_Lenguaje) REFERENCES PF_Lenguajes(Id)
)
GO

CREATE TABLE PF_Pro_Tec (
	Id_Proyecto INT,
	Id_Tecnologia INT,
	PRIMARY KEY (Id_Proyecto, Id_Tecnologia),
	FOREIGN KEY (Id_Proyecto) REFERENCES PF_Proyectos(Id),
	FOREIGN KEY (Id_Tecnologia) REFERENCES PF_Tecnologias(Id)
)
GO

DROP TABLE PF_Enlaces
DROP TABLE PF_EnlacesGrps
DROP TABLE PF_Youtube
DROP TABLE PF_Pro_Leng
DROP TABLE PF_Pro_Tec
DROP TABLE PF_Proyectos
DROP TABLE PF_Lenguajes
DROP TABLE PF_Tecnologias

-- Data ---------------------------------------------------------
-- --------------------------------------------------------------
SET IDENTITY_INSERT PF_EnlacesGrps ON
GO
INSERT INTO PF_EnlacesGrps
	(Id, Nombre, Estado)
VALUES
	(1, 'Framework', 1),
	(2, 'Learning', 1),
	(3, 'Hosting', 1),
	(4, 'Images', 1),
	(5, 'Tools', 1),
	(6, 'IA', 1),
	(7, 'Agile', 1),
	(8, 'My Links', 1)
GO
SET IDENTITY_INSERT PF_EnlacesGrps OFF
GO

SET IDENTITY_INSERT PF_Enlaces ON
GO
INSERT INTO PF_Enlaces
	(Id, Nombre, EnlaceUrl, Estado, Id_EnlaceGrp)
VALUES 
	(1, 'Strapi', 'https://strapi.io', 1, 1),
	(2, 'Mui', 'https://mui.com', 1, 1),
	(3, 'Tailwindcss', 'https://tailwindcss.com', 1, 1),
	(4, 'DaisyUI', 'https://daisyui.com', 1, 1),
	(5, 'Flowbite', 'https://flowbite.com', 1, 1),
	(6, 'NextJS', 'https://nextjs.org', 1, 1),
	(7, 'NextUI', 'https://nextui.org', 1, 1),
	(8, 'NextAuth', 'https://next-auth.js.org', 1, 1),
	(9, 'FastAPI', 'https://fastapi.tiangolo.com', 1, 1),
	(10, 'Tremor', 'https://www.tremor.so', 1, 1),
	(11, 'Heroicons', 'https://heroicons.com', 1, 1),
	(12, 'JavaJDK', 'https://www.oracle.com/cl/java/technologies/downloads', 1, 1),
	(13, 'CodeDex', 'https://www.codedex.io', 1, 2),
	(14, 'w3schools', 'https://www.w3schools.com', 1, 2),
	(15, 'Scrimba', 'https://scrimba.com', 1, 2),
	(16, 'Animate', 'https://animate.style', 1, 2),
	(17, 'CodelyTV', 'https://www.youtube.com/@CodelyTV', 1, 2),
	(18, 'LucidChart', 'https://www.lucidchart.com', 1, 2),
	(19, 'Uiverse', 'https://uiverse.io/all', 1, 2),
	(20, 'DevDocs', 'https://devdocs.io', 1, 2),
	(21, 'WebDev', 'https://web.dev', 1, 2),
	(22, 'Railway', 'https://railway.app', 1, 3),
	(23, 'Netlify', 'https://www.netlify.com', 1, 3),
	(24, 'Vercel', 'https://vercel.com', 1, 3),
	(25, 'FreeAspHosting', 'https://freeasphosting.net', 1, 3),
	(26, 'InfinityFree', 'https://www.infinityfree.net', 1, 3),
	(27, 'AzureDevObs', 'https://dev.azure.com', 1, 3),
	(28, 'DigitalOcean', 'https://www.digitalocean.com', 1, 3),
	(29, 'Linode', 'https://www.linode.com/es', 1, 3),
	(30, 'DonWeb', 'https://donweb.com/es-cl', 1, 3),
	(31, 'Koyeb', 'https://www.koyeb.com', 1, 3),
	(32, 'Fly', 'https://fly.io', 1, 3),
	(33, 'Cloudflare', 'https://www.cloudflare.com/es-es', 1, 3),
	(34, 'GameHost', 'https://www.gamehost.cl', 1, 3),
	(35, 'PixaBay', 'https://pixabay.com', 1, 4),
	(36, 'FreePik', 'https://www.freepik.com', 1, 4),
	(37, 'UnSplash', 'https://unsplash.com', 1, 4),
	(38, 'FreeSVG', 'https://freesvg.org', 1, 4),
	(39, 'SocialSVG', 'https://www.svgrepo.com/collection/social-and-company-colored-logo-icons', 1, 4),
	(40, 'ConvertToIcon', 'https://convertio.co/es', 1, 4),
	(41, 'SoftIcons', 'https://www.softicons.com', 1, 4),
	(42, 'PlayCode', 'https://playcode.io', 1, 5),
	(43, 'GitHub', 'https://github.com/TheNefelin', 1, 5),
	(44, 'LinkedIn', 'https://www.linkedin.com/in/nefelin', 1, 5),
	(45, 'Figma', 'https://www.figma.com', 1, 5),
	(46, 'CodePen', 'https://codepen.io', 1, 5),
	(47, 'Canva', 'https://www.canva.com', 1, 5),
	(48, 'Songsterr', 'https://www.songsterr.com', 1, 5),
	(49, 'Mixamo', 'https://www.mixamo.com/#', 1, 5),
	(50, 'PublicAPI', 'https://publicapi.dev', 1, 5),
	(51, 'LabCenter', 'https://www.labcenter.com', 1, 5),
	(52, 'Oklch', 'https://oklch.com', 1, 5),
	(53, 'Excalidraw', 'https://excalidraw.com', 1, 5),
	(54, 'DbDiagram', 'https://dbdiagram.io/home', 1, 5),
	(55, 'Draw.io', 'https://app.diagrams.net', 1, 5),
	(56, 'Notion', 'https://www.notion.so', 1, 5),
	(57, 'GoogleBard', 'https://bard.google.com', 1, 6),
	(58, 'ChatGPT', 'https://chat.openai.com', 1, 6),
	(59, 'Claude2', 'https://claude.ai', 1, 6),
	(60, 'LiterallyAnything', 'https://www.literallyanything.io', 1, 6),
	(61, 'BlackBox', 'https://www.useblackbox.io', 1, 6),
	(62, 'AgentGPT', 'https://agentgpt.reworkd.ai/es', 1, 6),
	(63, 'ElevenLabs', 'https://beta.elevenlabs.io', 1, 6),
	(64, 'Podcast', 'https://podcast.adobe.com/enhance', 1, 6),
	(65, 'Leonardo', 'https://leonardo.ai', 1, 6),
	(66, 'Jira', 'https://www.atlassian.com/es/software/jira', 1, 7),
	(67, 'Trello', 'https://trello.com/es', 1, 7),
	(68, 'ClickUp', 'https://clickup.com', 1, 7),
	(69, 'Asana', 'https://asana.com/es', 1, 7),
	(70, 'Mi Insignia JS', 'https://www.acreditta.com/credential/63c99def-c48d-4495-aab5-00a3158d10a0', 1, 8),
	(71, 'GetOnbrd', 'https://www.getonbrd.com/misempleos', 1, 8),
	(72, 'Maps', 'https://geekflare.com/es/geocoding-maps-api-solution', 1, 8)
GO
SET IDENTITY_INSERT PF_Enlaces OFF
GO

SET IDENTITY_INSERT PF_Youtube ON
GO
INSERT INTO PF_Youtube
	(Id, Nombre, Embed)
VALUES
	(1, 'Jam-Covid', '0WsjRYgZMzs'),
	(2, 'Sky Lagoon', 'qUYQzlj_580'),
	(3, 'Valhalla', 'ktCw2CfWeTA'),
	(4, 'Yu-Gi-Oh', '2q9liMSxOcE'),
	(5, 'Monster Hunter', 'yPKbPUM9RRc'),
	(6, 'Final Fantasy XV', '3JlJ2fsOQnU')
GO
SET IDENTITY_INSERT PF_Youtube OFF
GO

SET IDENTITY_INSERT PF_Proyectos ON
GO
INSERT INTO PF_Proyectos
	(Id, Nombre, ImgUrl)
VALUES
	(1, 'Guides for Games V2 (Angular)', 'GuiaJuegosV2_1330x875.webp'),
	(2, 'Proceso Agiliza', 'Agiliza_1330x875.webp'),
	(3, 'Guides for Games V1 (NextJS)', 'GuiaJuegosV1_1330x875.webp'),
	(4, 'Kartax v3.0', 'KartaxV3_1330x875.webp'),
	(5, 'Portafolio v2.0', 'PortafolioV2_1330x875.webp'),
	(6, 'Arduino DHT Temperature Monitoring by Network', 'DHT_863x568.webp'),
	(7, 'Transbank POS Integration v1.0', 'TransbankPOS_1330x875.webp'),
	(8, 'El Cubo v2.0', 'ElCuboV2_1131x744.webp')
GO
SET IDENTITY_INSERT PF_Proyectos OFF
GO

SET IDENTITY_INSERT PF_Tecnologias ON
GO
INSERT INTO PF_Tecnologias
	(Id, Nombre, ImgUrl)
VALUES
	(1, 'Bootstrap', 'bootstrap.svg'),
	(2, '.NET', 'dotnet.svg'),
	(3, 'Git', 'git.svg'),
	(4, 'MySql', 'mysql.svg'),
	(5, 'Node', 'nodejs.svg'),
	(6, 'React', 'react.svg'),
	(7, 'SQLServer', 'sqlserver.svg'),
	(8, 'Unity', 'unity.svg'),
	(9, 'VsCode', 'vscode.svg'),
	(10, 'VsStudio', 'vsstudio.svg'),
	(11, 'NextJS', 'nextjs.svg'),
	(12, 'PostgreSQL', 'postgresql.svg'),
	(13, 'Angular', 'angular.svg')
GO
SET IDENTITY_INSERT PF_Tecnologias OFF
GO

INSERT INTO PF_Pro_Tec
	(Id_Proyecto, Id_Tecnologia)
VALUES
	(1, 2),
	(1, 7),
	(1, 13),
	(2, 9),
	(2, 11),
	(3, 2),
	(3, 7),
	(3, 11),
	(4, 7),
	(4, 9),
	(4, 11),
	(5, 5),
	(5, 6),
	(5, 11),
	(6, 2),
	(7, 2),
	(8, 8),
	(8, 10)
GO

SET IDENTITY_INSERT PF_Lenguajes ON
GO
INSERT INTO PF_Lenguajes
	(Id, Nombre, ImgUrl)
VALUES
	(1, 'C#', 'csharp.svg'),
	(2, 'CSS3', 'css3.svg'),
	(3, 'HTML5', 'html5.svg'),
	(4, 'JavaScript', 'javascript.svg'),
	(5, 'TypeScript', 'typescript.svg'),
	(6, 'VisualBasic', 'vb.svg'),
	(7, 'Pytrhon', 'python.svg')
GO
SET IDENTITY_INSERT PF_Lenguajes OFF
GO

INSERT INTO PF_Pro_Leng
	(Id_Proyecto, Id_Lenguaje)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 5),
	(2, 2),
	(2, 3),
	(2, 5),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 5),
	(4, 2),
	(4, 3),
	(4, 4),
	(4, 7),
	(5, 2),
	(5, 3),
	(5, 4),
	(6, 6),
	(7, 6),
	(7, 1),
	(8, 1)
GO

-- Stored Procedure ---------------------------------------------
-- --------------------------------------------------------------
CREATE PROCEDURE PF_EnlaceGrp_Get
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @Id < 0
		BEGIN
			SELECT 400 AS StatusCode, 'Ingrese un Id Valido' AS Msge, 0 AS Id
			RETURN
		END

	IF @Id = 0
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				Estado AS Status
			FROM PF_EnlacesGrps
		END
	ELSE
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				Estado AS Status
			FROM PF_EnlacesGrps
			WHERE
				Id = @Id
		END
END
GO

CREATE PROCEDURE PF_EnlaceGrp_Insert
	@Name VARCHAR(50),
	@Status BIT
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT Id FROM PF_EnlacesGrps WHERE Nombre = @Name)
		BEGIN
			SELECT 400 AS StatusCode, 'El Nombre ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		INSERT INTO PF_EnlacesGrps
			(Nombre, Estado)
		VALUES
			(@Name, @Status)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PF_EnlaceGrp_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_EnlaceGrp_Update
	@Id INT,
	@Name VARCHAR(50),
	@Status BIT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_EnlacesGrps WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id FROM PF_EnlacesGrps WHERE Nombre = @Name)
		BEGIN
			SELECT 400 AS StatusCode, 'El Nombre ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		UPDATE PF_EnlacesGrps SET
			Nombre = @Name, 
			Estado = @Status
		WHERE
			Id = @Id

		SELECT 202 AS StatusCode, 'Datos Modificados Correctamente' AS Msge, @Id AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Modificar los Datos (PF_EnlaceGrp_Update)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_EnlaceGrp_Delete
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_EnlacesGrps WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id FROM PF_Enlaces WHERE Id_EnlaceGrp = @Id)
		BEGIN
			SELECT 400 AS StatusCode, 'Existe Dependencia Con PF_Enlaces' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PF_EnlacesGrps WHERE Id = @Id

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PF_EnlaceGrp_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Enlace_Get
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @Id < 0
		BEGIN
			SELECT 400 AS StatusCode, 'Ingrese un Id Valido' AS Msge, 0 AS Id
			RETURN
		END

	IF @Id = 0 
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				EnlaceUrl AS Url,
				Estado AS Status,
				Id_EnlaceGrp AS id_UrlGrp
			FROM PF_Enlaces
			ORDER BY
				Nombre
		END
	ELSE
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				EnlaceUrl AS Url,
				Estado AS Status,
				Id_EnlaceGrp AS id_UrlGrp
			FROM PF_Enlaces
			WHERE
				Id = @Id
		END
END
GO

CREATE PROCEDURE PF_Enlace_Insert
	@Name VARCHAR(50),
	@Url VARCHAR(256),
	@Status BIT,
	@Id_UrlGrp INT
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT Id FROM PF_Enlaces WHERE Nombre = @Name)
		BEGIN
			SELECT 400 AS StatusCode, 'El Nombre ya Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF NOT EXISTS (SELECT Id FROM PF_EnlacesGrps WHERE Id = @Id_UrlGrp)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id_UrlGrp No Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		INSERT INTO PF_Enlaces
			(Nombre, EnlaceUrl, Estado, Id_EnlaceGrp)
		VALUES
			(@Name, @Url, @Status, @Id_UrlGrp)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PF_Enlace_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Enlace_Update
	@Id INT,
	@Name VARCHAR(50),
	@Url VARCHAR(256),
	@Status BIT,
	@Id_UrlGrp INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_EnlacesGrps WHERE Id = @Id_UrlGrp)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id_UrlGrp No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF NOT EXISTS (SELECT Id FROM PF_Enlaces WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id FROM PF_Enlaces WHERE Nombre = @Name)
		BEGIN
			SELECT 400 AS StatusCode, 'El Nombre ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		UPDATE PF_Enlaces SET
			Nombre = @Name,
			EnlaceUrl = @Url,
			Estado = @Status,
			Id_EnlaceGrp = @Id_UrlGrp
		WHERE
			Id = @Id

		SELECT 202 AS StatusCode, 'Datos Modificados Correctamente' AS Msge, @Id AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Modificar los Datos (PF_Enlace_Update)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Enlace_Delete
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_Enlaces WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PF_Enlaces WHERE Id = @Id

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PF_Enlace_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Youtube_Get
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @Id < 0
		BEGIN
			SELECT 400 AS StatusCode, 'Ingrese un Id Valido' AS Msge, 0 AS Id
			RETURN
		END

	IF @Id = 0
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				Embed AS EmbedUrl
			FROM PF_Youtube
		END
	ELSE
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				Embed AS EmbedUrl
			FROM PF_Youtube
			WHERE
				Id = @Id
		END
END
GO

CREATE PROCEDURE PF_Youtube_Insert
	@Name VARCHAR(50),
	@EmbedUrl VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT Id FROM PF_Youtube WHERE Nombre = @Name)
		BEGIN
			SELECT 400 AS StatusCode, 'El Nombre ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	IF EXISTS (SELECT Id FROM PF_Youtube WHERE Embed = @EmbedUrl)
		BEGIN
			SELECT 400 AS StatusCode, 'El Embed ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		INSERT INTO PF_Youtube
			(Nombre, Embed)
		VALUES
			(@Name, @EmbedUrl)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PF_Youtube_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Youtube_Update
	@Id INT,
	@Name VARCHAR(50),
	@EmbedUrl VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_Youtube WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id FROM PF_Youtube WHERE Nombre = @Name)
		BEGIN
			SELECT 400 AS StatusCode, 'El Nombre ya Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id FROM PF_Youtube WHERE Embed = @EmbedUrl)
		BEGIN
			SELECT 400 AS StatusCode, 'El Embed ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		UPDATE PF_Youtube SET
			Nombre = @Name,
			Embed = @EmbedUrl
		WHERE
			Id = @Id

		SELECT 202 AS StatusCode, 'Datos Modificados Correctamente' AS Msge, @Id AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Modificar los Datos (PF_Youtube_Update)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Youtube_Delete
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_Youtube WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PF_Youtube WHERE Id = @Id

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PF_Youtube_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Proyecto_Get
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @Id < 0
		BEGIN
			SELECT 400 AS StatusCode, 'Ingrese un Id Valido' AS Msge, 0 AS Id
			RETURN
		END

	IF @Id = 0
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				ImgUrl
			FROM PF_Proyectos
		END
	ELSE
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				ImgUrl
			FROM PF_Proyectos
			WHERE
				Id = @Id
		END
END
GO

CREATE PROCEDURE PF_Proyecto_Insert
	@Name VARCHAR(50),
	@ImgUrl VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		INSERT INTO PF_Proyectos
			(Nombre, ImgUrl)
		VALUES
			(@Name, @ImgUrl)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PF_Proyecto_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Proyecto_Update
	@Id INT,
	@Name VARCHAR(50),
	@ImgUrl VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		UPDATE PF_Proyectos SET
			Nombre = @Name,
			ImgUrl = @ImgUrl
		WHERE
			Id = @Id

		SELECT 202 AS StatusCode, 'Datos Modificados Correctamente' AS Msge, @Id AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Modificar los Datos (PF_Proyecto_Update)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Proyecto_Delete
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_Proyectos WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id_Proyecto FROM PF_Pro_Leng WHERE Id_Proyecto = @Id)
		BEGIN
			SELECT 400 AS StatusCode, 'Existe Dependencia Con PF_Pro_Leng' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id_Proyecto FROM PF_Pro_Tec WHERE Id_Proyecto = @Id)
		BEGIN
			SELECT 400 AS StatusCode, 'Existe Dependencia Con PF_Pro_Tec' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PF_Proyectos WHERE Id = @Id

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PF_Proyecto_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Lenguaje_Get
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @Id < 0
		BEGIN
			SELECT 400 AS StatusCode, 'Ingrese un Id Valido' AS Msge, 0 AS Id
			RETURN
		END

	IF @Id = 0
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				ImgUrl
			FROM PF_Lenguajes
		END
	ELSE
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				ImgUrl
			FROM PF_Lenguajes
			WHERE
				Id = @Id
		END
END
GO

CREATE PROCEDURE PF_Lenguaje_Insert
	@Name VARCHAR(50),
	@ImgUrl VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		INSERT INTO PF_Lenguajes
			(Nombre, ImgUrl)
		VALUES
			(@Name, @ImgUrl)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PF_Lenguaje_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Lenguaje_Update
	@Id INT,
	@Name VARCHAR(50),
	@ImgUrl VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		UPDATE PF_Lenguajes SET
			Nombre = @Name,
			ImgUrl = @ImgUrl
		WHERE
			Id = @Id

		SELECT 202 AS StatusCode, 'Datos Modificados Correctamente' AS Msge, @Id AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Modificar los Datos (PF_Lenguaje_Update)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Lenguaje_Delete
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_Lenguajes WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id_Proyecto FROM PF_Pro_Leng WHERE Id_Proyecto = @Id)
		BEGIN
			SELECT 400 AS StatusCode, 'Existe Dependencia Con PF_Pro_Leng' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PF_Lenguajes WHERE Id = @Id

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PF_Lenguaje_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Tecnologia_Get
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

	IF @Id < 0
		BEGIN
			SELECT 400 AS StatusCode, 'Ingrese un Id Valido' AS Msge, 0 AS Id
			RETURN
		END

	IF @Id = 0
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				ImgUrl
			FROM PF_Tecnologias
		END
	ELSE
		BEGIN
			SELECT
				Id,
				Nombre AS Name,
				ImgUrl
			FROM PF_Tecnologias
			WHERE
				Id = @Id
		END
END
GO

CREATE PROCEDURE PF_Tecnologia_Insert
	@Nombre VARCHAR(50),
	@ImgUrl VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		INSERT INTO PF_Tecnologias
			(Nombre, ImgUrl)
		VALUES
			(@Nombre, @ImgUrl)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PF_Tecnologia_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Tecnologia_Update
	@Id INT,
	@Nombre VARCHAR(50),
	@ImgUrl VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		UPDATE PF_Tecnologias SET
			Nombre = @Nombre,
			ImgUrl = @ImgUrl
		WHERE
			Id = @Id

		SELECT 202 AS StatusCode, 'Datos Modificados Correctamente' AS Msge, @Id AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Modificar los Datos (PF_Tecnologia_Update)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_Tecnologia_Delete
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_Tecnologias WHERE Id = @Id)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF EXISTS (SELECT Id_Proyecto FROM PF_Pro_Tec WHERE Id_Proyecto = @Id)
		BEGIN
			SELECT 400 AS StatusCode, 'Existe Dependencia Con PF_Pro_Tec' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PF_Tecnologias WHERE Id = @Id

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PF_Tecnologia_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_ProLeng_Get
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		Id_Proyecto AS Id_Project,
		Id_Lenguaje AS Id_Language
	FROM PF_Pro_Leng
END
GO

CREATE PROCEDURE PF_ProLeng_Insert
	@Id_Project INT,
	@Id_Language INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_Proyectos WHERE Id = @Id_Project)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id_Proyecto No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF NOT EXISTS (SELECT Id FROM PF_Lenguajes WHERE Id = @Id_Language)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id_Lenguaje No Existe' AS Msge, 0 AS Id
			RETURN
		END

	IF EXISTS (SELECT Id_Proyecto FROM PF_Pro_Leng WHERE Id_Proyecto = @Id_Project AND Id_Lenguaje = @Id_Language)
		BEGIN
			SELECT 400 AS StatusCode, 'El Elemento ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		INSERT INTO PF_Pro_Leng
			(Id_Proyecto, Id_Lenguaje)
		VALUES
			(@Id_Project, @Id_Language)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PF_ProLeng_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_ProLeng_Delete
	@Id_Project INT,
	@Id_Language INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id_Proyecto FROM PF_Pro_Leng WHERE Id_Proyecto = @Id_Project AND Id_Lenguaje = @Id_Language)
		BEGIN
			SELECT 404 AS StatusCode, 'El Elemento No Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PF_Pro_Leng WHERE Id_Proyecto = @Id_Project AND Id_Lenguaje = @Id_Language

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PF_ProLeng_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_ProTec_Get
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		Id_Proyecto AS Id_Project,
		Id_Tecnologia AS Id_Technology
	FROM PF_Pro_Tec
END
GO

CREATE PROCEDURE PF_ProTec_Insert
	@Id_Project INT,
	@Id_Technology INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM PF_Proyectos WHERE Id = @Id_Project)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id_Proyecto No Existe' AS Msge, 0 AS Id
			RETURN
		END

    IF NOT EXISTS (SELECT Id FROM PF_Tecnologias WHERE Id = @Id_Technology)
		BEGIN
			SELECT 404 AS StatusCode, 'El Id_Tecnologia No Existe' AS Msge, 0 AS Id
			RETURN
		END

	IF EXISTS (SELECT Id_Proyecto FROM PF_Pro_Tec WHERE Id_Proyecto = @Id_Project AND Id_Tecnologia = @Id_Technology)
		BEGIN
			SELECT 400 AS StatusCode, 'El Elemento ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		INSERT INTO PF_Pro_Tec
			(Id_Proyecto, Id_Tecnologia)
		VALUES
			(@Id_Project, @Id_Technology)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PF_ProTec_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PF_ProTec_Delete
	@Id_Project INT,
	@Id_Technology INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id_Proyecto FROM PF_Pro_Tec WHERE Id_Proyecto = @Id_Project AND Id_Tecnologia = @Id_Technology)
		BEGIN
			SELECT 404 AS StatusCode, 'El Elemento No Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PF_Pro_Tec WHERE Id_Proyecto = @Id_Project AND Id_Tecnologia = @Id_Technology

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PF_ProTec_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

DROP PROCEDURE PF_EnlaceGrp_Get
DROP PROCEDURE PF_EnlaceGrp_Insert
DROP PROCEDURE PF_EnlaceGrp_Update
DROP PROCEDURE PF_EnlaceGrp_Delete
DROP PROCEDURE PF_Enlace_Get
DROP PROCEDURE PF_Enlace_Insert
DROP PROCEDURE PF_Enlace_Update
DROP PROCEDURE PF_Enlace_Delete
DROP PROCEDURE PF_Youtube_Get
DROP PROCEDURE PF_Youtube_Insert
DROP PROCEDURE PF_Youtube_Update
DROP PROCEDURE PF_Youtube_Delete
DROP PROCEDURE PF_Proyecto_Get
DROP PROCEDURE PF_Proyecto_Insert
DROP PROCEDURE PF_Proyecto_Update
DROP PROCEDURE PF_Proyecto_Delete
DROP PROCEDURE PF_Lenguaje_Get
DROP PROCEDURE PF_Lenguaje_Insert
DROP PROCEDURE PF_Lenguaje_Update
DROP PROCEDURE PF_Lenguaje_Delete
DROP PROCEDURE PF_Tecnologia_Get
DROP PROCEDURE PF_Tecnologia_Insert
DROP PROCEDURE PF_Tecnologia_Update
DROP PROCEDURE PF_Tecnologia_Delete
DROP PROCEDURE PF_ProLeng_Get
DROP PROCEDURE PF_ProLeng_Insert
DROP PROCEDURE PF_ProLeng_Delete
DROP PROCEDURE PF_ProTec_Get
DROP PROCEDURE PF_ProTec_Insert
DROP PROCEDURE PF_ProTec_Delete

-- Query --------------------------------------------------------
-- --------------------------------------------------------------
EXECUTE PF_EnlaceGrp_Get 0
EXECUTE PF_EnlaceGrp_Get 1

-- --------------------------------------------------------------
-- --------------------------------------------------------------
