

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
	Email VARCHAR(100) NOT NULL,
	Hash1 VARCHAR(256) NOT NULL,
	Salt1 VARCHAR(256) NOT NULL,
	Hash2 VARCHAR(256),
	Salt2 VARCHAR(256),
	SqlToken VARCHAR(256) ,
	Id_Perfil INT NOT NULL
	UNIQUE(Email),
	FOREIGN KEY (Id_Perfil) REFERENCES Auth_Perfil(Id)
)
GO


DROP TABLE Auth_Usuario
DROP TABLE Auth_Perfil

-- Data ---------------------------------------------------------
-- --------------------------------------------------------------
SET IDENTITY_INSERT Auth_Perfil ON
GO
INSERT INTO Auth_Perfil
	(Id, Nombre)
VALUES
	(1, 'ADMIN'),
	(2, 'USER')
SET IDENTITY_INSERT Auth_Perfil OFF
GO

-- Stored Procedure ---------------------------------------------
-- --------------------------------------------------------------
CREATE PROCEDURE Auth_Register
	@Id VARCHAR(256),
	@Email VARCHAR(100),
	@Hash1 VARCHAR(256),
	@Salt1 VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT Id FROM Auth_Usuario WHERE Email = @Email)
		BEGIN
			SELECT 400 AS StatusCode, 'El Usuario ya Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		INSERT INTO Auth_Usuario
			(Id, Email, Hash1, Salt1, Id_Perfil)
		VALUES
			(@Id, @Email, @Hash1, @Salt1, 2)

		SELECT 201 AS StatusCode, 'Usuario Registrado Correctamente' AS Msge, @Id AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (Auth_Register)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE Auth_Login
	@Email VARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Auth_Usuario SET
		SqlToken = NEWID()
	WHERE 
		Email = @Email 

	SELECT 
		a.Id,
		a.Email,
		a.Hash1,
		a.Salt1,
		a.Hash2,
		a.Salt2,
		a.SqlToken,
		--a.Id_Perfil,
		b.Nombre AS Role
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
SELECT * FROM Auth_Perfil
SELECT * FROM Auth_Usuario

EXECUTE Auth_Register 'b5fb0023-e92e-49d2-82f4-3e8933c37ab8', 'user@example.com', 'dsHQlx15zB4VngcArpPxirrEt4EdoM4MyOrcNL9wonI=', 'q+AtcVtSRKgaU2NbT12XIw=='
EXECUTE Auth_Login 'user@example.com'

TRUNCATE TABLE Auth_Usuario

-- --------------------------------------------------------------
-- --------------------------------------------------------------
