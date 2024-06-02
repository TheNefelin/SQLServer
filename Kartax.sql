USE bd_kartax
GO

-- Tablas -------------------------------------------------------
-- --------------------------------------------------------------
CREATE TABLE KT_Negocios (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Descripcion VARCHAR(256),
	Rut VARCHAR(12),
	Direccion VARCHAR(256),
	Mapa VARCHAR(1000),
	Logo VARCHAR(100),
	Estado BIT,
	UNIQUE(Rut),
)
GO

CREATE TABLE KT_Mesas (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Descripcion VARCHAR(256),
	X INT NOT NULL,
	Y INT NOT NULL,
	Estado BIT NOT NULL,
	Id_Negocio INT NOT NULL,
	FOREIGN KEY (Id_Negocio) REFERENCES KT_Negocios(Id),
)
GO

CREATE TABLE KT_RRSS (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Img VARCHAR(100) NOT NULL,
)
GO

CREATE TABLE KT_Nego_RRSS (
	Id_Negocio INT NOT NULL,
	Id_RRSS INT NOT NULL,
	EnlaceUrl VARCHAR(256) NOT NULL,
	PRIMARY KEY (Id_Negocio, Id_RRSS),
	FOREIGN KEY (Id_Negocio) REFERENCES KT_Negocios(Id),
	FOREIGN KEY (Id_RRSS) REFERENCES KT_RRSS(Id),
)
GO

CREATE TABLE KT_ProductosGrp (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Img VARCHAR(100),
	Estado BIT NOT NULL,
	Id_Negocio INT NOT NULL,
	FOREIGN KEY (Id_Negocio) REFERENCES KT_Negocios(Id),
)
GO

CREATE TABLE KT_ProductosCateg (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Id_ProductoGrp INT NOT NULL,
	FOREIGN KEY (Id_ProductoGrp) REFERENCES KT_ProductosGrp(Id),
)
GO

CREATE TABLE KT_Productos (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
	Descripcion VARCHAR(256),
	Precio INT NOT NULL,
	Img VARCHAR(100),
	Estado BIT NOT NULL,
	Id_ProductoCateg INT NOT NULL,
	FOREIGN KEY (Id_ProductoCateg) REFERENCES KT_ProductosCateg(Id),
)
GO

CREATE TABLE KT_Perfiles (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50) NOT NULL,
)
GO

CREATE TABLE KT_Usuarios (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(256) NOT NULL,
	Apellidos VARCHAR(256) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Usuario VARCHAR(50) NOT NULL,
	AuthHash VARCHAR(256) NOT NULL,
	AuthSalt VARCHAR(256) NOT NULL,
	SessionCode VARCHAR(256) NOT NULL,
	Fecha DATETIME NOT NULL,
	Estado BIT NOT NULL,
	Id_Perfil INT NOT NULL,
	FOREIGN KEY (Id_Perfil) REFERENCES KT_Perfiles(Id),
)
GO

CREATE TABLE KT_Cajas (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Monto INT NOT NULL,
	FechaIni DATETIME NOT NULL,
	FechaFin DATETIME,
	Estado BIT NOT NULL,
	Id_Usuario INT NOT NULL,
	FOREIGN KEY (Id_Usuario) REFERENCES KT_Usuarios(Id),
)
GO

CREATE TABLE KT_Nego_Usuario (
	Id_Negocio INT NOT NULL,
	Id_Usuario INT NOT NULL,
	PRIMARY KEY (Id_Negocio, Id_Usuario),
	FOREIGN KEY (Id_Negocio) REFERENCES KT_Negocios(Id),
	FOREIGN KEY (Id_Usuario) REFERENCES KT_Usuarios(Id),
)
GO

DROP TABLE KT_Nego_Usuario
DROP TABLE KT_Cajas
DROP TABLE KT_Usuarios
DROP TABLE KT_Perfiles
DROP TABLE KT_Productos
DROP TABLE KT_ProductosCateg
DROP TABLE KT_ProductosGrp
DROP TABLE KT_Nego_RRSS
DROP TABLE KT_RRSS
DROP TABLE KT_Mesas
DROP TABLE KT_Negocios

-- Data ---------------------------------------------------------
-- --------------------------------------------------------------
SET IDENTITY_INSERT KT_Negocios ON
GO
INSERT INTO KT_Negocios
	(Id, Nombre, Descripcion, Rut, Direccion, Mapa, Logo, Estado)
VALUES
	(1, 'Kartax', 'Demo', '00.000.000-0', 'Viña del Mar', NULL , 'logo.ico', 1)
SET IDENTITY_INSERT KT_Negocios OFF
GO

--SET IDENTITY_INSERT KT_Mesas ON
--GO
--INSERT INTO KT_Mesas
--	(Id, Nombre, Descripcion, X, Y, Estado, Id_Negocio)
--VALUES
--SET IDENTITY_INSERT KT_Mesas OFF
--GO

--SET IDENTITY_INSERT KT_RRSS ON
--GO
--INSERT INTO KT_RRSS
--	(Id, Nombre, Img)
--VALUES
--SET IDENTITY_INSERT KT_RRSS OFF
--GO

