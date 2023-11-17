
---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE TABLE pf_link_grp(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nombre  NVARCHAR(50) NOT NULL,
	estado BIT NOT NULL,
)
GO

SET IDENTITY_INSERT pf_link_grp ON
GO

INSERT INTO pf_link_grp  
	(id, nombre, estado) 
VALUES 
	(1, 'Framework', 1),
	(2, 'Learning', 1),
	(3, 'Hosting', 1),
	(4, 'Images', 1),
	(5, 'Tools', 1),
	(6, 'IA', 1),
	(7, 'Agile', 1),
	(8, 'My Links', 1)

SET IDENTITY_INSERT pf_link_grp OFF
GO

---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE TABLE pf_link(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nombre  NVARCHAR(50) NOT NULL,
	url_link  NVARCHAR(255) NOT NULL,
	estado BIT NOT NULL,
	id_link_grp INT NOT NULL,
	FOREIGN KEY (id_link_grp) REFERENCES pf_link_grp(id),
)
GO

SET IDENTITY_INSERT pf_link ON
GO

INSERT INTO pf_link 
	(id, nombre, url_link, estado, id_link_grp) 
VALUES 
	(1, 'Strapi', 'https://strapi.io', 1, 1),
	(2, 'Mui', 'https://mui.com', 1, 1),
	(3, 'Tailwindcss', 'https://tailwindcss.com', 1, 1),
	(4, 'DaisyUI', 'https://daisyui.com', 1, 1),
	(5, 'NextJS', 'https://nextjs.org', 1, 1),
	(6, 'NextUI', 'https://nextui.org', 1, 1),
	(7, 'NextAuth', 'https://next-auth.js.org', 1, 1),
	(8, 'FastAPI', 'https://fastapi.tiangolo.com', 1, 1),
	(9, 'Tremor', 'https://www.tremor.so', 1, 1),
	(10, 'Heroicons', 'https://heroicons.com', 1, 1),
	(11, 'CodeDex', 'https://www.w3schools.com', 1, 2),
	(12, 'w3schools', 'https://www.w3schools.com', 1, 2),
	(13, 'Scrimba', 'https://scrimba.com', 1, 2),
	(14, 'Animate', 'https://animate.style', 1, 2),
	(15, 'CodelyTV', 'https://www.youtube.com/@CodelyTV', 1, 2),
	(16, 'LucidChart', 'https://www.lucidchart.com', 1, 2),
	(17, 'Uiverse', 'https://uiverse.io/all', 1, 2),
	(18, 'DevDocs', 'https://devdocs.io', 1, 2),
	(19, 'WebDev', 'https://web.dev', 1, 2),
	(20, 'Railway', 'https://railway.app', 1, 3),
	(21, 'Netlify', 'https://www.netlify.com', 1, 3),
	(22, 'Vercel', 'https://vercel.com', 1, 3),
	(23, 'FreeAspHosting', 'https://freeasphosting.net', 1, 3),
	(24, 'InfinityFree', 'https://www.infinityfree.net', 1, 3),
	(25, 'AzureDevObs', 'https://dev.azure.com', 1, 3),
	(26, 'DigitalOcea', 'https://www.digitalocean.com', 1, 3),
	(27, 'Linode', 'https://www.linode.com/es', 1, 3),
	(28, 'DonWeb', 'https://donweb.com/es-cl', 1, 3),
	(29, 'Heroku', 'https://www.heroku.com', 1, 3),
	(30, 'PixaBay', 'https://pixabay.com', 1, 4),
	(31, 'FreePik', 'https://www.freepik.com', 1, 4),
	(32, 'UnSplash', 'https://unsplash.com', 1, 4),
	(33, 'FreeSVG', 'https://freesvg.org', 1, 4),
	(34, 'SocialSVG', 'https://www.svgrepo.com/collection/social-and-company-colored-logo-icons', 1, 4),
	(35, 'ConvertToIco', 'https://convertio.co/es', 1, 4),
	(36, 'SoftIcons', 'https://www.softicons.com', 1, 4),
	(37, 'PlayCode', 'https://playcode.io', 1, 5),
	(38, 'GitHub', 'https://github.com/TheNefeli', 1, 5),
	(39, 'LinkedI', 'https://www.linkedin.com/in/nefeli', 1, 5),
	(40, 'Figma', 'https://www.figma.com', 1, 5),
	(41, 'CodePe', 'https://codepen.io', 1, 5),
	(42, 'Canva', 'https://www.canva.com', 1, 5),
	(43, 'Songsterr', 'https://www.songsterr.com', 1, 5),
	(44, 'Mixamo', 'https://www.mixamo.com/#', 1, 5),
	(45, 'PublicAPI', 'https://publicapi.dev', 1, 5),
	(46, 'LabCenter', 'https://www.labcenter.com', 1, 5),
	(47, 'Oklch', 'https://oklch.com', 1, 5),
	(48, 'Excalidraw', 'https://excalidraw.com', 1, 5),
	(49, 'GoogleBard', 'https://bard.google.com', 1, 6),
	(50, 'ChatGPT', 'https://chat.openai.com', 1, 6),
	(51, 'Claude2', 'https://claude.ai', 1, 6),
	(52, 'LiterallyAnything', 'https://www.literallyanything.io', 1, 6),
	(53, 'BlackBox', 'https://www.useblackbox.io', 1, 6),
	(54, 'AgentGPT', 'https://agentgpt.reworkd.ai/es', 1, 6),
	(55, 'ElevenLabs', 'https://beta.elevenlabs.io', 1, 6),
	(56, 'Podcast', 'https://podcast.adobe.com/enhance', 1, 6),
	(57, 'Leonardo', 'https://leonardo.ai', 1, 6),
	(58, 'Jira', 'https://www.atlassian.com/es/software/jira', 1, 7),
	(59, 'Trello', 'https://trello.com/es', 1, 7),
	(60, 'ClickUp', 'https://clickup.com', 1, 7),
	(61, 'Asana', 'https://asana.com/es', 1, 7),
	(62, 'MiInsignia', 'https://www.acreditta.com/credential/63c99def-c48d-4495-aab5-00a3158d10a0', 1, 8),
	(63, 'GetOnbrd', 'https://www.getonbrd.com/misempleos', 1, 8),
	(64, 'Maps', 'https://geekflare.com/es/geocoding-maps-api-solution', 1, 8)
