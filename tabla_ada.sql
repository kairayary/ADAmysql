create database ada;
use ada;
create table persona(
id int auto_increment,
nombre varchar(20) not null,
apellido varchar(20) not null,
edad int not null,
primary key(id)

);

insert into persona(
nombre, apellido, edad)
values
('Kaira', 'Abreu', 41),
('Oscar', 'Cordero', 24),
('Valeria', 'Amundaray', 15),
('Andres', 'Cordero', 16);
