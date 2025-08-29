CREATE DATABASE IF NOT EXISTS tienda2;

USE TIENDA2;

CREATE TABLE IF NOT EXISTS T_USUARIOS(
    id_usuario int(11)  auto_increment NOT NULL,
    nombre varchar(100)                NOT NULL,
    apellido varchar(100) NOT NULL,
    email varchar(200) NOT NULL, 
    password varchar(200) NOT NULL,
    rol varchar(200) NOT NULL, 
    imagen varchar(200),
    CONSTRAINT pk_usuario  PRIMARY KEY(id_usuario),
      CONSTRAINT uq_email  UNIQUE(EMAIL)
)engine=InnoDb;

INSERT INTO t_usuarios VALUE(NULL, "Estiven" , "Diaz" ,"fredyestivendiazpinila3@gmail.com" ,"31213" ,"admin" ,"imagen" );