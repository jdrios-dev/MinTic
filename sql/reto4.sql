# CREATE SCHEMA reto4_04;
# USE reto4_04;

# Creacion de base de datos
CREATE SCHEMA reto4_04;

# Usar o activar la base de datos
USE reto4_04;

# Creacion de tablas

CREATE TABLE tbl_fabricante(
	fab_codigo int PRIMARY KEY,
    fab_nombre varchar(20) NOT NULL
);

CREATE TABLE tbl_bicicleta(
	bic_codigo int AUTO_INCREMENT PRIMARY KEY,
    fab_codigo int,
    bic_precio int,
    bic_anio int,
    FOREIGN KEY(fab_codigo) REFERENCES tbl_fabricante(fab_codigo) 
);

CREATE TABLE tbl_proveedor(
	pro_codigo int PRIMARY KEY,
    pro_nombre varchar(20),
    pro_direccion varchar(30),
    pro_telefono varchar(15)
);

CREATE TABLE tbl_motocicleta(
	mot_codigo int AUTO_INCREMENT PRIMARY KEY,
    fab_codigo int,
    pro_codigo int,
    mot_precio int,
    mot_autonomia int,
    FOREIGN KEY(fab_codigo) REFERENCES tbl_fabricante(fab_codigo),
    FOREIGN KEY(pro_codigo) REFERENCES tbl_proveedor(pro_codigo)
);

CREATE TABLE tbl_cliente(
	cli_alias varchar(20) PRIMARY KEY,
    cli_nombre varchar(20),
    cli_apellido varchar(20),
    cli_email varchar(20),
    cli_celular varchar(20),
    cli_contrasenia varchar(20),
    cli_fecha_nacimiento datetime
);

CREATE TABLE tbl_intencion_compra(
	int_codigo int AUTO_INCREMENT PRIMARY KEY,
    cli_alias varchar(20),
    int_consulta varchar(20),
    int_fecha_consulta datetime,
    FOREIGN KEY(cli_alias) REFERENCES tbl_cliente(cli_alias)
);

# Insercion de registros
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (1, "Cannondale");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (2, "Trek");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (3, "Yeti");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (4, "Fuji");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (5, "Bmc");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (6, "Starker");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (7, "Lucky Lion");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (8, "Be Electric");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (9, "Aima");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (10, "Mec de Colombia");
INSERT INTO tbl_fabricante(fab_codigo, fab_nombre) VALUES (11, "Atom Electric");

INSERT INTO tbl_bicicleta(fab_codigo, bic_precio, bic_anio) VALUES(1, 1200000, 2020);
INSERT INTO tbl_bicicleta(fab_codigo, bic_precio, bic_anio) VALUES(2, 1450000, 2019);
INSERT INTO tbl_bicicleta(fab_codigo, bic_precio, bic_anio) VALUES(3, 2000000, 2020);
INSERT INTO tbl_bicicleta(fab_codigo, bic_precio, bic_anio) VALUES(4, 950000, 2021);
INSERT INTO tbl_bicicleta(fab_codigo, bic_precio, bic_anio) VALUES(5, 1950000, 2018);

INSERT INTO tbl_proveedor VALUES (101, "Auteco","calle 7 No. 45-17", "05713224459");
INSERT INTO tbl_proveedor VALUES (102, "Hitachi", "calle 19 No. 108-26", "05714223344");
INSERT INTO tbl_proveedor VALUES (103, "Bosch", "carrera 68 No. 26-45", "05715678798");
INSERT INTO tbl_proveedor VALUES (104, "Teco", "calle 77 No. 68-33", "05712213243");
INSERT INTO tbl_proveedor VALUES (105, "General Electric", "calle 29 No. 26-12", "05717239919");

