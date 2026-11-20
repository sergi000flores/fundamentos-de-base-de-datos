
-- =========================================
-- INSERTS PARA CLINICA VETERINARIA
-- =========================================

-- Selecciona primero tu base de datos en SSMS.

SET XACT_ABORT ON;
BEGIN TRANSACTION;

-- 1. CLIENTES

DECLARE @juan INT, @ana INT, @luis INT,
        @sofia INT, @pedro INT;

INSERT INTO cliente (nombre, calle, ciudad)
VALUES ('Juan Perez', 'Juarez 120', 'Monclova');
SET @juan = SCOPE_IDENTITY();

INSERT INTO cliente (nombre, calle, ciudad)
VALUES ('Ana Lopez', 'Hidalgo 45', 'Frontera');
SET @ana = SCOPE_IDENTITY();

INSERT INTO cliente (nombre, calle, ciudad)
VALUES ('Luis Garcia', 'Morelos 78', 'Monclova');
SET @luis = SCOPE_IDENTITY();

INSERT INTO cliente (nombre, calle, ciudad)
VALUES ('Sofia Martinez', 'Reforma 200', 'Monclova');
SET @sofia = SCOPE_IDENTITY();

INSERT INTO cliente (nombre, calle, ciudad)
VALUES ('Pedro Ramirez', 'Allende 55', 'Frontera');
SET @pedro = SCOPE_IDENTITY();

-- 2. TELEFONOS

INSERT INTO cliente_telefono (id_cliente, telefono)
VALUES
(@juan, '8661234567'),
(@juan, '8669876543'),
(@ana, '8665551234'),
(@luis, '8662223344'),
(@sofia, '8663334455'),
(@pedro, '8664445566');

-- 3. EMPLEADOS

DECLARE @carlos INT, @maria INT,
        @laura INT, @roberto INT;

INSERT INTO empleado (nombre, salario)
VALUES ('Carlos Ramirez', 15000.00);
SET @carlos = SCOPE_IDENTITY();

INSERT INTO empleado (nombre, salario)
VALUES ('Maria Torres', 18000.00);
SET @maria = SCOPE_IDENTITY();

INSERT INTO empleado (nombre, salario)
VALUES ('Laura Gomez', 9500.00);
SET @laura = SCOPE_IDENTITY();

INSERT INTO empleado (nombre, salario)
VALUES ('Roberto Diaz', 10000.00);
SET @roberto = SCOPE_IDENTITY();

-- 4. VETERINARIOS

INSERT INTO veterinario (id_empleado, especialidad)
VALUES
(@carlos, 'Medicina General'),
(@maria, 'Cirugia');

-- 5. RECEPCIONISTAS

INSERT INTO recepcionista (id_empleado, turno)
VALUES
(@laura, 'Matutino'),
(@roberto, 'Vespertino');

-- 6. MASCOTAS

DECLARE @max INT, @mishi INT, @luna INT,
        @rocky INT, @nube INT;

INSERT INTO mascota
(nombre, especie, fecha_nacimiento, id_cliente)
VALUES ('Max', 'Perro', '2022-05-10', @juan);
SET @max = SCOPE_IDENTITY();

INSERT INTO mascota
(nombre, especie, fecha_nacimiento, id_cliente)
VALUES ('Mishi', 'Gato', '2023-02-15', @juan);
SET @mishi = SCOPE_IDENTITY();

INSERT INTO mascota
(nombre, especie, fecha_nacimiento, id_cliente)
VALUES ('Luna', 'Gato', '2021-08-20', @ana);
SET @luna = SCOPE_IDENTITY();

INSERT INTO mascota
(nombre, especie, fecha_nacimiento, id_cliente)
VALUES ('Rocky', 'Perro', '2020-11-05', @luis);
SET @rocky = SCOPE_IDENTITY();

INSERT INTO mascota
(nombre, especie, fecha_nacimiento, id_cliente)
VALUES ('Nube', 'Conejo', '2024-01-12', @sofia);
SET @nube = SCOPE_IDENTITY();

-- 7. CITAS

INSERT INTO cita
(fecha_hora, estado, id_mascota, id_veterinario)
VALUES
('2026-12-10T10:00:00', 'Programada',
 @max, @carlos),

('2026-12-11T11:00:00', 'Programada',
 @luna, @maria),

('2026-11-10T09:00:00', 'Completada',
 @mishi, @carlos),

('2026-11-12T12:00:00', 'Completada',
 @rocky, @maria),

('2026-12-15T13:00:00', 'Programada',
 @nube, @carlos),

('2026-11-15T15:00:00', 'Cancelada',
 @max, @maria),

('2026-11-18T10:30:00', 'Completada',
 @max, @carlos);

COMMIT TRANSACTION;

PRINT 'Datos insertados correctamente';
GO

-- VERIFICAR LOS REGISTROS

SELECT * FROM cliente;
SELECT * FROM cliente_telefono;
SELECT * FROM empleado;
SELECT * FROM veterinario;
SELECT * FROM recepcionista;
SELECT * FROM mascota;
SELECT * FROM cita;
GO
SELECT id_cliente, nombre
FROM cliente
WHERE ciudad = 'Monclova';
 
 
SELECT id_mascota, nombre, fecha_nacimiento
FROM mascota
WHERE especie = 'Perro';



SELECT
    c.nombre AS cliente,
    t.telefono
FROM cliente c
INNER JOIN cliente_telefono t
    ON c.id_cliente = t.id_cliente;

    SELECT
    m.nombre AS mascota,
    m.especie,
    c.nombre AS propietario
FROM mascota m
INNER JOIN cliente c
    ON m.id_cliente = c.id_cliente;

    
SELECT
    c.id_cita,
    c.fecha_hora,
    m.nombre AS mascota,
    c.estado
FROM cita c
INNER JOIN mascota m
    ON c.id_mascota = m.id_mascota
WHERE c.estado = 'Programada';

SELECT
    e.nombre AS veterinario,
    e.salario,
    v.especialidad
FROM empleado e
INNER JOIN veterinario v
    ON e.id_empleado = v.id_empleado;

    SELECT c.id_cliente, c.nombre
FROM cliente c
INNER JOIN (
    SELECT id_cliente
    FROM cliente

    EXCEPT

    SELECT id_cliente
    FROM mascota
) AS sin_mascotas
    ON c.id_cliente = sin_mascotas.id_cliente;

    SELECT c.id_cliente, c.nombre
FROM cliente c
INNER JOIN (
    SELECT id_cliente
    FROM mascota
    WHERE especie = 'Perro'

    INTERSECT

    SELECT id_cliente
    FROM mascota
    WHERE especie = 'Gato'
) AS ambos
    ON c.id_cliente = ambos.id_cliente;

    SELECT
    e.id_empleado,
    e.nombre AS veterinario
FROM empleado e
INNER JOIN veterinario v
    ON e.id_empleado = v.id_empleado
WHERE NOT EXISTS (
    SELECT 1
    FROM (
        SELECT DISTINCT especie
        FROM mascota
    ) AS especies
    WHERE NOT EXISTS (
        SELECT 1
        FROM cita c
        INNER JOIN mascota m
            ON c.id_mascota = m.id_mascota
        WHERE c.id_veterinario = v.id_empleado
          AND m.especie = especies.especie
    )
);

SELECT
    c.id_cliente,
    c.nombre AS cliente,
    COUNT(m.id_mascota) AS total_mascotas
FROM cliente c
LEFT JOIN mascota m
    ON c.id_cliente = m.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY total_mascotas DESC;
