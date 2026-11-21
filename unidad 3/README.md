# Unidad 3 — Transformación a Esquema Relacional, Normalización y Esquema Físico en SGBD

* **Institución:** Instituto Tecnológico Superior de Monclova (ITSM)[cite: 2]
* **Asignatura:** Fundamentos de Base de Datos[cite: 2]
* **Profesor:** Ruben Riojas[cite: 2]
* **Estudiante:** Sergio Alberto Flores Rendon[cite: 2]

---

## Descripción General

En esta unidad se llevó el modelo conceptual de la **Clínica Veterinaria "Patitas Felices"** hacia el modelo relacional y su implementación física en **Microsoft SQL Server** mediante **Transact-SQL (T-SQL)**[cite: 11, 25]. Se cubrieron las reglas de transformación desde E-R/E-RE, las restricciones de integridad, el análisis de normalización y la validación del script DDL sobre la base de datos[cite: 3, 11].

---

## Actividades Realizadas

### Tarea 3.1: Transformación de Modelo E-R a Esquema Relacional y Reglas de Integridad
* **Componentes y restricciones del modelo relacional:** Estudio de los elementos formales (relaciones/tablas, tuplas/filas, atributos/columnas y dominios) y las reglas de integridad de **entidad**, **referencial** y de **dominio**.
* **Transformación del modelo conceptual a relacional:** Conversión de las entidades, atributos multivalorados (`cliente_telefono`), relaciones (`1:N` entre `cliente`–`mascota`, `mascota`–`cita` y `veterinario`–`cita`) y jerarquías (`empleado` como superclase de `veterinario` y `recepcionista`), definiendo llaves primarias (`PK`) y foráneas (`FK`)[cite: 4, 5, 6, 7, 8, 9, 10].
* **Normalización y formas normales:** Análisis formal de dependencias funcionales y anomalías, junto con el mapa conceptual y desarrollo teórico de las formas normales (**1FN a 5FN**)[cite: 15].

### Tarea 3.2: Generación del esquema físico en SGBD y script LDD
* **Esquema físico y diccionario de datos:** Construcción de las tablas `cliente`, `cliente_telefono`, `empleado`, `veterinario`, `recepcionista`, `mascota` y `cita` en **SQL Server** (`localhost\SQLEXPRESS`), respaldada con su diccionario de datos y diagrama de esquema físico[cite: 3, 4, 5, 6, 7, 8, 10, 11].
* **Script DDL (`.sql`) y pruebas de ejecución:** Generación y validación del script de definición de datos con `CREATE TABLE`, `PRIMARY KEY`, `IDENTITY`, `FOREIGN KEY` (con cláusulas en cascada o restricción según el caso) y restricciones `CHECK` / `NOT NULL`, verificando su ejecución correcta en SQL Server[cite: 4, 5, 6, 7, 8, 9, 11].

---

## Estructura de la Carpeta

```text
Unidad 3/
├── README.md
├── esquema_clinica_veterinaria.sql
├── Tarea 3.1/
└── Tarea 3.2/
```