GO

SET IDENTITY_INSERT pf_link OFF
GO

---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE TABLE pf_youtube(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nombre  NVARCHAR(50) NOT NULL,
	video_id  NVARCHAR(50) NOT NULL,
)
GO

SET IDENTITY_INSERT pf_youtube ON
GO

INSERT INTO pf_youtube
	(id, nombre, video_id)
VALUES
	(1, 'Jam-Covid', '0WsjRYgZMzs'),
	(2, 'Sky Lagoon', 'qUYQzlj_580'),
	(3, 'Valhalla', 'ktCw2CfWeTA'),
	(4, 'Yu-Gi-Oh', '2q9liMSxOcE'),
	(5, 'Monster Hunter', 'yPKbPUM9RRc'),
	(6, 'Final Fantasy XV', '3JlJ2fsOQnU')
GO

SET IDENTITY_INSERT pf_youtube OFF
GO

---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE TABLE pf_project(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nombre  NVARCHAR(50) NOT NULL,
	url_img  NVARCHAR(255) NOT NULL,
	orden INT NOT NULL,
)
GO

SET IDENTITY_INSERT pf_project ON
GO

INSERT INTO pf_project
	(id, nombre, url_img, orden)
VALUES
	(1, 'Tecno Chile', 'pf_proj_tecnochile.jpg', 1),
	(2, 'Web Components v1.0', 'pf_proj_components_v1.jpg', 2),
	(3, 'Kartax v1.0', 'pf_proj_kartax_v1.jpg', 3),
	(4, 'Portafolio V1.0', 'pf_proj_portafolio_v1.jpg', 4),
	(5, 'Game El Cubo v2.0', 'pf_proj_cubo_v2.jpg', 5),
	(6, 'Transbank POS Integration v1.0', 'pf_proj_transbank_pos.png', 6),
	(7, 'Arduino DHT Temperature Monitoring by Network', 'pf_proj_dht.png', 7),
	(8, 'Kartax v2.0', 'pf_proj_kartax_v2.png', 8),
	(9, 'Portafolio v2.0', 'pf_proj_portafolio_v2.png', 9),
	(10, 'Kartax v3.0 (Developing...)', 'pf_proj_kartax_v3.png', 10),
	(11, 'Guides for games', 'pf_proj_guides.png', 11),
	(12, 'Guides for games', 'pf_proj_guides.png', 12)
GO

SET IDENTITY_INSERT pf_project OFF
GO

---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE TABLE pf_pro_source(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nombre  NVARCHAR(50) NOT NULL,
	url_deploy  NVARCHAR(255),
	url_repo  NVARCHAR(255),
)
GO

SET IDENTITY_INSERT pf_pro_source ON
GO

INSERT INTO pf_pro_source 
	(id, nombre, url_deploy, url_repo) 
