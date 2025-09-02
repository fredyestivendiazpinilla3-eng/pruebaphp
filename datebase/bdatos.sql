CREATE DATABASE IF NOT EXISTS tienda2;

USE TIENDA2;

CREATE TABLE IF NOT EXISTS t_usuarios(
    id_usuario int(11)  auto_increment NOT NULL,
    nombre     varchar(100)            NOT NULL,
    apellido   varchar(100)            NOT NULL,
    email      varchar(200)            NOT NULL, 
    password   varchar(200)            NOT NULL,
    rol        varchar(200)            NOT NULL, 
    imagen     varchar(200),
    CONSTRAINT pk_usuario  PRIMARY KEY(id_usuario),
      CONSTRAINT uq_email  UNIQUE(EMAIL)
)engine=InnoDb;

INSERT INTO t_usuarios VALUE(NULL,'Estiven','Diaz','fredyestivendiazpinila3@gmail.com' ,'31213','admin','imagen' );

CREATE TABLE IF NOT EXISTS t_categorias(
  id_categoria              int(11) auto_increment   NOT NULL,
  nombre_categoria          varchar(100)             NOT NULL,
  CONSTRAINT pk_categoria   PRIMARY KEY(id_categoria)
)ENGINE=InnoDb;
 

 INSERT INTO t_categorias VALUE(NULL,'construccion'),(NULL,'electricos'),(NULL,'pinturas'),(NULL,'pisos');



CREATE TABLE IF NOT EXISTS t_productos(
    id_producto     int(11)  auto_increment NOT NULL,
    nombre_producto varchar(100)            NOT NULL,
    descripcion     varchar(200)            NOT NULL,
    precio          float(10)               NOT NULL, 
    stock           int(100)                NOT NULL,
    oferta          varchar(200)            NOT NULL,
    fecha           date                    NOT NULL,
    imagen          varchar(255)            NOT NULL,
    id_categoria    int(11)                 NOT NULL, 
    CONSTRAINT      pk_producto             PRIMARY KEY(id_producto),
    CONSTRAINT      fk_producto_categoria   FOREIGN KEY(id_categoria) REFERENCES t_categorias(id_categoria)
)ENGINE=InnoDb;


CREATE TABLE IF NOT EXISTS t_pedidos(
   id_pedidos   int(11)  auto_increment  NOT NULL,
   id_usuario   int(11)                  NOT NULL,
   fecha        date                     NOT NULL,
   hora         time                     NOT NULL, 
   ciudad       varchar(100)             NOT NULL, 
   direccion    varchar(200)             NOT NULL,
   consto       float(10)                NOT NULL,
   estado       varchar(20)              NOT NULL,
   CONSTRAINT   pk_pedidos               PRIMARY KEY(id_pedidos),
   CONSTRAINT   fk_pedido_usuario        FOREIGN  KEY(id_usuario) REFERENCES t_usuarios(id_usuario)
)ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS t_detallePedido(
  id_detallePedido int(11) auto_increment        NOT NULL,
  id_pedido        int(11)                       NOT NULL,
  id_producto      int(11)                       NOT NULL,
  unidades         int(11)                       NOT NULL,
  CONSTRAINT       pk_detallePedido              PRIMARY KEY(id_detallePedido),
  CONSTRAINT       fk_detallePedido_pedidos      FOREIGN  KEY(id_pedido)  REFERENCES t_pedidos(id_pedidos),
  CONSTRAINT       fk_detallePedido_productos    FOREIGN  KEY(id_producto)  REFERENCES t_productos(id_producto)
)ENGINE=InnoDb;


CREATE TABLE IF NOT EXISTS t_