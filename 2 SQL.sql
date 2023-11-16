#eliminar la base de datos que ya existe 

drop database if exists curso_sql2;

show databases;

create database if not exists curso_sql2;
use curso_sql2;

create table if not exists usuario(
nombre varchar(50),
apellido varchar(50),
correo varchar(100),
primary key(nombre)
);

insert into usuario values('rosa', 'lopez', 'rr@gmail.com');
insert into usuario values('carlos', 'cruz', 'rr@gmail.com');
describe usuario;

create table if not exists producto(
id int (11) auto_increment,
producto varchar(50),
descripcion text,
precio float(11,2),
primary key(id)

);

describe producto;

insert into producto values(null,'laptop','la mejor', 128.6);
 insert into producto values(null,'mouse','el mejor', 28.6);
insert into producto(id, producto, descripcion, precio)values(null,'lap','la mejor', 128.6); 
 select * from producto;
 
 delete from producto;
 truncate table producto;
 
 create table persona(
 id integer unsigned not null,
 nombre varchar(50),
 edad integer unsigned, 
 primary key(id)
 
 );
 
 describe persona;
 
 #TIPOS DE DATOS
 #1. ENTERO
 #TINYINT -127 A 128 UNSIGNED
  #SMALLINT
  #MEDIUMINT
  #INT
  #BIGINT
 
 #2. DECIMALES
 #FLOAT
 precio float(6.24)
 #DECIMAL
 #DOUBLE
 precio double (4.53)
 
 #CADENAS
 CHAR 255
 nombre char(100)
 varchar 255 - 65,534
 nombre varchar(100) juan
 
 BINARY Y VARBINARY
 TEXT 
 BLOB 
 TINYBLOB 255, MEDIUMBLOB, Y LONGBLOB 4GB
 
 ENUM 
 SET
 
 #FECHA 
 DATE AAAA-MM-DD
 2019-07-15
 20190715
 
 DATETIME
 AAAA-MM-DD HH:MM:SS
 
 TIME
 HH:MM:SS
 
 TIMESTAMP 
 AAAA-MM-DD
 AA-MM-DD
 
 ON UPDATE CURRENT_TIMESTAMP
 #SE ACTUALIZA 
 YEAR (AÑOS)
 AAAA
 AA
 
 