# Fundamentos de Base de Datos — Clínica Veterinaria "Patitas Felices"

* **Institución:** Instituto Tecnológico Superior de Monclova (ITSM)[cite: 2, 22]
* **Asignatura:** Fundamentos de Base de Datos[cite: 2, 22]
* **Profesor:** Ruben Riojas[cite: 2, 22]
* **Estudiante:** Sergio Alberto Flores Rendon[cite: 2, 22]
* **Motor de Base de Datos:** Microsoft SQL Server / Transact-SQL (T-SQL)[cite: 11, 25]

---

## Descripción General del Repositorio

Este repositorio concentra el trabajo realizado a lo largo del curso de **Fundamentos de Base de Datos** en el ITSM, aplicado de forma práctica al diseño, normalización, consulta formal e implementación física del sistema de base de datos para la **Clínica Veterinaria "Patitas Felices"**[cite: 2, 11, 25].

---

## Índice de Unidades (Acceso Directo)

Haz clic en el enlace de cada unidad para consultar su documentación detallada y entregables:

| Unidad | Tema Principal | Enlace a la Unidad |
| :--- | :--- | :--- |
| **Unidad 1** | Fundamentos, modelos de datos, clasificación y arquitectura ANSI/SPARC / SGBD | [Ir a Unidad 1](./unidad_1/README.md) |
| **Unidad 2** | Modelado conceptual E-R, E-R Extendido (E-RE) y transición a UML | [Ir a Unidad 2](./unidad_2/README.md) |
| **Unidad 3** | Transformación a esquema relacional, reglas de integridad y esquema físico en SGBD[cite: 11] | [Ir a Unidad 3](./unidad_3/README.md) |
| **Unidad 4** | Dependencias funcionales, formas normales (1FN–5FN) y proceso de normalización[cite: 15] | [Ir a Unidad 4](./unidad_4/README.md) |
| **Unidad 5** | Álgebra relacional (básica y extendida) y resolución formal de consultas | [Ir a Unidad 5](./unidad_5/README.md) |
| **Unidad 6** | Lenguaje SQL (DDL y DML), carga de datos, consultas y mantenimiento[cite: 25] | [Ir a Unidad 6](./unidad_6/README.md) |

---

## Resumen por Unidad

### [Unidad 1 — Fundamentos, Modelos y Arquitecturas de Bases de Datos](./Unidad_1/README.md)
* **Tarea 1.1:** Mapa conceptual analítico de conceptos, objetivos, usos y áreas de aplicación de las bases de datos, además de tabla comparativa de modelos (jerárquico, red, relacional, orientado a objetos, etc.).
* **Tarea 1.2:** Cuadro sinóptico de clasificación de bases de datos y descripción/esquema de la arquitectura de tres niveles (ANSI/SPARC) y la arquitectura funcional interna del SGBD.

### [Unidad 2 — Modelado Conceptual E-R, E-R Extendido y Transición a UML](./Unidad_2/README.md)
* **Tarea 2.1:** Caso de estudio de la clínica veterinaria, reglas de negocio, entidades, atributos, relaciones con cardinalidades y participación, conceptos E-R extendido y diagrama en herramienta CASE.
* **Tarea 2.2:** Conversión del diagrama E-R a diagrama de clases en notación UML y correspondencia entre entidades/clases, atributos/propiedades y relaciones/asociaciones.

### [Unidad 3 — Transformación a Esquema Relacional, Normalización y Esquema Físico en SGBD](./Unidad_3/README.md)
* **Tarea 3.1:** Componentes del modelo relacional, reglas de integridad, transformación del modelo E-R a esquema relacional y análisis de normalización.
* **Tarea 3.2:** Esquema físico en SQL Server (`cliente`, `cliente_telefono`, `empleado`, `veterinario`, `recepcionista`, `mascota` y `cita`), diccionario de datos, diagrama de esquema físico y validación del script DDL (`.sql`)[cite: 3, 10, 11].

### [Unidad 4 — Dependencias Funcionales, Formas Normales y Proceso de Normalización](./Unidad_4/README.md)
* **Fundamentos y mapa conceptual:** Concepto formal de normalización, dependencias funcionales (completas y parciales), dependencias transitivas, anomalías clásicas (inserción, borrado, modificación) y mapa conceptual de **1FN, 2FN, 3FN, FNBC, 4FN y 5FN**[cite: 15].
* **Proceso de normalización y script SQL:** Transición paso a paso de una estructura del proyecto hasta su estado normalizado y script SQL corregido.

### [Unidad 5 — Álgebra Relacional y Resolución Formal de Consultas](./Unidad_5/README.md)
* **Tarea 5.1:** Mapa conceptual de operadores unarios y binarios del álgebra relacional y marco teórico de álgebra relacional extendida.
* **Tarea 5.2:** Catálogo de al menos 10 consultas formales resueltas sobre el esquema de la clínica veterinaria con expresiones de álgebra relacional, tablas intermedias y descripción en lenguaje natural.

### [Unidad 6 — Lenguaje SQL: DDL y DML, Carga de Datos y Consultas](./Unidad_6/README.md)
* **Sintaxis y clasificación (DDL y DML):** Características generales de SQL, taxonomía y cuadro comparativo de `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `INSERT`, `UPDATE`, `DELETE` y `SELECT`, junto con su sintaxis y casos aplicados[cite: 22, 25, 26].
* **Implementación integral:** Script SQL con creación de base de datos y tablas, poblado de datos de prueba (`INSERT`), consultas (`SELECT` con filtros, ordenamientos, agrupaciones, agregaciones y `JOIN`) y mantenimiento controlado (`UPDATE` y `DELETE`)[cite: 27, 28].

---

## Estructura General del Repositorio

```text
.
├── README.md
├── Unidad_1/
│   └── README.md
├── Unidad_2/
│   └── README.md
├── Unidad_3/
│   └── README.md
├── Unidad_4/
│   └── README.md
├── Unidad_5/
│   └── README.md
└── Unidad_6/
    └── README.md
```

> *Nota:* Asegúrate de que los nombres de las carpetas (`Unidad_1`, `Unidad_2`, etc.) coincidan exactamente con los que tienes en tu repositorio para que los enlaces relativos funcionen sin problemas en GitHub.
