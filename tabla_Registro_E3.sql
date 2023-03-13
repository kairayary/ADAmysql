create database registros1;

use registros1;
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

select * from registros_personas;

delete from registros_personas where id = 3;

set SQL_SAFE_UPDATES=0;
delete from registros_personas where apellido like'M%';
truncate table registros_personas;
insert into registros_personas(nombre, apellido,fecha_cumpleaños, estado_civil, ciudad)
values
('Roxy','Abréu','1980-10-29','Casada','Puerto Ordaz'),
('Meibel','Mendoza','1970-03-15','Divorciada','Puerto Ordaz'),
('Teresa','Alegre','1983-04-23','Casada','DelViso'),
('Carlos','De la Rosa','1970-07-23','Casada','Buenos Aires'),
('Ennio','Mendoza','1945-9-25','Casada','El Tigre'),
('Ana','Navarro','1977-09-03','Viuda','Manaus'),
('Michelle','Albarran','1995-03-03','Soltera','Miami');

select * from registros_personas;

update registros_personas set estado_civil = 'Soltera' where id = '5';

select * from registros_personas;

update registros_personas set estado_civil = 'Casada', ciudad = 'El Tigre' where id = 2;

select * from registros_personas;
update registros_personas set nombre = 'Leomara', apellido = 'Angarita' where id = 6;

select * from registros_personas;