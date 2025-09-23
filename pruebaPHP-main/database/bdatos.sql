CREATE DATABASE IF NOT EXISTS tienda2;

USE tienda2;

CREATE TABLE IF NOT EXISTS t_usuarios (
    id_usuario INT(11)      AUTO_INCREMENT  NOT NULL,
    nombre   VARCHAR(100)                   NOT NULL,
    apellido VARCHAR(100)                   NOT NULL,
    email    VARCHAR(200)                   NOT NULL,
    password VARCHAR(200)                   NOT NULL,
    rol      VARCHAR(20)                    NOT NULL,
    imagen   VARCHAR(200),
    CONSTRAINT pk_usuario PRIMARY KEY(id_usuario),
    CONSTRAINT uq_email     UNIQUE(email)
)ENGINE=InnoDB;

INSERT INTO t_usuarios VALUE(NULL, 'HUGO','MORA','HUGOMORA1437@GMAIL.COM','14372020','admin','imagen');

CREATE TABLE IF NOT EXISTS t_categorias (
    id_categoria INT(11)      AUTO_INCREMENT    NOT NULL,
    nombre       VARCHAR(100)                   NOT NULL,
    CONSTRAINT pk_categoria   PRIMARY KEY(id_categoria)
)ENGINE=InnoDB;

INSERT INTO t_categorias VALUE(NULL, 'Construccion'),(NULL, 'electricos'),(NULL, 'Pinturas'),(NULL, 'pisos');


CREATE TABLE IF NOT EXISTS t_productos (
    id_producto INT(11)      AUTO_INCREMENT    NOT NULL,
    nombre_producto     VARCHAR(100)           NOT NULL,
    descripcion         VARCHAR(200)           NOT NULL,
    stock               INT(100)               NOT NULL,
    precio              FLOAT(10,9)            NOT NULL,
    imagen              VARCHAR(255)           NOT NULL,
    oferta              VARCHAR(200)           NOT NULL,
    fecha               DATE                   NOT NULL,
    id_categoria        INT(11)                NOT NULL,
    CONSTRAINT pk_producto PRIMARY KEY(id_producto),
    CONSTRAINT fk_categoria FOREIGN KEY(id_categoria) REFERENCES t_categorias(id_categoria)

)ENGINE=InnoDB;