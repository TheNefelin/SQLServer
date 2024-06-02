USE bd_password_manager
GO

-- Tablas -------------------------------------------------------
-- --------------------------------------------------------------
CREATE TABLE PM_Plataformas (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	EnlaceUrl VARCHAR(256), 
)
GO

CREATE TABLE PM_Core (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Data01 VARCHAR(256) NOT NULL,
	Data02 VARCHAR(256) NOT NULL,
	Data03 VARCHAR(256) NOT NULL,
	Id_Usuario VARCHAR(256) NOT NULL
	FOREIGN KEY (Id_Usuario) REFERENCES Auth_Usuario(Id)
)
GO

DROP TABLE PM_Core
DROP TABLE PM_Plataforma

-- Data ---------------------------------------------------------
-- --------------------------------------------------------------
SET IDENTITY_INSERT PM_Plataformas ON
GO
INSERT INTO PM_Plataformas
	(Id, Nombre, EnlaceUrl)
VALUES
	(1, 'Aliexpress', 'https://cl.aliexpress.com'),
	(2, 'AzureDevObs', 'https://dev.azure.com'),
	(3, 'ChileBT', 'https://chilebt.com/login'),
	(4, 'Clave Única', 'https://claveunica.gob.cl'),
	(5, 'Cloudflare', 'https://www.cloudflare.com/es-es'),
	(6, 'Discord', 'https://discord.com'),
	(7, 'EBay', 'https://www.ebay.com'),
	(8, 'EpicGames', 'https://www.epicgames.com'),
	(9, 'Focusrite', 'https://focusrite.com'),
	(10, 'FreeAspHosting', 'https://freeasphosting.net'),
	(11, 'GeForce NVidia', 'https://www.nvidia.com'),
	(12, 'GitHub', 'https://github.com'),
	(13, 'Google', 'https://https://www.google.cl'),
	(14, 'Hotmail', 'https://github.com'),
	(15, 'InfinityFree', 'https://www.infinityfree.com'),
	(16, 'Konami', NULL),
	(17, 'LinkedIn', 'https://www.linkedin.com'),
	(18, 'Mega', 'https://mega.io'),
	(19, 'myAsp.NET', 'https://www.myasp.net'),
	(20, 'Netlify', 'https://www.netlify.com'),
	(21, 'Nic', 'https://www.nic.cl'),
	(22, 'PreviRed', 'https://www.previred.com'),
	(23, 'PSN', 'https://www.playstation.com'),
	(24, 'Steam', 'https://store.steampowered.com'),
	(25, 'Talento Digital', 'https://talentodigitalparachile.cl'),
	(26, 'Twitch', 'https://www.twitch.tv'),
	(27, 'Ubisoft', 'https://www.ubisoft.com/'),
	(28, 'Unity', 'https://unity.com/'),
	(29, 'Vercel', 'https://vercel.com'),
	(30, 'WiFi', NULL),
	(31, 'Yahoo', 'https://Hotmail.com')
GO
SET IDENTITY_INSERT PM_Plataformas OFF
GO

-- Stored Procedure ---------------------------------------------
-- --------------------------------------------------------------
CREATE PROCEDURE PM_GetAll 
	@Deco VARCHAR(256),
	@Id_Usuario VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		Id,
		--Data01,
		--Data02,
		--Data03
		CONVERT(VARCHAR, DECRYPTBYPASSPHRASE(@Deco, Data01)) AS Data01,
		CONVERT(VARCHAR, DECRYPTBYPASSPHRASE(@Deco, Data02)) AS Data02,
		CONVERT(VARCHAR, DECRYPTBYPASSPHRASE(@Deco, Data03)) AS Data03,
		Id_Usuario
	FROM PM_Core
	WHERE
		Id_Usuario = @Id_Usuario
END
GO

CREATE PROCEDURE PM_Insert
	@Deco VARCHAR(256),
	@Data01 VARCHAR(256),
	@Data02 VARCHAR(256),
	@Data03 VARCHAR(256),
	@Id_Usuario VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		INSERT INTO PM_Core
			(Data01, Data02, Data03, Id_Usuario)
		VALUES
			--(@Data01, @Data02, @Data03, Id_Usuario)
			(ENCRYPTBYPASSPHRASE(@Deco, @Data01), ENCRYPTBYPASSPHRASE(@Deco, @Data02), ENCRYPTBYPASSPHRASE(@Deco, @Data03), @Id_Usuario)

		SELECT 201 AS StatusCode, SCOPE_IDENTITY() AS Id, 'Datos Guardado Correctamente' AS Msge 
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 0 AS Id, 'Error al Guardado los Datos (PM_Insert)' AS Msge 
    END CATCH
END
GO

CREATE PROCEDURE PM_Update
	@Id INT,
	@Deco VARCHAR(256),
	@Data01 VARCHAR(MAX),
	@Data02 VARCHAR(MAX),
	@Data03 VARCHAR(MAX),
	@Id_Usuario VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		UPDATE PM_Core SET
			Data01 = ENCRYPTBYPASSPHRASE(@Deco, @Data01),
			Data02 = ENCRYPTBYPASSPHRASE(@Deco, @Data02),
			Data03 = ENCRYPTBYPASSPHRASE(@Deco, @Data03)
		WHERE
			Id = @Id 
			AND Id_Usuario = @Id_Usuario

		SELECT 202 AS StatusCode, @Id AS Id, 'Datos Modificados Correctamente' AS Msge 
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 0 AS Id, 'Error al Modificar los Datos (PM_Update)' AS Msge 
    END CATCH
END
GO

CREATE PROCEDURE PM_Delete
	@Id INT,
	@Id_Usuario VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		DELETE FROM PM_Core WHERE Id = @Id AND Id_Usuario = @Id_Usuario

		SELECT 202 AS StatusCode, 0 AS Id, 'Datos Eliminados Correctamente' AS Msge 
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 0 AS Id, 'Error al Eliminar (PF_Delete)' AS Msge 
    END CATCH
END
GO

DROP PROCEDURE PM_GetAll
DROP PROCEDURE PM_Insert
DROP PROCEDURE PM_Update
DROP PROCEDURE PM_Delete

-- Query --------------------------------------------------------
-- --------------------------------------------------------------
SELECT NEWID()

DECLARE @Password VARCHAR(50) SET @Password = 'MyPassword'
DECLARE @Secret VARCHAR(50) SET @Secret = 'SecretData'
DECLARE @Encrypted VARBINARY(MAX) 
DECLARE @Decrypted VARCHAR(50) 
-- Tiene proceso inverso
SET @Encrypted = (SELECT ENCRYPTBYPASSPHRASE(@Password, @Secret))
SET @Decrypted = CONVERT(VARCHAR, DECRYPTBYPASSPHRASE(@Password, @Encrypted))
SELECT @Encrypted
SELECT @Decrypted
-- NO Tiene proceso inverso
SET @Encrypted = HASHBYTES('SHA2_256', @Secret)
SELECT @Encrypted

DECLARE @Id_Usuario AS VARCHAR(50) SET @Id_Usuario = 'd4297916-d4f1-4cbc-96c1-6762c6d18395'
DECLARE @Deco AS VARCHAR(50) SET @Deco = '258AFBF7-0F9F-40AC-B447-5844504CFC41'

EXECUTE PM_GetAll @Deco, @Id_Usuario
EXECUTE PM_Insert @Deco, @Id_Usuario, 'UsuarioSecreto', 'ClaveSecreto', 'PlataformaSecreto'

-- --------------------------------------------------------------
-- --------------------------------------------------------------