VALUES 
	(1, 'Tecno Chile v1.0 app', 'https://tecnochile.netlify.app', 'https://github.com/TheNefelin/td_trabajo_grupal_03'),
	(2, 'Slifer api', 'https://slifer.bsite.net/index.html', 'https://github.com/TheNefelin/td_api.NetCore6'),
	(3, 'Components v1.0 app', 'https://nefelin-components.netlify.app', 'https://github.com/TheNefelin/my-web-components'),
	(4, 'Kartax v1.0 app', 'https://kartax.netlify.app', 'https://github.com/TheNefelin/kartax-ant'),
	(5, 'Portafolio app', 'https://nefelin-portafolio.netlify.app', 'https://github.com/TheNefelin/portafolio-site'),
	(6, 'Metalflap api', 'https://bsite.net/metalflap/index.html', 'https://github.com/TheNefelin/portafolio_api.NETCore6'),
	(7, 'Download Link app', 'https://drive.google.com/drive/folders/1qttZk_iN8fHYVjHqI6_VLS4nyT4fTkyu?usp=drive_link', NULL),
	(8, 'Transbank POS v1.0 app', NULL, 'https://github.com/TheNefelin/Transbank-POS-v1'),
	(9, 'Arduino DHT Monitoring', NULL, 'https://github.com/TheNefelin/DHT/tree/master/DHT'),
	(10, 'Kartax v2.0 app', 'https://kartax-express-production.up.railway.app/', 'https://github.com/TheNefelin/kartax-express'),
	(11, 'Kartax v2.0 api', 'https://kartax-api-production.up.railway.app', 'https://github.com/TheNefelin/kartax-api'),
	(12, 'Portafolio v2.0 app', 'http://www.francisco-dev.cl', 'https://github.com/TheNefelin/portafolio-next13'),
	(13, 'Kartax v3.0 app', 'https://kartax-next13.vercel.app', NULL),
	(14, 'Kartax v3.0 api', 'https://kartax-api-py.vercel.app/docs', NULL),
	(15, 'Guia v1.0 app', 'https://guias-juegos-next13-ts.vercel.app', 'https://github.com/TheNefelin/guias-juegos-next13-ts'),
	(16, 'SQL Server', NULL, 'https://github.com/TheNefelin/SQLServer'),
	(17, 'Agiliza app', 'https://agiliza-next14-ts.vercel.app', 'https://github.com/TheNefelin/agiliza-next14-ts')
GO

SET IDENTITY_INSERT pf_pro_source OFF
GO

CREATE TABLE pf_pro_sour(
	id_project INT NOT NULL,
	id_source INT NOT NULL,
	CONSTRAINT PK_pf_pro_sour PRIMARY KEY (id_project, id_source),
	FOREIGN KEY (id_project) REFERENCES pf_project(id),
    FOREIGN KEY (id_source) REFERENCES pf_pro_source(id)
)
GO

INSERT INTO pf_pro_sour 
	(id_project, id_source) 
VALUES 
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 5),
	(4, 6),
	(11, 6),
	(5, 7),
	(6, 8),
	(7, 9),
	(8, 10),
	(8, 11),
	(9, 12),
	(10, 13),
	(10, 14),
	(11, 15),
	(11, 16),
	(12, 17)
GO

---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE TABLE pf_pro_language(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nombre  NVARCHAR(50) NOT NULL,
	url_img  NVARCHAR(255),
)
GO

SET IDENTITY_INSERT pf_pro_language ON
GO

INSERT INTO pf_pro_language 
	(id, nombre, url_img) 
VALUES 
	(1, 'C#', 'pf_lang_csharp.svg'),
	(2, 'CSS', 'pf_lang_css.svg'),
	(3, 'HTML', 'pf_lang_html.svg'),
	(4, 'JavaScript', 'pf_lang_js.svg'),
	(5, 'VisualBasic', 'pf_lang_vb.svg'),
	(6, 'Pytho', 'pf_lang_py.svg'),
	(7, 'TypeScript', 'pf_lang_ts.svg')
GO

SET IDENTITY_INSERT pf_pro_language OFF
GO

CREATE TABLE pf_pro_lang(
	id_project INT NOT NULL,
	id_language INT NOT NULL,
	CONSTRAINT PK_pf_pro_lang PRIMARY KEY (id_project, id_language),
	FOREIGN KEY (id_project) REFERENCES pf_project(id),
    FOREIGN KEY (id_language) REFERENCES pf_pro_language(id)
)
GO

INSERT INTO pf_pro_lang 
	(id_project, id_language) 
VALUES 
	(1, 1),
	(4, 1),
	(5, 1),
	(11, 1),
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2),
	(1, 3),
	(2, 3),
	(3, 3),
	(4, 3),
	(8, 3),
	(9, 3),
	(10, 3),
	(11, 3),
	(1, 4),
	(2, 4),
	(3, 4),
	(4, 4),
	(8, 4),
	(9, 4),
	(10, 4),
	(6, 5),
	(7, 5),
	(10, 6),
	(11, 7)
GO

---------------------------------------------------------------------
---------------------------------------------------------------------
CREATE TABLE pf_pro_technology(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nombre  NVARCHAR(50) NOT NULL,
	url_img  NVARCHAR(255) NOT NULL,
)
GO

