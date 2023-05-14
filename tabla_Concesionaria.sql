create database Concesionaria;
use Concesionaria;

create table Registros(
  id int not null auto_increment,
  marca varchar(50) not null,
  modelo varchar(50) not null,
  color varchar(50) not null,
  stock_disponible int not null,
  primary key (id)
);

insert into Registros(marca, modelo, color, stock_disponible)
VALUES 
('Ford', 'Mustang', 'Rojo', 3),
('Toyota', 'Corolla', 'Blanco', 5),
('Chevrolet', 'Sonic', 'Negro', 2),
('Nissan', 'Versa', 'Azul', 8),
('Volkswagen', 'Jetta', 'Gris', 4),
('Buick', 'Rendezvous', 'Negro', 2),
('Peugeot', 'Feline V6', 'Rojo', 1);

select * from Registros;