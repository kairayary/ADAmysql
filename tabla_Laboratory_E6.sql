create database Laboratory;

use Laboratory;

create table invoice(
id int auto_increment,
letter char not null,
number int(5) zerofill not null,
date date not null,
amount int not null,
primary key (id)
);

insert into invoice(letter, number, date, amount)
values
('B','1', '2011-11-18', '500'),
('B','2','2012-09-25','200'),
('B','3', '2011-01-01','3020'),
('B','4','2016-11-18','1200'),
('B','5',curdate(),'3300');

create table article(
id int auto_increment,
name varchar(50) not null,
price double not null,
stock int not null,
primary key (id)

);

insert into article(name, price, stock)
values
('Cinta','110', '50'),
('Espatula','20','22'),
('Fratas','35', '28'),
('Regla','20','78'),
('Tenaza','12','13');

create table client(
id int auto_increment,
name varchar(50) not null,
last_name varchar(50) not null,
cuit char(16)not null,
address varchar(100) not null,
comments longtext,
primary key (id)
);

insert into client(name, last_name, cuit, address)
values
('Mario','Perez', '20-14987008-8', 'Aguero 635'),
('Jorge','Rios','20-37562854-5','Nazca 1532'),
('Valeria','Lagos', '20-25487418-8','Chipre 5'),
('Natalia','Peña','20-25982665-2','Jufre 3651'),
('Juan','Khorn','20-23587171-9','Belgrano 6525');

select * from client;

select * from article where price >100;

select * from article where price between 20 and  40;

select * from article where price>40 and price< 60;
select * from article where  price= 20 and stock>30;

select * from article where price in (12,20,30);

select * from article where price in (10,110);


insert into client
values ('Carlos','Mata', '21-14987000-8', 'Coco 635'),
('Yohana','Rojo','27-37562664-0','Maipú 1532'),
('Valentina','Lugo', '24-28887418-8','Moscú 3'),
('Patricia','Perez','27-11111665-2','Delia 3201'),
('Juana','Mendez','27-235822222-9','Belgrano 6525');

update client set name = 'José' where id = 1;

update client set name = 'Pablo', last_name = 'Fuentes', cuit='20-21053119-9' where id = 3;

set SQL_SAFE_UPDATES=0;
delete from client where last_name like'%Perez%';
select * from client;

delete from client where cuit like'%0';

select price, price*0.2 as aumento, price + (price*0.2) as total from article where price<=50;

select price, price*0.15 as aumento, price + (price*0.15) as total from article where price>50;

select price, price*0.05 as descuento, price - (price*0.05) as total from article where price>=200;

set SQL_SAFE_UPDATES=0;
delete from article where stock=0;

select*from article;

select max(amount) from invoice;
select min(amount) from invoice;

select min(amount) from invoice where year(2000) and year(2008);

select amount, count(*) as recuento from invoice group by amount;

select amount, count(*) as recuento from invoice where amount>=35000 and amount<=40000 group by amount;