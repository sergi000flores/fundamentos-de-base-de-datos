
-- =========================================
-- TAREA 6 - SCRIPT 2
-- INSERTAR DATOS DE PRUEBA
-- LENGUAJE DML
-- =========================================

USE ClinicaVeterinaria_Tarea6;
GO

-- =========================================
-- 1. INSERTAR CLIENTES
-- =========================================

INSERT INTO cliente (nombre, calle, ciudad)
VALUES
('Juan Perez', 'Juarez 120', 'Monclova'),
('Ana Lopez', 'Hidalgo 45', 'Frontera'),
('Luis Garcia', 'Morelos 78', 'Monclova'),
('Sofia Martinez', 'Reforma 200', 'Monclova'),
('Pedro Ramirez', 'Allende 55', 'Frontera');

-- =========================================
-- 2. INSERTAR TELEFONOS
-- =========================================

INSERT INTO cliente_telefono
(id_cliente, telefono)
VALUES
(1, '8661234567'),
(1, '8669876543'),
(2, '8665551234'),
(3, '8662223344'),
(4, '8663334455'),
(5, '8664445566');

-- =========================================
-- 3. INSERTAR EMPLEADOS
-- =========================================

INSERT INTO empleado (nombre, salario)
VALUES
('Carlos Ramirez', 15000.00),
('Maria Torres', 18000.00),
('Laura Gomez', 9500.00),
('Roberto Diaz', 10000.00),
('Fernando Ruiz', 16500.00);

-- =========================================
-- 4. INSERTAR VETERINARIOS
-- =========================================

INSERT INTO veterinario
(id_empleado, especialidad)
VALUES
(1, 'Medicina General'),
(2, 'Cirugia'),
(5, 'Dermatologia');

-- =========================================
-- 5. INSERTAR RECEPCIONISTAS
-- =========================================

INSERT INTO recepcionista
(id_empleado, turno)
VALUES
(3, 'Matutino'),
(4, 'Vespertino');

-- =========================================
-- 6. INSERTAR MASCOTAS
-- =========================================

INSERT INTO mascota
(nombre, especie, fecha_nacimiento, id_cliente)
VALUES
('Max', 'Perro', '2022-05-10', 1),
('Mishi', 'Gato', '2023-02-15', 1),
('Luna', 'Gato', '2021-08-20', 2),
('Rocky', 'Perro', '2020-11-05', 3),
('Nube', 'Conejo', '2024-01-12', 4),
('Toby', 'Perro', '2023-07-18', 3);

-- =========================================
-- 7. INSERTAR CITAS
-- =========================================

INSERT INTO cita
(fecha_hora, estado, id_mascota, id_veterinario)
VALUES
('2026-12-10T10:00:00', 'Programada', 1, 1),
('2026-12-11T11:00:00', 'Programada', 3, 2),
('2026-11-10T09:00:00', 'Completada', 2, 1),
('2026-11-12T12:00:00', 'Completada', 4, 2),
('2026-12-15T13:00:00', 'Programada', 5, 1),
('2026-11-15T15:00:00', 'Cancelada', 1, 2),
('2026-11-18T10:30:00', 'Completada', 1, 1),
('2026-12-20T09:00:00', 'Programada', 6, 5);

GO

-- =========================================
-- VERIFICAR DATOS INSERTADOS
-- =========================================

SELECT * FROM cliente;
SELECT * FROM cliente_telefono;
SELECT * FROM empleado;
SELECT * FROM veterinario;
SELECT * FROM recepcionista;
SELECT * FROM mascota;
SELECT * FROM cita;
GO
