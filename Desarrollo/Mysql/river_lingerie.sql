create database riverlingerie;
use riverlingerie;

create table talla (
id_talla tinyint (3) not null,
talla_letra char (3) not null,
talla_num tinyint (3) not null,
primary key (id_talla)
);

create table color (
id_color tinyint (3) not null,
nombre_color varchar (30) not null,
primary key (id_color)
);

create table genero (
id_genero tinyint (3),
nom_genero varchar (30)not null,
acronimo varchar (30),
primary key (id_genero)
);

create table tipo_documento (
id_tipo_documento tinyint (3),
nombre_td varchar (30) not null,
acronimo varchar (5) not null,
primary key (id_tipo_documento)
);

create table tipo_pago (
id_tipo_pago tinyint (3),
nom_tipo_pago varchar (40),
primary key (id_tipo_pago)
);

create table referencia(
id_referencia tinyint (3),
nom_referencia varchar (50) not null,
primary key (id_referencia)
);

create table rol(
id_rol tinyint (3),
nombre_rol varchar(30),
primary key (id_rol)
);

create table almacen(
id_almacen tinyint (3),
nombre_almacen varchar(20),
direccion_alm varchar(30),
tipo_alm varchar (20),
primary key (id_almacen)
);


create table cliente (
id_numero_documento varchar (25),
primer_nombre varchar (20) not null,
segundo_nombre varchar (20),
primer_apellido varchar (20) not null,
segundo_apellido varchar (20),
telefono varchar (15) not null,
direccion varchar (30) not null,
foto blob,
correo_electronico varchar (40),
fk_genero tinyint (3),
fk_tipo_documento tinyint (3),
fk_rol tinyint (3),
fk_almacen tinyint (3),
foreign key (fk_genero) references genero (id_genero),
foreign key (fk_tipo_documento) references tipo_documento(id_tipo_documento),
foreign key (fk_almacen) references almacen (id_almacen),
foreign key (fk_rol) references rol (id_rol),
primary key (id_numero_documento,fk_tipo_documento,fk_rol)
);

create table pedido (
id_pedido tinyint (3),
nombre_pedido varchar (30),
fk_cliente varchar (25),
foreign key (fk_cliente) references cliente (id_numero_documento),
primary key (id_pedido,fk_cliente)
);

create table producto(
id_producto tinyint (3),
valor float(15),
stock int(5),
estado boolean,
fk_referencia tinyint (3),
fk_talla tinyint (3),
fk_color tinyint (3),
foreign key (fk_referencia) references referencia (id_referencia),
foreign key (fk_talla) references talla (id_talla),
foreign key (fk_color) references color (id_color),
primary key (id_producto)
);

create table factura(
id_factura tinyint (5),
fecha date,
hora_despacho time,
iva varchar(10),
valor_subtotal varchar (10),
valor_total varchar (10),
fk_pedido tinyint (3),
fk_producto tinyint (3),
fk_id_numero_documento varchar (25),
fk_tipo_pago tinyint (3),
foreign key (fk_pedido) references pedido (id_pedido),
foreign key (fk_producto) references producto (id_producto),
foreign key (fk_id_numero_documento) references cliente (id_numero_documento),
foreign key (fk_tipo_pago) references tipo_pago (id_tipo_pago),
primary key (id_factura,fk_tipo_pago)
);

