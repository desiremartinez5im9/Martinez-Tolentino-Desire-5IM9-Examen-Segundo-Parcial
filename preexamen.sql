drop database if exists preexamen;
create database preexamen;
use preexamen;
create table registro(
idRegistro int primary key auto_increment,
Nombre varchar(30),
ApellidoP varchar(30),
ApellidoM varchar(30),
Escuela varchar(30),
MateriaFav varchar(30),
DeporteFav varchar(30)
);
create table rol(
idRol int primary key auto_increment,
descripcion varchar(60)
);
