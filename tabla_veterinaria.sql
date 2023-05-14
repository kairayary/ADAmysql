create database Veterinaria;
use Veterinaria;

create table informacion(

id int not null,
nombre varchar(50) not null,
años int not null,
raza varchar(50) not null,

primary key(id)


);

insert into informacion(id,nombre, años, raza)
value
(1,"Khalua", 10, "Schnauzer"),
(2,"Blanquita",10,"Spaniel Holandes"),
(3,"Mia", 10, "Schnauzer"),
(4,"Molly", 8, "Rottweiler");

select * from informacion;