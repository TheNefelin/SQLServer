
DROP TABLE PM_Core
DROP TABLE PM_Plataforma

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

-- Data ---------------------------------------------------------
-- --------------------------------------------------------------

-- Stored Procedure ---------------------------------------------
-- --------------------------------------------------------------
CREATE PROCEDURE PM_Core_Get 
	@SqlToken VARCHAR(256),
	@Id_Usuario VARCHAR(256),
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM Auth_Usuario WHERE Id = @Id_Usuario AND SqlToken = @SqlToken)
		BEGIN
			RETURN
		END

	IF @Id > 0
		BEGIN
			SELECT
				Id,
				Data01,
				Data02,
				Data03,
				Id_Usuario
			FROM PM_Core
			WHERE
				Id_Usuario = @Id_Usuario
				AND Id = @Id
		END
	ELSE
		BEGIN
			SELECT
				Id,
				Data01,
				Data02,
				Data03,
				Id_Usuario
			FROM PM_Core
			WHERE
				Id_Usuario = @Id_Usuario
		END
END
GO

CREATE PROCEDURE PM_Core_Insert
	@SqlToken VARCHAR(256),
	@Data01 VARCHAR(256),
	@Data02 VARCHAR(256),
	@Data03 VARCHAR(256),
	@Id_Usuario VARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM Auth_Usuario WHERE Id = @Id_Usuario AND SqlToken = @SqlToken)
		BEGIN
			SELECT 401 AS StatusCode, 'No Estas Autorizado' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		INSERT INTO PM_Core
			(Data01, Data02, Data03, Id_Usuario)
		VALUES
			(@Data01, @Data02, @Data03, @Id_Usuario)

		SELECT 201 AS StatusCode, 'Datos Guardado Correctamente' AS Msge, SCOPE_IDENTITY() AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Guardado los Datos (PM_Core_Insert)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PM_Core_Update
	@SqlToken VARCHAR(256),
	@Id_Usuario VARCHAR(256),
	@Id INT,
	@Data01 VARCHAR(MAX),
	@Data02 VARCHAR(MAX),
	@Data03 VARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM Auth_Usuario WHERE Id = @Id_Usuario AND SqlToken = @SqlToken)
		BEGIN
			SELECT 401 AS StatusCode, 'No Estas Autorizado' AS Msge, 0 AS Id
			RETURN
		END

    IF NOT EXISTS (SELECT Id FROM PM_Core WHERE Id = @Id AND Id_Usuario = @Id_Usuario)
		BEGIN
			SELECT 404 AS StatusCode, 'El Registro No Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		UPDATE PM_Core SET
			Data01 = @Data01,
			Data02 = @Data02,
			Data03 = @Data03
		WHERE
			Id = @Id 
			AND Id_Usuario = @Id_Usuario

		SELECT 202 AS StatusCode, 'Datos Modificados Correctamente' AS Msge, @Id AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Modificar los Datos (PM_Core_Update)' AS Msge, 0 AS Id
    END CATCH
END
GO

CREATE PROCEDURE PM_Core_Delete
	@Id_Usuario VARCHAR(256),
	@SqlToken VARCHAR(256),
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS (SELECT Id FROM Auth_Usuario WHERE Id = @Id_Usuario AND SqlToken = @SqlToken)
		BEGIN
			SELECT 401 AS StatusCode, 'No Estas Autorizado' AS Msge, 0 AS Id
			RETURN
		END

    IF NOT EXISTS (SELECT Id FROM PM_Core WHERE Id = @Id AND Id_Usuario = @Id_Usuario)
		BEGIN
			SELECT 404 AS StatusCode, 'El Registro No Existe' AS Msge, 0 AS Id
			RETURN
		END

	BEGIN TRY
		DELETE FROM PM_Core WHERE Id = @Id AND Id_Usuario = @Id_Usuario

		SELECT 202 AS StatusCode, 'Datos Eliminados Correctamente' AS Msge, 0 AS Id
    END TRY
    BEGIN CATCH
		SELECT 500 AS StatusCode, 'Error al Eliminar (PM_Core_Delete)' AS Msge, 0 AS Id
    END CATCH
END
GO

DROP PROCEDURE PM_Core_Get
DROP PROCEDURE PM_Core_Insert
DROP PROCEDURE PM_Core_Update
DROP PROCEDURE PM_Core_Delete

-- Query --------------------------------------------------------
-- --------------------------------------------------------------
SELECT * FROM Auth_Perfil
SELECT * FROM Auth_Usuario
SELECT * FROM PM_Core

INSERT INTO PM_Core 
	(Data01, Data02, Data03, Id_Usuario)
VALUES
	('Data01', 'Data01', 'Data01', '618e5674-cc2e-4be0-a68a-39ed66bd1c85'),
	('Data02', 'Data02', 'Data02', '618e5674-cc2e-4be0-a68a-39ed66bd1c85'),
	('Data03', 'Data03', 'Data03', '618e5674-cc2e-4be0-a68a-39ed66bd1c85')

EXECUTE Auth_Login 'user@example.com'
EXECUTE PM_Core_Get 'F3206C1E-7248-4F77-8471-1871C40994D7', '618e5674-cc2e-4be0-a68a-39ed66bd1c85', 0

-- --------------------------------------------------------------
-- --------------------------------------------------------------
