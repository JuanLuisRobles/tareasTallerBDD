--Vuelos realizados en el aeropuerto, considerando el promedio de edad de los pasajeros por cada viaje (un m?nimo de 5 viajes) en los ?ltimos 5 d?as

create table pasajerosS(
	id int not null primary key identity,
	rut varchar(15)not null,
	nombre varchar(100) not null,
	fecha_nac date not null,
	dia_salida date not null,
	dia_llegada date not null,
	destino varchar(200) not null,
	direccion varchar(200)
	);
	set dateformat dmy;--para cambiar formato de fecha

	Select * from pasajerosS


insert into pasajerosS values ('11.343.874-0','Carolina Ester Gonzales Uribe','30-01-1989','31-03-2020','15-04-2020','Argentina','Avenida Olaf 982');
insert into pasajerosS values ('12.354.767-k','Jose Luis Castro Hernandez','23-11-1988','23-12-2019','01-01-2020','Brasil','Lopez Obrador 245 interior');
insert into pasajerosS values ('14.234.654-k','Mateo Joaquin Hernandez Lopez','23-12-1987','15-12-2020','31-12-2020','Brasil','Los Cardos 55');
insert into pasajerosS values ('21.265.867-0','Luis Miguel Roa Perez','11-02-1999','09-09-2021','19-09-2021','Mexico','Pelantaro 231');
insert into pasajerosS values ('19.434.231-0','Sofia Mariana Lopez Castro','09-07-2010','28-07-2021','01-08-2021','Estados Unidos','Cardos 23 Villa Esperanza');
insert into pasajerosS values ('11.343.874-0','Carolina Ester Gonzales Uribe','30-01-1989','31-03-2020','15-04-2020','Argentina','Avenida Olaf 982');
insert into pasajerosS values ('12.354.767-k','Jose Luis Castro Hernandez','23-11-1988','01-04-2020','15-04-2020','Brasil','Lopez Obrador 245 interior');
insert into pasajerosS values ('14.234.654-k','Mateo Joaquin Hernandez Lopez','23-12-1987','02-04-2020','15-04-2020','Brasil','Los Cardos 55');
insert into pasajerosS values ('21.265.867-0','Luis Miguel Roa Perez','11-02-1999','04-04-2020','15-04-2020','Mexico','Pelantaro 231');
insert into pasajerosS values ('19.434.231-0','Sofia Mariana Lopez Castro','09-07-2010','05-04-2020','15-04-2020','Estados Unidos','Cardos 23 Villa Esperanza');


SELECT * FROM pasajerosS WHERE dia_salida BETWEEN '2020-03-31' AND '2020-04-15'

Select DATEDIFF(YEAR,edad,GETDATE())
-(CASE
   WHEN DATEADD(YY,DATEDIFF(YEAR,pasajerosS.edad,GETDATE()),pasajerosS.edad)>GETDATE() THEN
      1
   ELSE
      30
   END) as promedio
 from pasajerosS