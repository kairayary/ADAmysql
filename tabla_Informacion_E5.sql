create database Informacion;
use Informacion;
create table registros(
id int auto_increment,
nombre varchar(12) not null,
apellido varchar(20) not null,
genero char (10) not null,
fecha_cumpleaños date not null,
ciudad varchar(40) not null,
telefono varchar (20) not null,
primary key (id)

);

insert into registros(nombre, apellido, genero, fecha_cumpleaños, ciudad, telefono)
values
('Kaira','Abréu', 'F','1981-09-03','Buenos Aires', '124565'),
('Etnio','Mendoza','M','1971-08-27','El Tigre','225445'),
('Oscar','Cordero', 'F','1999-02-23','Puerto Ordaz','544984'),
('Maryangel','Amundaray','F','1984-07-23','Buenos Aires','748545'),
('Maria','Betancourt','F','1952-10-23','El Tigre','456465'),
('Ana','Navarro','F','1977-09-03','Manaus','5445565456'),
('Lisbeth','Albarran','F','1983-03-31','San Martino Di Castrozza','846513'),
('Miguel','Amundaray','M','1981-04-24','Buenos Aires', '454545'),
('Carly','Amundaray','F','2011-07-12','Buenos Aires','154456'),
('Eduardo','Marcano','M','2004-08-23','San Felix','245545'),
('Alexis','Mendoza','M','1983-03-01','Anaco','145545'),
('Lisbeth','Mendoza','F','1977-03-31','Avellanada','154554'),
('Ludys','Gutierrez','F','1977-08-24','Ciudad Bolivar', '215554');

select * from registros;

select concat(nombre, ", ", apellido) as Atajo from registros;



select * from registros order by nombre, apellido;

select ciudad from registros;

select * from registros where genero = 'F';

select * from registros where genero = 'M';

select genero,  count(*) as recuento from registros where genero = 'F';

select genero,  count(*) as recuento from registros where genero = 'M';

select day(fecha_cumpleaños), month(fecha_cumpleaños) from registros;

select year(fecha_cumpleaños) from registros;

select ciudad,  count(*) as recuento from registros group by ciudad;

delete from registros where id = 3;
select * from registros;

update registros set apellido = 'Salvatore', ciudad = 'Island', telefono= '2345678' where id = 7;
select * from registros;

select telefono from registros;

set SQL_SAFE_UPDATES=0;
delete from registros where apellido like'M%';

delete from registros where nombre like'%o';

alter table registros 
add ubicación varchar(20) NULL;


select * from registros;
alter table registros change ubicación dirección varchar(20);

select * from registros;

insert into registros(nombre, apellido, genero, fecha_cumpleaños, ciudad, telefono, dirección)
values
('Lili','Brown', 'F','1970-02-03','Buenos Aires', '124335','Independencia 15'),
('Carmen','Andarcia','F','1952-08-27','Caracas','225555', 'Av. Libertad '),
('Andres','Cordero', 'M','1999-02-23','Avellaneda','544984',' 2 cruce 13'),
('Mariam','Ordaz','F','1987-07-23','Buenos Aires','777545', 'Fernando Fader'),
('Luciano','Antares','M','2000-10-23','CABA','457765','Independencia 1234');


select * from registros;
