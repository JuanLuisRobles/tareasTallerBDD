
---◦	Una vista que permita conocer el número de vuelos por destino (destino, número de vuelos)
---◦	Una vista que permita conocer el número de vuelos por origen (origen, número de vuelos)

create table VuelosS(
	id int not null primary key identity,
	hr_salida time not null,
	hr_llegada time not null,
	anden varchar(10) not null,
	origen varchar(100) not null,
	destino varchar(100) not null

	);

insert into VuelosS values('20:20','03:00','12','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('20:20','03:00','08','Santiago,Chile','Brasilia,Brasil');
insert into VuelosS values('20:20','03:00','10','Santiago,Chile','Montevideo,Uruguay');
insert into VuelosS values('20:20','03:00','08','Buenos Aires,Argentina','Santiago,Chile');
insert into VuelosS values('20:20','03:00','34','Santiago,Chile','Sao Paulo,Brasil');
insert into VuelosS values('20:20','03:00','33','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('20:20','03:00','01','Santiago,Chile','New York,Estado Unidos');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','Brasilia,Brasil');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('20:20','08:00','12','Santiago,Chile','Madrid,España');
insert into VuelosS values('21:20','20:00','12','Santiago,Chile','Tokio,Japon');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('08:20','03:00','12','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('20:20','08:00','12','Santiago,Chile','Madrid,España');
insert into VuelosS values('11:20','17:00','12','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','Buenos Aires,Argentina');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','New York,Estados Unidos');
insert into VuelosS values('20:20','03:00','08','Washington DC, Estados Unidos','Santiago,Chile');
insert into VuelosS values('20:20','03:00','08','Buenos Aires,Argentina','Santiago,Chile');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','Seattle,Estados Unidos');
insert into VuelosS values('21:20','06:00','09','Santiago,Chile','New York,Estados Unidos');
insert into VuelosS values('06:00','03:00','12','Santiago,Chile','New York,Estados Unidos');
insert into VuelosS values('11:20','09:00','12','New York,Estados Unidos','Santiago,Chile');
insert into VuelosS values('17:20','08:00','12','Santiago,Chile','New York,Estados Unidos');
insert into VuelosS values('19:20','03:00','12','Santiago,Chile','New York,Estados Unidos');
insert into VuelosS values('20:20','04:00','12','Santiago,Chile','New York,Estados Unidos');
insert into VuelosS values('08:20','08:00','12','Santiago,Chile','Madrid,España');
insert into VuelosS values('20:20','03:00','12','Santiago,Chile','New York,Estados Unidos');

select * from VuelosS;

select *
from VuelosS
where (destino='Santiago,Chile'
and origen='Buenos Aires,Argentina')

select *
from VuelosS
where (origen='Santiago,Chile'
and destino='Buenos Aires,Argentina')

select count(destino)as Vuelos_destino
from VuelosS

select count(origen)as Vuelos_origen
from VuelosS



--vista destino
 create view destino
 as select destino
 from VuelosS

--vista origen
 create view origen
 as select origen
 from VuelosS

 select * from origen;
 select * from destino;
 select count(all origen)origen from VuelosS;
 select count(all destino)destino from VuelosS;