SET IDENTITY_INSERT pf_pro_technology ON
GO

INSERT INTO pf_pro_technology 
	(id, nombre, url_img)
VALUES 
	(1, 'Bootstrap', 'pf_tech_bootstrap.svg'),
	(2, 'DotNet', 'pf_tech_dotnet.svg'),
	(3, 'Git', 'pf_tech_git.svg'),
	(4, 'MySQL', 'pf_tech_mysql.svg'),
	(5, 'Node', 'pf_tech_node.png'),
	(6, 'React', 'pf_tech_react.svg'),
	(7, 'SqlServer', 'pf_tech_mssql.png'),
	(8, 'Unity', 'pf_tech_unity.png'),
	(9, 'VSCode', 'pf_tech_vscode.png'),
	(10, 'VSStudio', 'pf_tech_vsstudio.svg'),
	(11, 'NextJS', 'pf_tech_nextjs.svg'),
	(12, 'PostgreSQL', 'pf_tech_postgresql.png')
GO

SET IDENTITY_INSERT pf_pro_technology OFF
GO

CREATE TABLE pf_pro_tech(
	id_project INT NOT NULL ,
	id_technology INT NOT NULL,
	CONSTRAINT PK_pf_pro_tech PRIMARY KEY (id_project, id_technology),
	FOREIGN KEY (id_project) REFERENCES pf_project(id),
    FOREIGN KEY (id_technology) REFERENCES pf_pro_technology(id)
)
GO

INSERT INTO pf_pro_tech  
	(id_project, id_technology)
VALUES 
	(1, 2),
	(4, 2),
	(6, 2),
	(7, 2),
	(8, 5),
	(9, 5),
	(9, 6),
	(1, 7),
	(4, 7),
	(10, 7),
	(11, 7),
	(5, 8),
	(1, 9),
	(2, 9),
	(3, 9),
	(4, 9),
	(10, 9),
	(5, 10),
	(11, 10),
	(9, 11),
	(10, 11),
	(11, 11),
	(8, 12)
GO

---------------------------------------------------------------------
---------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE pa_pf_link_grp
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		id,
		nombre,
		estado
	FROM pf_link_grp
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE pa_pf_link
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		id,
		nombre,
		url_link,
		estado,
		id_link_grp
	FROM pf_link
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE pa_pf_youtube
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		id,
		nombre,
		video_id
	FROM pf_youtube
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE pa_pf_project
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		id,
		nombre,
		url_img,
		orden
	FROM pf_project
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE pa_pf_pro_source
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		a.id,
		a.nombre,
		a.url_deploy,
		a.url_repo,
		b.id_project 
	FROM pf_pro_source a 
		INNER JOIN pf_pro_sour b ON a.id = b.id_source
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE pa_pf_pro_language
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		a.id,
		a.nombre,
		a.url_img,
		b.id_project 
	FROM pf_pro_language a 
		INNER JOIN pf_pro_lang b ON a.id = b.id_language
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE pa_pf_pro_technology
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		a.id,
		a.nombre,
		a.url_img,
		b.id_project 
	FROM pf_pro_technology a 
		INNER JOIN pf_pro_tech b ON a.id = b.id_technology
END
GO

---------------------------------------------------------------------
---------------------------------------------------------------------

--DROP TABLE __EFMigrationsHistory
--DROP TABLE pf_link_grp
--DROP TABLE pf_link
--DROP TABLE pf_youtube
--DROP TABLE pf_pro_sour
--DROP TABLE pf_pro_lang
--DROP TABLE pf_pro_tech
--DROP TABLE pf_project
--DROP TABLE pf_pro_source
--DROP TABLE pf_pro_language
--DROP TABLE pf_pro_technology

--DROP PROCEDURE pa_pf_link_grp
--DROP PROCEDURE pa_pf_link
--DROP PROCEDURE pa_pf_youtube
--DROP PROCEDURE pa_pf_project
--DROP PROCEDURE pa_pf_pro_source
--DROP PROCEDURE pa_pf_pro_language
--DROP PROCEDURE pa_pf_pro_technology

--SELECT * FROM __EFMigrationsHistory
--SELECT * FROM pf_link_grp
--SELECT * FROM pf_link
--SELECT * FROM pf_youtube
--SELECT * FROM pf_project
--SELECT * FROM pf_pro_source
--SELECT * FROM pf_pro_language
--SELECT * FROM pf_pro_technology
--SELECT * FROM pf_pro_sour
--SELECT * FROM pf_pro_lang
--SELECT * FROM pf_pro_tech

EXECUTE pa_pf_link_grp
EXECUTE pa_pf_link
EXECUTE pa_pf_youtube
EXECUTE pa_pf_project
EXECUTE pa_pf_pro_source
EXECUTE pa_pf_pro_language
EXECUTE pa_pf_pro_technology


