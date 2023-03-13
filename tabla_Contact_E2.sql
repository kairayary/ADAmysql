CREATE DATABASE PhoneBookDB;
USE PhoneBookDB;

CREATE TABLE Contact(
id INT auto_increment,
name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
address VARCHAR(100),
number_phone VARCHAR(20) not null,
primary key (id)

);
select * from Contact;

insert into Contact(name, last_name, address, number_phone)
values('Kaira', 'Abréu', ' Conesa','11323234');

INSERT INTO Contact (name, last_name, address, number_phone)
VALUES
('Roxy', 'Abréu', 'Gran Sabana', '521445554');
INSERT INTO Contact (name, last_name, address, number_phone)
VALUES
('Mary', 'Amundaray','Las Lilas', '4584454154');
INSERT INTO Contact (name, last_name, address, number_phone)
VALUES
('Lili', 'Bromw','Del Viso',  '4414348874');
INSERT INTO Contact (name, last_name, address, number_phone)
VALUES
('Enrique', 'Bromw','Del Viso',  '1215544545');

INSERT INTO Contact (name, last_name, address, number_phone)
VALUES
('Kaira', 'Abréu', ' Conesa','11323234'),
('Roxy', 'Abréu', 'Gran Sabana', '521445554'),
('Mary', 'Amundaray','Las Lilas', '4584454154'),
('Lili', 'Bromw','Del Viso',  '4414348874'),
('Enrique', 'Bromw','Del Viso',  '1215544545');


select* from Contact;