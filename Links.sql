
--CREATE TABLE [dbo].[mae_links_grp](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[nombre] [varchar](50) NOT NULL,
--	[estado] [bit] NOT NULL,
-- CONSTRAINT [PK_mae_links_group] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO

--CREATE TABLE [dbo].[mae_links](
--	[id] [int] IDENTITY(1,1) NOT NULL,
--	[nombre] [varchar](50) NOT NULL,
--	[link] [varchar](255) NOT NULL,
--	[estado] [bit] NOT NULL,
--	[Id_link_grp] [int] NOT NULL,
-- CONSTRAINT [PK_mae_links] PRIMARY KEY CLUSTERED 
--(
--	[id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO

--CREATE PROCEDURE [dbo].[pa_mae_links_grp_get]
--AS
--BEGIN
--	SET NOCOUNT ON;

--  SELECT  
--		id,
--		nombre,
--		estado
--	FROM mae_links_grp
--	WHERE
--		estado = 1
--	ORDER BY 
--		nombre ASC
--END
--GO

--CREATE PROCEDURE [dbo].[pa_mae_links_get]
--AS
--BEGIN
--	SET NOCOUNT ON;

--	SELECT
--		id,
--		nombre,
--		link,
--		estado,
--		id_link_grp
--	FROM mae_links
--	ORDER BY 
--		nombre ASC
--END
--GO

--SET IDENTITY_INSERT [dbo].[mae_links_grp] ON
--GO

--INSERT INTO mae_links_grp
--	(id, nombre, estado)
--VALUES
--	(1, 'Framework', 1),
--	(2, 'Learning', 1),
--	(3, 'Hosting', 1),
--	(4, 'Images', 1),
--	(5, 'Tools', 1),
--	(6, 'IA', 1),
--	(7, 'Agile', 1)
--GO

--SET IDENTITY_INSERT [dbo].[mae_links_grp] OFF
--GO

--SET IDENTITY_INSERT [dbo].[mae_links] ON
--GO

--INSERT INTO mae_links
--	(id, nombre, link, estado, id_link_grp)
--VALUES
--	(1, 'Strapi', 'https://strapi.io/', 1, 1),
--	(2, 'Mui', 'https://mui.com/', 1, 1),
--	(3, 'Tailwindcss', 'https://tailwindcss.com/', 1, 1),
--	(4, 'DaisyUI', 'https://daisyui.com/', 1, 1),
--	(5, 'NextJS', 'https://nextjs.org/', 1, 1),
--	(6, 'NextAuth', 'https://next-auth.js.org/', 1, 1),
--	(7, 'FastAPI', 'https://fastapi.tiangolo.com/', 1, 1),
--	(8, 'Tremor', 'https://www.tremor.so/', 1, 1),
--	(9, 'CodeDex', 'https://www.codedex.io/', 1, 2),
--	(10, 'W3Schools', 'https://www.w3schools.com/', 1, 2),
--	(11, 'Scrimba', 'https://scrimba.com/', 1, 2),
--	(12, 'Animate', 'https://animate.style/', 1, 2),
--	(13, 'YouTube CodelyTV', 'https://www.youtube.com/@CodelyTV/', 1, 2),
--	(14, 'Lucid Chart', 'https://www.lucidchart.com/', 1, 2),
--	(15, 'Uiverse', 'https://uiverse.io/all/', 1, 2),
--	(16, 'DevDocs', 'https://devdocs.io/', 1, 2),
--	(17, 'WebDev', 'https://web.dev/', 1, 2),
--	(18, 'Railway', 'https://railway.app/', 1, 3),
--	(19, 'Netlify', 'https://www.netlify.com/', 1, 3),
--	(20, 'Vercel', 'https://vercel.com/', 1, 3),
--	(21, 'FreeAspHosting', 'https://freeasphosting.net/', 1, 3),
--	(22, 'InfinityFree', 'https://www.infinityfree.net/', 1, 3),
--	(23, 'Azure DevObs', 'https://dev.azure.com/', 1, 3),
--	(24, 'DigitalOcean', 'https://www.digitalocean.com/', 1, 3),
--	(25, 'Linode', 'https://www.linode.com/es/', 1, 3),
--	(26, 'DonWeb', 'https://donweb.com/es-cl/', 1, 3),
--	(27, 'PixaBay', 'https://pixabay.com/', 1, 4),
--	(28, 'FreePik', 'https://www.freepik.com/', 1, 4),
--	(29, 'UnSplash', 'https://unsplash.com/', 1, 4),
--	(30, 'FreeSVG', 'https://freesvg.org/', 1, 4),
--	(31, 'SocialSVG', 'https://www.svgrepo.com/collection/social-and-company-colored-logo-icons/', 1, 4),
--	(32, 'Convert to Icon', 'https://convertio.co/es/', 1, 4),
--	(33, 'SoftIcons', 'https://www.softicons.com/', 1, 4),
--	(34, 'PlayCode', 'https://playcode.io/', 1, 5),
--	(35, 'GitHub', 'https://github.com/TheNefelin/', 1, 5),
--	(36, 'LinkedIn', 'https://www.linkedin.com/in/nefelin/', 1, 5),
--	(37, 'Figma', 'https://www.figma.com/', 1, 5),
--	(38, 'CodePen', 'https://codepen.io/', 1, 5),
--	(39, 'Canva', 'https://www.canva.com/', 1, 5),
--	(40, 'Songsterr', 'https://www.songsterr.com/', 1, 5),
--	(41, 'Mixamo', 'https://www.mixamo.com/#/', 1, 5),
--	(42, 'PublicAPI', 'https://publicapi.dev/', 1, 5),
--	(43, 'LabCenter', 'https://www.labcenter.com/', 1, 5),
--	(44, 'Oklch', 'https://oklch.com/', 1, 5),
--	(45, 'Google Bard', 'https://bard.google.com/', 1, 6),
--	(46, 'ChatGPT', 'https://chat.openai.com/', 1, 6),
--	(47, 'Claude 2', 'https://claude.ai/', 1, 6),
--	(48, 'LiterallyAnything', 'https://www.literallyanything.io/', 1, 6),
--	(49, 'BlackBox', 'https://www.useblackbox.io/', 1, 6),
--	(50, 'AgentGPT', 'https://agentgpt.reworkd.ai/es/', 1, 6),
--	(51, 'ElevenLabs', 'https://beta.elevenlabs.io/', 1, 6),
--	(52, 'Podcast', 'https://podcast.adobe.com/enhance/', 1, 6),
--	(53, 'Leonardo', 'https://leonardo.ai/', 1, 6),
--	(54, 'Jira', 'https://www.atlassian.com/es/software/jira/', 1, 7),
--	(55, 'Trello', 'https://trello.com/es/', 1, 7),
--	(56, 'ClickUp', 'https://clickup.com/', 1, 7),
--	(57, 'Asana', 'https://asana.com/es/', 1, 7)
--GO

--SET IDENTITY_INSERT [dbo].[mae_links] OFF
--GO

--TRUNCATE TABLE mae_links_grp
--TRUNCATE TABLE mae_links

SELECT * FROM mae_links_grp
SELECT * FROM mae_links

EXECUTE pa_mae_links_grp_get
EXECUTE pa_mae_links_get

