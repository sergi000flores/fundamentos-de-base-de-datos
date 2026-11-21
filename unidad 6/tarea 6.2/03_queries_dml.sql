
-- =========================================
-- TAREA 6 - SCRIPT 3
-- CONSULTAS SQL
-- LENGUAJE DML
-- =========================================

USE ClinicaVeterinaria_Tarea6;
GO

-- =========================================
-- CONSULTA 1: SELECT BASICO
-- Mostrar todos los clientes
-- =========================================

SELECT *
FROM cliente;


-- =========================================
-- CONSULTA 2: WHERE
-- Clientes que viven en Monclova
-- =========================================

SELECT id_cliente, nombre, ciudad
FROM cliente
WHERE ciudad = 'Monclova';


-- =========================================
-- CONSULTA 3: WHERE CON AND
-- Mascotas que sean perros
-- y hayan nacido despues del 2021
-- =========================================

SELECT nombre, especie, fecha_nacimiento
FROM mascota
WHERE especie = 'Perro'
AND fecha_nacimiento > '2021-12-31';


-- =========================================
-- CONSULTA 4: ORDER BY
-- Empleados ordenados por salario
-- de mayor a menor
-- =========================================

SELECT nombre, salario
FROM empleado
ORDER BY salario DESC;


-- =========================================
-- CONSULTA 5: COUNT
-- Contar el total de mascotas
-- =========================================

SELECT COUNT(*) AS total_mascotas
FROM mascota;


-- =========================================
-- CONSULTA 6: SUM
-- Calcular la suma de salarios
-- =========================================

SELECT SUM(salario) AS total_salarios
FROM empleado;


-- =========================================
-- CONSULTA 7: AVG, MAX Y MIN
-- Promedio, mayor y menor salario
-- =========================================

SELECT
    AVG(salario) AS salario_promedio,
    MAX(salario) AS salario_maximo,
    MIN(salario) AS salario_minimo
FROM empleado;


-- =========================================
-- CONSULTA 8: GROUP BY
-- Cantidad de mascotas por especie
-- =========================================

SELECT
    especie,
    COUNT(*) AS cantidad
FROM mascota
GROUP BY especie;


-- =========================================
-- CONSULTA 9: GROUP BY Y HAVING
-- Especies con mas de una mascota
-- =========================================

SELECT
    especie,
    COUNT(*) AS cantidad
FROM mascota
GROUP BY especie
HAVING COUNT(*) > 1;


-- =========================================
-- CONSULTA 10: INNER JOIN
-- Mascotas y sus propietarios
-- =========================================

SELECT
    m.nombre AS mascota,
    m.especie,
    c.nombre AS propietario
FROM mascota m
INNER JOIN cliente c
    ON m.id_cliente = c.id_cliente;


-- =========================================
-- CONSULTA 11: LEFT JOIN
-- Mostrar todos los clientes y
-- la cantidad de mascotas que tienen
-- =========================================

SELECT
    c.nombre AS cliente,
    COUNT(m.id_mascota) AS total_mascotas
FROM cliente c
LEFT JOIN mascota m
    ON c.id_cliente = m.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY total_mascotas DESC;


-- =========================================
-- CONSULTA 12: VARIOS INNER JOIN
-- Citas con mascota, cliente y veterinario
-- =========================================

SELECT
    ci.id_cita,
    ci.fecha_hora,
    ci.estado,
    m.nombre AS mascota,
    cl.nombre AS propietario,
    e.nombre AS veterinario,
    v.especialidad
FROM cita ci
INNER JOIN mascota m
    ON ci.id_mascota = m.id_mascota
INNER JOIN cliente cl
    ON m.id_cliente = cl.id_cliente
INNER JOIN veterinario v
    ON ci.id_veterinario = v.id_empleado
INNER JOIN empleado e
    ON v.id_empleado = e.id_empleado
ORDER BY ci.fecha_hora;

GO
