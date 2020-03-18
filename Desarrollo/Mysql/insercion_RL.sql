use riverlingerie;

insert into talla (id_talla,talla_letra,talla_num)
values (1,'S','32'),
	   (2,'M','34'),
       (3,'L','36'),
       (4,'XL','38'),
       (5,'XXL','40');
       
insert into color (id_color,nombre_color)
values (1,'blanco'),
       (2,'negro'),
       (3,'rojo'),
       (4,'fucsia'),
       (5,'vino tinto'),
       (6,'animal print');
       
insert into genero (id_genero,nom_genero,acronimo)
values (1,'Hombre','M'),
       (2,'Mujer','F'),
       (3,'Otro','O');
       
insert into tipo_documento (id_tipo_documento,nombre_tp,acronimo)
values (1,'Cedula Ciudadania','CC'),
       (2,'Cedula Extranjera','CE');
       
insert into tipo_pago (id_tipo_pago,nom_tipo_pago)
values (1,'Efectivo'),
       (2,'Tarjeta Debito'),
       (3,'Tarjeta Credito');
       
insert into referencia (id_referencia,nom_referencia)
values (1,'baby doll velo'),
       (2,'baby doll copa'),
       (3,'brazier encaje'),
       (4,'brazier algodon'),
       (5,'liguero v'),
       (6,'liguero mariposa'),
       (7,'liguero cachetero'),
       (8,'liguero tiras'),
       (9,'bralet encaje'),
       (10,'bralet copa triangulo'),
       (11,'cachetero'),
       (12,'mini corset');
       
insert into rol (id_rol,nombre_rol)
values (1,'Administrador'),
       (2,'cliente');
       
insert into almacen (id_almacen,nombre_almacen,direccion_alm,tipo_alm)
values (1,'REX','centro : mariposa','local'),
       (2,'Sex shop Daniel','centro:segundo piso','local mayorista');
       
insert into cliente
       
       