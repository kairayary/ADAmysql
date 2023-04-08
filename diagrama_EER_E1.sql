create database documento;
use documento;

create table dni(
id int not null auto_increment,
num_documento varchar(30),

primary key(id)

);

create table persona(
id int not null auto_increment,
nombre varchar(45),
apellido varchar(45),
cumpleaños date,
documento_id int not null,
primary key(id),
 constraint fk_persona_documento
 
 foreign key(documento_id) references dni(id)
);
insert into dni(id,num_documento)
value(1, "1245786");

insert into persona( nombre, apellido, cumpleaños, documento_id)
value("Violeta", "Andrade", "1999-03-03",1);