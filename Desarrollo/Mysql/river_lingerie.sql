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

create table referencias (
id_referencias tinyint (3),
nom_referencia varchar (50) not null,
valor float (10) not null,
primary key (id_referencias)
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
foreign key (fk_genero) references genero (id_genero)
);
