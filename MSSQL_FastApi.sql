
-- Tablas -------------------------------------------------------
-- --------------------------------------------------------------
CREATE TABLE Usuarios (
	Id VARCHAR(256) PRIMARY KEY,
	Email VARCHAR(100) NOT NULL,
	Clave VARCHAR(100) NOT NULL,
	SessionCode VARCHAR(256),
	--AuthHash VARBINARY(64) NOT NULL,
	--AuthSalt VARBINARY(16) NOT NULL,
	UNIQUE(Email)
)
GO

DROP TABLE Usuarios
GO

-- Stored Procedure ---------------------------------------------
-- --------------------------------------------------------------

EXECUTE PY_Login 'string', 'string'

-- Query --------------------------------------------------------
-- --------------------------------------------------------------
INSERT INTO Usuarios 
	(Id, Email, Clave, SessionCode)
VALUES
	(NEWID(), 'string', 'string', NEWID())

SELECT * FROM Usuarios

-- --------------------------------------------------------------
-- --------------------------------------------------------------
