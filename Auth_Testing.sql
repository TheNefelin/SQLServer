CREATE DATABASE db_auth

USE db_auth

-- Tablas -------------------------------------------------------
-- --------------------------------------------------------------
CREATE TABLE Perfiles (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	UNIQUE(Nombre),
)
GO

CREATE TABLE Usuarios (
	Id VARCHAR(256) PRIMARY KEY,
	Email VARCHAR(100) NOT NULL,
	Usuario VARCHAR(100) NOT NULL,
	AuthHash VARBINARY(64) NOT NULL,
	AuthSalt VARBINARY(16) NOT NULL,
	SessionCode VARCHAR(256) ,
	Id_Perfil INT NOT NULL
	UNIQUE(Usuario),
	UNIQUE(Email),
	FOREIGN KEY (Id_Perfil) REFERENCES Perfiles(Id)
)
GO

DROP TABLE Perfiles
DROP TABLE Usuarios

-- Data ---------------------------------------------------------
-- --------------------------------------------------------------
SET IDENTITY_INSERT Perfiles ON
GO
INSERT INTO Perfiles
	(Id, Nombre)
VALUES
	(1, 'Admin'),
	(2, 'Usuario')
SET IDENTITY_INSERT Perfiles OFF
GO

-- Stored Procedure ---------------------------------------------
-- --------------------------------------------------------------
CREATE PROCEDURE Auth_Register
	@Email VARCHAR(100),
	@Usuario VARCHAR(100),
    @Clave01 NVARCHAR(100),
	@Clave02 NVARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON
	
	IF (@Clave01 <> @Clave02)
		BEGIN
			SELECT 400 AS StatusCode, 'Las Contraseñas no coinciden' AS StatusMessage
			RETURN
		END

	IF EXISTS (SELECT Id FROM Usuarios WHERE Email = @Email OR Usuario = @Email)
		BEGIN
			SELECT 400 AS StatusCode, 'El Usuario ya Existe' AS StatusMessage
			RETURN
		END

    DECLARE @Salt VARBINARY(16)
    SET @Salt = CRYPT_GEN_RANDOM(16)

    DECLARE @Hash VARBINARY(64)
    SET @Hash = HASHBYTES('SHA2_256', @Clave01 + CAST(@Salt AS NVARCHAR(32)))

	BEGIN TRY
		BEGIN TRANSACTION

		INSERT INTO Usuarios 
			(Id, Usuario, Email, AuthHash, AuthSalt, Id_Perfil)
		VALUES 
			(NEWID(), @Usuario, @Email, @hash, @salt, 2)
			
		COMMIT TRANSACTION

		SELECT 201 AS StatusCode, 'Usuario Registrado Correctamente' AS StatusMessage
    END TRY
    BEGIN CATCH
		ROLLBACK TRANSACTION

		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (Auth_Register)' AS StatusMessage 
    END CATCH
END

GO

CREATE PROCEDURE Auth_Login
    @Usuario NVARCHAR(100),
    @Clave NVARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON

    DECLARE @Hash VARBINARY(64)
    DECLARE @Salt VARBINARY(16)
    DECLARE @HashProvidedPassword VARBINARY(64)

    SELECT 
		@Hash = AuthHash, @Salt = AuthSalt
    FROM Usuarios 
	WHERE 
		Usuario = @Usuario

    SET @hashProvidedPassword = HASHBYTES('SHA2_256', @Clave + CAST(@Salt AS NVARCHAR(32)))

    IF @Hash <> @hashProvidedPassword
		BEGIN
			SELECT 400 AS StatusCode, 0 AS Id, 'Usuario o Contraseña Incorrecta' AS Msge
			RETURN
		END

	BEGIN TRY
		BEGIN TRANSACTION

		UPDATE Usuarios SET
			SessionCode = NEWID()
		WHERE 
			Usuario = @Usuario
		
		COMMIT TRANSACTION

		SELECT 201 AS StatusCode, 0 AS Id, 'Inicio de Sesión Exitoso.' AS Msge
    END TRY
    BEGIN CATCH
		ROLLBACK TRANSACTION

		SELECT 500 AS StatusCode, 0 AS Id, 'Error al Iniciar Sesion (Auth_Login)' AS Msge 
    END CATCH

END
GO

DROP PROCEDURE Auth_Register
DROP PROCEDURE Auth_Login

-- Query --------------------------------------------------------
-- --------------------------------------------------------------
SELECT * FROM Perfiles
SELECT * FROM Usuarios

EXECUTE Auth_Register 'ABCD123', 'prueba@db.cl', 'prueba@db.cl', '123456' 
EXECUTE Auth_Login 'prueba@db.cl', '123456' 

-- --------------------------------------------------------------
-- --------------------------------------------------------------