--SET IDENTITY_INSERT KT_Nego_RRSS ON
--GO
--INSERT INTO KT_Nego_RRSS
--	(Id_Negocio, Id_RRSS, EnlaceUrl)
--VALUES
--SET IDENTITY_INSERT KT_Nego_RRSS OFF
--GO

SET IDENTITY_INSERT KT_ProductosGrp ON
GO
INSERT INTO KT_ProductosGrp
	(Id, Nombre, Img, Estado, Id_Negocio)
VALUES
	(1, 'Para Beber', 'Grp01.webp',1, 1),
	(2, 'Tablas', 'Grp02.webp',1, 1),
	(3, 'Para chanchear', 'Grp03.webp',1, 1)
SET IDENTITY_INSERT KT_ProductosGrp OFF
GO

SET IDENTITY_INSERT KT_ProductosCateg ON
GO
INSERT INTO KT_ProductosCateg
	(Id, Nombre, Id_ProductoGrp)
VALUES
	(1, 'Cervezas Artesanales', 1),
	(2, 'Cervezas Envasadas', 1),
	(3, 'De la Casa', 2),
	(4, 'Hamburguesas', 3),
	(5, 'Completos', 3)
SET IDENTITY_INSERT KT_ProductosCateg OFF
GO

SET IDENTITY_INSERT KT_Productos ON
GO
INSERT INTO KT_Productos
	(Id, Nombre, Descripcion, Precio, Img, Estado, Id_ProductoCateg)
VALUES
	(1, 'Pils', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 5500,'Producto01_webp', 1, 1),
	(2, 'Santa Sed', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 4800,'Producto02_webp', 1, 1),
	(3, 'Blood', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 4500,'Producto03_webp', 1, 1),
	(4, 'Heineken', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 2500,'Producto04_webp', 1, 2),
	(5, 'Kross', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 3500,'Producto05_webp', 1, 2),
	(6, 'Kunstmann', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 2500,'Producto06_webp', 1, 2),
	(7, 'Budweiser', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 2000,'Producto07_webp', 1, 2),
	(8, 'Royal', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 2500,'Producto08_webp', 1, 2),
	(9, 'Tabla de Carne', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 7000,'Producto09_webp', 1, 3),
	(10, 'Tabla de Queso', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 7000,'Producto10_webp', 1, 3),
	(11, 'Tabla Veggie', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 7000,'Producto11_webp', 1, 3),
	(12, 'Papas Rústicas', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 5000,'Producto12_webp', 1, 3),
	(13, 'Papas Merken', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 5000,'Producto13_webp', 1, 3),
	(14, 'Papas Cheddar', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 6000,'Producto14_webp', 1, 3),
	(15, 'Hamburguesa de Res', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 6000,'Producto15_webp', 1, 4),
	(16, 'Hamburguesa Pollo Apanado', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 6000,'Producto16_webp', 1, 4),
	(17, 'Hamburguesa Doble Cheddar', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 6000,'Producto17_webp', 1, 4),
	(18, 'Hamburguesa Mechada', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 6000,'Producto18_webp', 1, 4),
	(19, 'Hamburguesa Veggie', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 6000,'Producto19_webp', 1, 4),
	(20, 'Hamburguesa Veggie Legumbres', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 6000,'Producto20_webp', 1, 4),
	(21, 'Completo Mexicano', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 3000,'Producto21_webp', 1, 5),
	(22, 'Completo Tocino', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 3000,'Producto22_webp', 1, 5),
	(23, 'Completo Italiano', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 3000,'Producto23_webp', 1, 5),
	(24, 'Completo Aleman', 'nace de lupulo y cebada, y vive en una botella encerrada, puede ser morena o dorada, puede ser de trigo o cereza, para ser sincero sin rodeo digo, buena amiga es la cerveza"', 3000,'Producto24_webp', 1, 5)
SET IDENTITY_INSERT KT_Productos OFF
GO

SET IDENTITY_INSERT KT_Perfiles ON
GO
INSERT INTO KT_Perfiles
	(Id, Nombre)
VALUES
	(1, 'System Admin'),
	(2, 'Admin'),
	(3, 'DeUsuario')
SET IDENTITY_INSERT KT_Perfiles OFF
GO

--SET IDENTITY_INSERT KT_Usuarios ON
--GO
--INSERT INTO KT_Usuarios
--	(Id, Nombre, Apellido, Email, Usuario, AuthHash, AuthSalt, SessionCode, Fecha, Estado, Id_Perfil)
--VALUES
--SET IDENTITY_INSERT KT_Usuarios OFF
--GO

--SET IDENTITY_INSERT KT_Cajas ON
--GO
--INSERT INTO KT_Cajas
--	(Id, Monto, FechaIni, FechaFin, Estado, Id_Usuario)
--VALUES
--SET IDENTITY_INSERT KT_Cajas OFF
--GO

--SET IDENTITY_INSERT KT_Nego_Usuario ON
--GO
--INSERT INTO KT_Nego_Usuario
--	(Id_Negocio, Id_Usuario)
--VALUES
--SET IDENTITY_INSERT KT_Nego_Usuario OFF
--GO

-- --------------------------------------------------------------
-- --------------------------------------------------------------
