use registros;
select * from registros_personas;

select nombre from registros_personas limit 5;

select length(nombre) from registros_personas limit 5;
select nombre from registros_personas limit 5;

select upper(nombre) As nombres_uppers from registros_personas;

select nombre from registros_personas limit 5;

select lower(nombre) As nombres_lower from registros_personas;

select concat(nombre, ", ", apellido) from registros_personas;

select count(*) from registros_personas;

select fecha_cumpleaños from registros_personas;

select day(fecha_cumpleaños) from registros_personas;

select month(fecha_cumpleaños) from registros_personas;

select year(fecha_cumpleaños)  from registros_personas;

select count(*) as recuento from registros_personas where estado_civil= 'Casada';