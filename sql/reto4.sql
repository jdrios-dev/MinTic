# CREATE SCHEMA reto4_04;
# USE reto4_04;

/*	pro_id int AUTO_INCREMENT PRIMARY KEY,
    pro_direccion varchar(40),
    pro_nombre varchar(40) NOT NULL
); */

ALTER TABLE tbl_proveedor
ADD INDEX idx_proveedor (pro_nombre ASC);

CREATE TABLE tbl_motocicleta(
	mot_id int AUTO_INCREMENT PRIMARY KEY,
    mot_precio int,
    pro_nombre varchar(40),
    mot_autonomia int,
    FOREIGN KEY(pro_nombre) REFERENCES tbl_proveedor(pro_nombre) 
);

CREATE TABLE tbl_bicicleta(
	bic_id int AUTO_INCREMENT PRIMARY KEY,
    pro_nombre varchar(40),
    bic_precio int,
    bic_anio int,
    FOREIGN KEY(pro_nombre) REFERENCES tbl_proveedor(pro_nombre) 
);

CREATE TABLE tbl_cliente(
	cli_alias varchar(40) PRIMARY KEY UNIQUE,
    cli_nombre varchar(40) NOT NULL,
	cli_apellido varchar(40) NOT NULL,
    cli_email varchar(80),
    cli_celular varchar(80),
    cli_fecha_nacimiento date,
    cli_contrasenia varchar(8)
);

