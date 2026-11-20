create database veterinaria
use veterinaria;


CREATE TABLE cliente (
    id_cliente INT IDENTITY(1,1),
    nombre VARCHAR(120) NOT NULL,
    calle VARCHAR(150) NOT NULL,
    ciudad VARCHAR(100) NOT NULL,
    CONSTRAINT pk_cliente PRIMARY KEY (id_cliente),
    CONSTRAINT chk_cliente_nombre_no_vacio CHECK (LEN(LTRIM(RTRIM(nombre))) > 0)
);

CREATE TABLE cliente_telefono (
    id_cliente INT NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    CONSTRAINT pk_cliente_telefono PRIMARY KEY (id_cliente, telefono),
    CONSTRAINT fk_cliente_telefono_cliente FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT chk_telefono_formato CHECK (LEN(LTRIM(RTRIM(telefono))) >= 7)
);

CREATE TABLE empleado (
    id_empleado INT IDENTITY(1,1),
    nombre VARCHAR(120) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT pk_empleado PRIMARY KEY (id_empleado),
    CONSTRAINT chk_empleado_salario CHECK (salario > 0)
);

CREATE TABLE veterinario (
    id_empleado INT NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    CONSTRAINT pk_veterinario PRIMARY KEY (id_empleado),
    CONSTRAINT fk_veterinario_empleado FOREIGN KEY (id_empleado)
        REFERENCES empleado (id_empleado)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE recepcionista (
    id_empleado INT NOT NULL,
    turno VARCHAR(20) NOT NULL,
    CONSTRAINT pk_recepcionista PRIMARY KEY (id_empleado),
    CONSTRAINT fk_recepcionista_empleado FOREIGN KEY (id_empleado)
        REFERENCES empleado (id_empleado)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT chk_recepcionista_turno CHECK (turno IN ('Matutino', 'Vespertino', 'Nocturno'))
);

CREATE TABLE mascota (
    id_mascota INT IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_cliente INT NOT NULL,
    CONSTRAINT pk_mascota PRIMARY KEY (id_mascota),
    CONSTRAINT fk_mascota_cliente FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    CONSTRAINT chk_mascota_fecha_nac CHECK (fecha_nacimiento <= CAST(GETDATE() AS DATE))
);

CREATE TABLE cita (
    id_cita INT IDENTITY(1,1),
    fecha_hora DATETIME2 NOT NULL,
    estado VARCHAR(20) NOT NULL CONSTRAINT df_cita_estado DEFAULT 'Programada',
    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL,
    CONSTRAINT pk_cita PRIMARY KEY (id_cita),
    CONSTRAINT fk_cita_mascota FOREIGN KEY (id_mascota)
        REFERENCES mascota (id_mascota)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_cita_veterinario FOREIGN KEY (id_veterinario)
        REFERENCES veterinario (id_empleado)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    CONSTRAINT chk_cita_estado CHECK (estado IN ('Programada', 'Completada', 'Cancelada'))
);