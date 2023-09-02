create table USUARIOS (
	id_usuario int IDENTITY(1,1) PRIMARY KEY,
	nickname varchar(30),
	userPassword varchar(30),
	nombre char(60),
	apePaterno char(30),
	apeMaterno char(30),
	fechNac date,
	tipoUsuario char(20),
	email varchar(60),
	telefono varchar(15),
	calle varchar(60),
	numDomicilio varchar(10),
	codigoPostal varchar(10),
	id_ciudad int
);

create table VENDEDORES (
	id_vendedor int IDENTITY(1,1) PRIMARY KEY,
	id_usuario int,
	nomEmpresa varchar(100),
	rfc varchar(20)
);

create table PRODUCTOS (
	id_producto int IDENTITY(1,1) PRIMARY KEY,
	nomProducto varchar(100),
	descripcion varchar(300),
	costo varchar(10)
);

create table CATEGORIAS (
	id_categoria smallint IDENTITY(1,1) PRIMARY KEY,
	categoria varchar(60)
);

create table TARJETAS (
	id_tarjeta int IDENTITY(1,1) PRIMARY KEY,
	nomTarjeta varchar(100),
	banco varchar(60),
	tarjeta varchar(20),
	expiracion varchar(10)
);

create table PAISES (
	id_pais smallint IDENTITY(1,1) PRIMARY KEY,
	pais varchar(60)
);

create table ESTADOS (
	id_estado int IDENTITY(1,1) PRIMARY KEY,
	estado varchar(60)
);

create table CIUDADES (
	id_ciudad int IDENTITY(1,1) PRIMARY KEY,
	ciudad varchar(60)
);

create table CARRITO_USUARIO (
	id_carrito int IDENTITY(1,1) PRIMARY KEY,
	id_usuario int
);

create table CARRITO_PRODUCTO (
	id_carrito int,
	id_producto int
);

create table PRODUCTO_CATEGORIA (
	id_producto int,
	id_categoria smallint
);

create table PRODUCTO_VENDEDOR (
	id_vendedor int,
	id_producto int
);

create table ESTADO_PAIS (
	id_estado int,
	id_pais smallint
);

create table CIUDAD_ESTADO (
	id_ciudad int,
	id_estado int
);

create table COMENTARIOS_USUARIO (
	id_comentario int,
	id_usuario int,
	comentario varchar(100)
);

create table USUARIO_TARJETA (
	id_usuario int,
	id_tarjeta int
);