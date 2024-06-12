DROP TABLE __EFMigrationsHistory

DROP TABLE F1_Carreras
DROP TABLE F1_Pilotos
DROP TABLE F1_Circuitos
DROP TABLE F1_Escuderias
DROP TABLE F1_Paises

DROP TABLE GJ_AventurasImg
DROP TABLE GJ_AventurasUsuario
DROP TABLE GJ_Aventuras
DROP TABLE GJ_GuiasUsuario
DROP TABLE GJ_Guias
DROP TABLE GJ_FondosImg
DROP TABLE GJ_Fuentes
DROP TABLE GJ_Personajes
DROP TABLE GJ_Juegos

DROP TABLE Pass_Core
DROP TABLE Pass_Plataforma

DROP TABLE Auth_Usuario
DROP TABLE Auth_Perfil

-- Tablas -------------------------------------------------------
-- --------------------------------------------------------------
CREATE TABLE Auth_Perfil (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	UNIQUE(Nombre),
)
GO

CREATE TABLE Auth_Usuario (
	Id VARCHAR(256) PRIMARY KEY,
	Usuario VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	AuthHash VARCHAR(256) NOT NULL,
	AuthSalt VARCHAR(256) NOT NULL,
	SessionCode VARCHAR(256) ,
	Id_Perfil INT NOT NULL
	UNIQUE(Usuario),
	UNIQUE(Email),
	FOREIGN KEY (Id_Perfil) REFERENCES Auth_Perfil(Id)
)
GO

-- Data ---------------------------------------------------------
-- --------------------------------------------------------------
SET IDENTITY_INSERT Auth_Perfil ON
GO
INSERT INTO Auth_Perfil
	(Id, Nombre)
VALUES
	(1, 'Admin'),
	(2, 'Usuario')
SET IDENTITY_INSERT Auth_Perfil OFF
GO

-- Stored Procedure ---------------------------------------------
-- --------------------------------------------------------------
CREATE PROCEDURE Auth_Register
	@Id VARCHAR(256),
	@Email VARCHAR(100),
	@Usuario VARCHAR(100),
	@AuthHash VARCHAR(256),
	@AuthSalt VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT Id FROM Auth_Usuario WHERE Email = @Email)
		BEGIN
			SELECT 400 AS StatusCode, 0 AS Id, 'El Usuario ya Existe' AS Msge
			RETURN
		END

	IF EXISTS (SELECT Id FROM Auth_Usuario WHERE Usuario = @Usuario)
		BEGIN
			SELECT 400 AS StatusCode, 0 AS Id, 'El Usuario ya Existe' AS Msge
			RETURN
		END

	BEGIN TRY
		INSERT INTO Auth_Usuario
			(Id, Email, Usuario, AuthHash, AuthSalt, Id_Perfil)
		VALUES
			(@Id, @Email, @Usuario, @AuthHash, @AuthSalt, 2)

		SELECT 201 AS StatusCode, 0 AS Id, 'Usuario Registrado Correctamente' AS Msge 
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 0 AS Id, 'Error al Guardado los Datos (Auth_Register)' AS Msge 
    END CATCH
END
GO

CREATE PROCEDURE Auth_Login
	@Email VARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Auth_Usuario SET
		SessionCode = NEWID()
	WHERE 
		Email = @Email 

	SELECT 
		a.Id,
		a.Email,
		a.AuthHash,
		a.AuthSalt,
		a.SessionCode,
		b.Nombre AS Perfil
	FROM Auth_Usuario a 
		INNER JOIN Auth_Perfil b ON a.Id_Perfil = b.Id
	WHERE 
		a.Email = @Email 
END
GO

DROP PROCEDURE Auth_Register
DROP PROCEDURE Auth_Login

-- Query --------------------------------------------------------
-- --------------------------------------------------------------
SELECT NEWID()

-- --------------------------------------------------------------
-- --------------------------------------------------------------
