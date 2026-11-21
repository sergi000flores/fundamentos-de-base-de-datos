# Unidad 6 — Lenguaje SQL: DDL y DML, Carga de Datos y Consultas

* **Institución:** Instituto Tecnológico Superior de Monclova (ITSM)[cite: 22]
* **Asignatura:** Fundamentos de Base de Datos[cite: 22]
* **Profesor:** Ruben Riojas[cite: 22]
* **Estudiante:** Sergio Alberto Flores Rendon[cite: 22]

---

## Descripción General

En esta unidad se abordó el lenguaje **SQL** en su dialecto **Transact-SQL (T-SQL)** sobre **Microsoft SQL Server**, abarcando tanto la definición y modificación de estructuras (**DDL / LDD**) como la manipulación, consulta y mantenimiento de datos (**DML / LMD**) dentro del sistema de la **Clínica Veterinaria "Patitas Felices"**[cite: 25].

---

## Actividades Realizadas

### Sintaxis y clasificación de sentencias SQL (LDD y LMD)
* **Características generales y taxonomía:** Revisión de las propiedades del lenguaje SQL, tabla taxonómica y cuadro comparativo entre **DDL** (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`) y **DML** (`INSERT`, `UPDATE`, `DELETE`, `SELECT`), incluyendo su representación visual en Mermaid[cite: 22, 25].
* **Sintaxis formal y casos aplicados:** Documentación de la sintaxis, parámetros, restricciones, opciones avanzadas y ejemplos aplicados a las tablas de la clínica (`cliente`, `cliente_telefono`, `empleado`, `veterinario`, `recepcionista`, `mascota` y `cita`)[cite: 26, 27, 28].

### Tarea 6.2: Implementación de script DDL, carga de datos y consultas DML
* **Script completo en SQL (T-SQL):** Implementación integral divididas en:
  * **LDD:** Creación de la base de datos y tablas con claves primarias, foráneas, `IDENTITY` y restricciones (`CHECK`, `NOT NULL`, etc.)[cite: 11, 26].
  * **LMD (Carga de datos):** Poblado de registros representativos mediante `INSERT` por tabla para validar integridad referencial[cite: 27].
  * **Consultas LMD (`SELECT`):** Consultas básicas, filtros (`WHERE`), ordenamiento (`ORDER BY`), agrupaciones (`GROUP BY`, `HAVING`), funciones de agregación (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`) y reuniones (`INNER JOIN`, `LEFT JOIN`).


---

## Estructura de la Carpeta

```text
Unidad_6/
├── README.md
├── script_completo_clinica_veterinaria.sql
├── Sintaxis_y_Clasificacion_SQL/
└── Tarea_6.2_Implementacion_DDL_DML/
```
