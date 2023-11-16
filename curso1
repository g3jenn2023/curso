#CREAR BASE DE DATOS
create database curso_sql;
use curso_sql;

#CREAR TABLAS
create table usuario(
nombre varchar(50),
edad int(15)
);

show tables; #VER TABLAS
describe usuario; #VER CARACTERISTICAS DE LA TABLA
drop table usuario; #ELIMINAR TABLA

create table alumnos(
nombre varchar(50),
apellido varchar(50),
direccion varchar(100),
telefono varchar(15),
edad int(11)
);

#INSERTAR DATOS 
insert into alumnos(nombre,apellido,direccion,telefono,edad) values('juan','lopez','barrio san licas','58844864',35);
insert into alumnos values('luna','cajero','independencia','454545454',16);
insert into alumnos(nombre,telefono,edad) values('Jose ','65415241',45); 

#MUESTRA LO MANDADO A LLAMAR
select * from alumnos;
select nombre, direccion from alumnos;
select edad, apellido from alumnos;

select * from alumnos where nombre ='luna';
select nombre,edad from alumnos where edad = '16';

#operadores relacionales
#=
#<>
#<
#>
#>=
#<=
 

select * from alumnos where nombre = 'luna';
select * from alumnos where nombre <> 'luna';
select * from alumnos where edad > 16 ;
select * from alumnos where edad < 16 ;
select * from alumnos where nombre <= 50 ;
select * from alumnos where nombre = 50 ;
select nombre, telefono from alumnos where edad <> 35;

select * from alumnos; 
delete from alumnos;

delete from alumnos where nombre = 'luna';

#ACTUALIZA DATOS
Update alumnos set edad = 89;
update alumnos set edad = 18 where nombre = 'luna';
update alumnos set direccion = 'independiencia' , telefono = '454545454' where nombre = 'Juan';


