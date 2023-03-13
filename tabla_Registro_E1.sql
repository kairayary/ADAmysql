create database registros;

use registros;
create table registros_personas(
id int auto_increment,
nombre varchar(20) not null,
apellido varchar(20) not null,
fecha_cumpleaños date,
estado_civil varchar(25) not null,
ciudad varchar(40) not null,
primary key (id)
);
insert into registros_personas(nombre, apellido,fecha_cumpleaños, estado_civil, ciudad)
values
('Kaira','Abréu','1981-09-03','Casada','Buenos Aires'),
('Etnio','Mendoza','1971-08-27','Divorciado','El Tigre'),
('Oscar','Corder','1999-02-23','Soltero','Puerto Ordaz'),
('Maryangel','Amundaray','1984-07-23','Divorciada','Buenos Aires'),
('Maria','Betancourt','1952-10-23','Casada','El Tigre'),
('Ana','Navarro','1977-09-03','Viuda','Manaus'),
('Lisbeth','Albarran','1983-03-31','Casada','San Martino Di Castrozza'),
('Miguel','Amundaray','1981-04-24','Casado','Buenos Aires');


select nombre, apellido from registros_personas;
select nombre, apellido from registros_personas order by nombre ASC;
select nombre, apellido from registros_personas order by apellido ASC;
select * from registros_personas where estado_civil = 'Casada';
select * from registros_personas where estado_civil = 'Soltero';
select * from registros_personas where apellido = 'Baez';
select * from registros_personas where apellido = 'Vargas' and estado_civil='Soltero';


insert into registros_personas(nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values
('Maribel','Tovar','1968-04-13','Viuda','CABA');


select * from registros_personas;

update registros_personas set apellido='Maestre' 
where id = 5;
select * from registros_personas;
delete from registros_personas where id='3';
select * from registros_personas;
select * from registros_personas limit 4 offset 3;

select * from registros_personas where nombre like 'A%';
select * from registros_personas where nombre like '%Z';