INSERT INTO tbl_motocicleta(fab_codigo, pro_codigo, mot_precio, mot_autonomia) values (6, 101, 4200000, 18);
INSERT INTO tbl_motocicleta(fab_codigo, pro_codigo, mot_precio, mot_autonomia) values (7, 102, 5600000, 14);
INSERT INTO tbl_motocicleta(fab_codigo, pro_codigo, mot_precio, mot_autonomia) values (8, 101, 4600000, 26);
INSERT INTO tbl_motocicleta(fab_codigo, pro_codigo, mot_precio, mot_autonomia) values (9, 103, 8000000, 36);
INSERT INTO tbl_motocicleta(fab_codigo, pro_codigo, mot_precio, mot_autonomia) values (10, 104, 5900000, 20);
INSERT INTO tbl_motocicleta(fab_codigo, pro_codigo, mot_precio, mot_autonomia) values (11, 105, 4500000, 12);

INSERT INTO tbl_cliente(cli_alias, cli_nombre, cli_apellido, cli_email, cli_celular)
VALUES("lucky", "Pedro", "Perez", "pedro@gmail.com", "314578566");
INSERT INTO tbl_cliente(cli_alias, cli_nombre, cli_apellido, cli_email, cli_celular)
VALUES("malopez", "Maria", "Lopez", "maria@gmail.com", "31254121");
INSERT INTO tbl_cliente(cli_alias, cli_nombre, cli_apellido, cli_email, cli_celular)
VALUES("diva", "Ana", "Diaz", "ana@gmail.com", "31244521");
INSERT INTO tbl_cliente(cli_alias, cli_nombre, cli_apellido, cli_email, cli_celular)
VALUES("dreamer", "Luis", "Rojas", "luis@gmail.com", "32245111");
INSERT INTO tbl_cliente(cli_alias, cli_nombre, cli_apellido, cli_email, cli_celular)
VALUES("ninja", "Andres", "Cruz", "andres@gmail.com", "1545454");
INSERT INTO tbl_cliente(cli_alias, cli_nombre, cli_apellido, cli_email, cli_celular)
VALUES("neon", "Nelson", "Ruiz", "nelson@gmail.com", "32512111");
INSERT INTO tbl_cliente(cli_alias, cli_nombre, cli_apellido, cli_email, cli_celular)
VALUES("rose", "Claudia", "Mendez", "claudia@gmail.com", "32532211");
INSERT INTO tbl_cliente(cli_alias, cli_nombre, cli_apellido, cli_email, cli_celular)
VALUES("green", "Jorge", "Rodriguez", "jorge@gmail.com", "31521212");

INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("lucky", "Cannondale", "2017-10-25 20:00:00");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("lucky", "Trek", "2019-03-15 18:30:00");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("lucky", "Starker", "2019-05-20 20:30:00");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("malopez", "Cannondale", "2018-05-20 20:30:00");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("malopez", "Starker", "2020-01-20 20:30:00");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("diva", "Yeti", "2019-05-20 20:30:00");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("diva", "Fuji", "2018-06-22 21:30:00");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("diva", "Lucky Lion", "2020-03-17 15:30:20");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("dreamer", "Lucky Lion", "2020-03-17 15:30:20");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("dreamer", "Be Electric", "2020-04-10 18:30:20");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("ninja", "Aima", "2020-02-17 20:30:20");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("ninja", "Starker", "2020-02-20 16:30:20");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("ninja", "Mec de Colombia", "2020-03-27 18:30:20");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("rose", "Atom Electric", "2020-03-20 21:30:20");
 
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("green", "Yeti", "2020-01-10 17:30:20");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("green", "Trek", "2020-02-15 20:30:20");
INSERT INTO tbl_intencion_compra(cli_alias, int_consulta, int_fecha_consulta ) 
 VALUES ("green", "Bmc", "2020-03-17 18:30:20");



UPDATE tbl_bicicleta
  SET bic_anio=2017
  WHERE fab_codigo=1;

UPDATE tbl_cliente
  SET cli_celular="3115678432"
  WHERE cli_alias="ninja";

