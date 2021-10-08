create table pasajerosS(
	id int not null primary key identity,
	rut varchar(15)not null,
	nombre varchar(100) not null,
	edad int not null,
	dia_salida date not null,
	dia_llegada date not null,
	destino varchar(200) not null,
	direccion varchar(200)
	);
	set dateformat dmy;--para cambiar formato de fecha

	Select * from pasajerosS


insert into pasajerosS values ('11.343.874-0','Carolina Ester Gonzales Uribe','30','31-03-2020','15-04-2020','Argentina','Avenida Olaf 982');
insert into pasajerosS values ('12.354.767-k','Jose Luis Castro Hernandez','40','23-12-2019','01-01-2020','Brasil','Lopez Obrador 245 interior');
insert into pasajerosS values ('14.234.654-k','Mateo Joaquin Hernandez Lopez','40','15-12-2020','31-12-2020','Brasil','Los Cardos 55');
insert into pasajerosS values ('21.265.867-0','Luis Miguel Roa Perez','31','09-09-2021','19-09-2021','Mexico','Pelantaro 231');
insert into pasajerosS values ('19.434.231-0','Sofia Mariana Lopez Castro','21','28-07-2021','01-08-2021','Estados Unidos','Cardos 23 Villa Esperanza');
insert into pasajerosS values ('11.343.874-0','Carolina Ester Gonzales Uribe','22','31-03-2020','15-04-2020','Argentina','Avenida Olaf 982');
insert into pasajerosS values ('12.354.767-k','Jose Luis Castro Hernandez','35','01-04-2020','15-04-2020','Brasil','Lopez Obrador 245 interior');
insert into pasajerosS values ('14.234.654-k','Mateo Joaquin Hernandez Lopez','29','02-04-2020','15-04-2020','Brasil','Los Cardos 55');
insert into pasajerosS values ('21.265.867-0','Luis Miguel Roa Perez','25','04-04-2020','15-04-2020','Mexico','Pelantaro 231');
insert into pasajerosS values ('19.434.231-0','Sofia Mariana Lopez Castro','11','05-04-2020','15-04-2020','Estados Unidos','Cardos 23 Villa Esperanza');


SELECT * FROM pasajerosS WHERE dia_salida BETWEEN '2020-03-31' AND '2020-04-15' --ordena los vuelos por fecha

 SELECT AVG(All edad)promedio_edades from pasajerosS; --promedio todas las edades

 Select AVG(distinct edad) promedio_distintas_edades from pasajerosS; ---promedio edades distintas

 select * from pasajerosS  --ordena por edad
 order by edad

  select * from pasajerosS  --ordena por dia de salida
 order by dia_salida
