CREATE DATABASE ClinicaVeterinaria_Tarea6;
GO

USE ClinicaVeterinaria_Tarea6;
GO

-- =========================================
-- 1. TABLA CLIENTE
-- =========================================

CREATE TABLE cliente (
    id_cliente INT IDENTITY(1,1) NOT NULL,
    nombre VARCHAR(120) NOT NULL,
    calle VARCHAR(150) NOT NULL,
    ciudad VARCHAR(100) NOT NULL,

    CONSTRAINT pk_cliente
        PRIMARY KEY (id_cliente),

    CONSTRAINT chk_cliente_nombre
        CHECK (LEN(LTRIM(RTRIM(nombre))) > 0)
);
GO

-- =========================================
-- 2. TABLA CLIENTE_TELEFONO
-- =========================================

CREATE TABLE cliente_telefono (
    id_cliente INT NOT NULL,
    telefono VARCHAR(20) NOT NULL,

    CONSTRAINT pk_cliente_telefono
        PRIMARY KEY (id_cliente, telefono),

    CONSTRAINT fk_cliente_telefono
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT chk_telefono
        CHECK (LEN(LTRIM(RTRIM(telefono))) >= 7)
);
GO

-- =========================================
-- 3. TABLA EMPLEADO
-- =========================================

CREATE TABLE empleado (
    id_empleado INT IDENTITY(1,1) NOT NULL,
    nombre VARCHAR(120) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,

    CONSTRAINT pk_empleado
        PRIMARY KEY (id_empleado),

    CONSTRAINT chk_empleado_salario
        CHECK (salario > 0),

    CONSTRAINT chk_empleado_nombre
        CHECK (LEN(LTRIM(RTRIM(nombre))) > 0)
);
GO

-- =========================================
-- 4. TABLA VETERINARIO
-- =========================================

CREATE TABLE veterinario (
    id_empleado INT NOT NULL,
    especialidad VARCHAR(100) NOT NULL,

    CONSTRAINT pk_veterinario
        PRIMARY KEY (id_empleado),

    CONSTRAINT fk_veterinario_empleado
        FOREIGN KEY (id_empleado)
        REFERENCES empleado(id_empleado)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT chk_veterinario_especialidad
        CHECK (LEN(LTRIM(RTRIM(especialidad))) > 0)
);
GO

-- =========================================
-- 5. TABLA RECEPCIONISTA
-- =========================================

CREATE TABLE recepcionista (
    id_empleado INT NOT NULL,
    turno VARCHAR(20) NOT NULL,

    CONSTRAINT pk_recepcionista
        PRIMARY KEY (id_empleado),

    CONSTRAINT fk_recepcionista_empleado
        FOREIGN KEY (id_empleado)
        REFERENCES empleado(id_empleado)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT chk_recepcionista_turno
        CHECK (
            turno IN (
                'Matutino',
                'Vespertino',
                'Nocturno'
            )
        )
);
GO

-- =========================================
-- 6. TABLA MASCOTA
-- =========================================

CREATE TABLE mascota (
    id_mascota INT IDENTITY(1,1) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_cliente INT NOT NULL,

    CONSTRAINT pk_mascota
        PRIMARY KEY (id_mascota),

    CONSTRAINT fk_mascota_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,

    CONSTRAINT chk_mascota_fecha
        CHECK (
            fecha_nacimiento <= CAST(GETDATE() AS DATE)
        ),

    CONSTRAINT chk_mascota_nombre
        CHECK (LEN(LTRIM(RTRIM(nombre))) > 0)
);
GO

-- =========================================
-- 7. TABLA CITA
-- =========================================

CREATE TABLE cita (
    id_cita INT IDENTITY(1,1) NOT NULL,
    fecha_hora DATETIME2 NOT NULL,
    estado VARCHAR(20) NOT NULL
        CONSTRAINT df_cita_estado
        DEFAULT 'Programada',

    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL,

    CONSTRAINT pk_cita
        PRIMARY KEY (id_cita),

    CONSTRAINT fk_cita_mascota
        FOREIGN KEY (id_mascota)
        REFERENCES mascota(id_mascota)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_cita_veterinario
        FOREIGN KEY (id_veterinario)
        REFERENCES veterinario(id_empleado)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,

    CONSTRAINT chk_cita_estado
        CHECK (
            estado IN (
                'Programada',
                'Completada',
                'Cancelada'
            )
        )
);
GO

-- COMPROBAR TABLAS CREADAS

SELECT name AS tabla
FROM sys.tables
ORDER BY name;
GO