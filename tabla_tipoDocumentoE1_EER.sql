create database registrodb;
use registrodb;

create table tipoDocumento(
id int not null auto_increment,
documento_tipo varchar(45) not null,
primary key (id)
);

create table persona(
id int not null auto_increment,
nombre varchar(45) not null,
apellido varchar(45) not null,
numero_documento varchar(45) not null,
documentoTipo_id int not null,
primary key(id),
 constraint fk_persona_documentoTipo
 
 foreign key(documentoTipo_id) references tipoDocumento(id)

);
insert into tipoDocumento(documento_tipo)
value("Cedula");

select * from tipoDocumento;

insert into persona(nombre, apellido, numero_documento,documentoTipo_id )
value("Valentina", "Abreu", "2085247",2);

select *from persona;

select nombre, documentoTipo_id from persona;

select documento_tipo from tipoDocumento;

insert into tipoDocumento(documento_tipo)
value("pasaporte");

select id, documento_tipo from tipoDocumento;
