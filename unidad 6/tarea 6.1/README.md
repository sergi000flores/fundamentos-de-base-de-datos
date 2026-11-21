# Lenguaje SQL: DDL y DML — Clínica Veterinaria "Patitas Felices"

* **Institución:** Instituto Tecnológico Superior de Monclova (ITSM)[cite: 23]
* **Asignatura:** Fundamentos de Base de Datos[cite: 23]
* **Actividad:** Tarea 6 — Lenguaje SQL: DDL y DML[cite: 23]
* **Profesor:** Ruben Riojas[cite: 23]
* **Estudiante:** Sergio Alberto Flores Rendon[cite: 23]
* **Fecha:** 20/11/26[cite: 23]

---

## Tabla de Contenido

1. [Introducción y características generales de SQL](#1-introducción-y-características-generales-de-sql)[cite: 24]
2. [Tabla taxonómica de comandos DDL y DML](#2-tabla-taxonómica-de-comandos-ddl-y-dml)[cite: 24]
3. [Comparación entre DDL y DML](#3-comparación-entre-ddl-y-dml)[cite: 24]
4. [Sintaxis, parámetros, restricciones y opciones avanzadas](#4-sintaxis-parámetros-restricciones-y-opciones-avanzadas)[cite: 24]
   * [4.1 CREATE (DDL)](#41-create-ddl)[cite: 24]
   * [4.2 ALTER (DDL)](#42-alter-ddl)[cite: 24]
   * [4.3 DROP (DDL)](#43-drop-ddl)[cite: 24]
   * [4.4 TRUNCATE (DDL)](#44-truncate-ddl)[cite: 24]
   * [4.5 INSERT (DML)](#45-insert-dml)[cite: 24]
   * [4.6 UPDATE (DML)](#46-update-dml)[cite: 24]
   * [4.7 DELETE (DML)](#47-delete-dml)[cite: 24]
   * [4.8 SELECT (DML)](#48-select-dml)[cite: 24]
5. [Casos aplicados al sistema de clínica veterinaria](#5-casos-aplicados-al-sistema-de-clínica-veterinaria)[cite: 24]
6. [Conclusiones](#6-conclusiones)[cite: 24]

---

## 1. Introducción y características generales de SQL

**SQL** (*Structured Query Language*, o Lenguaje de Consulta Estructurado) es el lenguaje estándar empleado para definir, consultar y modificar los datos de bases de datos relacionales[cite: 25]. Su uso permite trabajar con tablas, relaciones, restricciones de integridad y conjuntos de registros mediante sentencias declarativas[cite: 25].

Esta investigación distingue dos familias de instrucciones: **Lenguaje de Definición de Datos (LDD o DDL)** y **Lenguaje de Manipulación de Datos (LMD o DML)**[cite: 25]. Se toma como referencia **Microsoft SQL Server** y su dialecto **Transact-SQL (T-SQL)**, ya que se utiliza en el proyecto de clínica veterinaria[cite: 25].

| Característica | Descripción |
| :--- | :--- |
| **Declarativo** | Se indica qué datos u operaciones se requieren; el motor decide cómo ejecutarlos[cite: 25]. |
| **Relacional** | Opera sobre tablas, filas, columnas, claves primarias y foráneas[cite: 25]. |
| **Estandarizado** | Dispone de normas ISO/IEC; cada sistema incorpora extensiones de dialecto[cite: 25]. |
| **Integridad** | Permite declarar `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `CHECK`, `DEFAULT` y `NOT NULL`[cite: 25]. |
| **Consultas complejas** | Soporta filtros, `JOIN`, subconsultas, agrupaciones y funciones de agregación[cite: 25]. |
| **Transacciones** | Las modificaciones pueden realizarse con `BEGIN TRANSACTION`, `COMMIT` y `ROLLBACK`[cite: 25]. |
| **Seguridad** | Los permisos y roles controlan el acceso a los objetos y datos[cite: 25]. |

> **Nota de clasificación:** `SELECT` suele incluirse dentro de DML en los materiales de SQL Server; algunas propuestas didácticas lo separan como DQL (lenguaje de consulta)[cite: 25]. Para esta tarea se conserva `SELECT` en DML, como indican las instrucciones[cite: 25].

---

## 2. Tabla taxonómica de comandos DDL y DML

| Familia | Sentencia | Propósito | Objeto o efecto |
| :--- | :--- | :--- | :--- |
| **DDL** | `CREATE` | Crear objetos | Tabla, vista, índice, base de datos, etc.[cite: 25] |
| **DDL** | `ALTER` | Modificar una definición | Columnas, restricciones y propiedades[cite: 25]. |
| **DDL** | `DROP` | Eliminar objetos | Desaparece la definición y sus datos[cite: 25]. |
| **DDL** | `TRUNCATE` | Vaciar una tabla | Retira todas sus filas; mantiene estructura[cite: 25]. |
| **DML** | `INSERT` | Incorporar registros | Filas nuevas[cite: 25]. |
| **DML** | `UPDATE` | Modificar registros | Valores de filas existentes[cite: 25]. |
| **DML** | `DELETE` | Eliminar registros | Filas seleccionadas o todas[cite: 25]. |
| **DML** | `SELECT` | Consultar datos | Conjunto de resultados; no cambia filas[cite: 25]. |

---

## 3. Comparación entre DDL y DML

| Criterio | DDL / LDD | DML / LMD |
| :--- | :--- | :--- |
| **Pregunta que resuelve** | ¿Cómo se define o cambia la estructura?[cite: 25] | ¿Cómo se consultan o modifican los datos?[cite: 25] |
| **Sentencias estudiadas** | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`[cite: 25] | `INSERT`, `UPDATE`, `DELETE`, `SELECT`[cite: 25] |
| **Efecto principal** | Objetos, esquema o vaciado masivo[cite: 25] | Registros o resultados de consulta[cite: 25] |
| **Condición `WHERE`** | No se aplica a las cuatro sentencias estudiadas[cite: 25] | Se admite en `SELECT`, `UPDATE` y `DELETE`[cite: 25] |
| **Integridad referencial** | Define o elimina relaciones y restricciones[cite: 25] | Debe cumplir restricciones al modificar filas[cite: 25] |
| **Transacciones SQL Server** | Pueden participar en transacciones, con limitaciones por operación[cite: 25] | `INSERT`, `UPDATE` y `DELETE` son transaccionales; `SELECT` consulta[cite: 25] |
| **Riesgos** | Eliminar tablas o vaciar datos por error[cite: 25] | Actualizar o borrar filas sin `WHERE`[cite: 25] |

> **Diferencia importante:** `TRUNCATE` es una sentencia de DDL aunque su efecto sea eliminar todas las filas de una tabla[cite: 25]. En SQL Server, `TRUNCATE` suele utilizar menos registros de log que `DELETE` sin `WHERE`; además, reinicia el valor `IDENTITY` y no activa desencadenadores `DELETE`[cite: 25]. Puede revertirse si se ejecuta dentro de una transacción apropiada[cite: 25].

---

## 4. Sintaxis, parámetros, restricciones y opciones avanzadas

*Convención:* `[]` indica un componente opcional; `{ }` agrupa alternativas; `...` indica repetición[cite: 26]. La sintaxis siguiente es formal simplificada de T-SQL y no reproduce todas las variantes disponibles del motor[cite: 26].

### 4.1 CREATE (DDL)

Crea nuevos objetos de la base de datos; aquí se muestra la modalidad `CREATE TABLE`[cite: 26].

**Sintaxis general:**
```sql
CREATE TABLE [esquema.]nombre_tabla (
    columna tipo_dato [NULL | NOT NULL]
    [DEFAULT expresion] [IDENTITY (inicio, paso)],
    [CONSTRAINT nombre_restriccion]
    {PRIMARY KEY | UNIQUE | CHECK | FOREIGN KEY} (...)
);
```

* **Parámetros:** `nombre_tabla` identifica el objeto; `columna` y `tipo_dato` definen campos; `IDENTITY` genera identificadores; `CONSTRAINT` nombra reglas de integridad[cite: 26].
* **Restricciones y precauciones:** El nombre del objeto debe ser válido y las restricciones deben ser compatibles con los valores almacenados; una `FOREIGN KEY` requiere una clave referenciada válida[cite: 26].
* **Opciones avanzadas:** Se admiten columnas calculadas, índices y opciones de almacenamiento, tablas temporales (`#nombre`), compresión y tablas temporales del sistema según versión[cite: 26].

**Ejemplo aplicado:**
```sql
CREATE TABLE dbo.servicio_ejemplo (
    id_servicio INT IDENTITY(1,1) PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL,
    costo DECIMAL(10,2) NOT NULL CHECK (costo > 0)
);
```

---

### 4.2 ALTER (DDL)

Cambia la estructura de una tabla existente sin tener que reconstruirla manualmente[cite: 26].

**Sintaxis general:**
```sql
ALTER TABLE [esquema.]nombre_tabla
ADD columna tipo_dato [NULL | NOT NULL];

ALTER TABLE [esquema.]nombre_tabla
ALTER COLUMN columna nuevo_tipo [NULL | NOT NULL];

ALTER TABLE [esquema.]nombre_tabla
DROP COLUMN columna;
```

* **Parámetros:** `ADD` agrega elementos; `ALTER COLUMN` cambia tipo o nulabilidad; `DROP COLUMN` elimina una columna; también es posible `ADD`/`DROP CONSTRAINT`[cite: 26].
* **Restricciones y precauciones:** Cambiar un tipo de dato puede fallar si los datos existentes son incompatibles; eliminar columnas puede bloquearse por dependencias de índices o restricciones[cite: 26].
* **Opciones avanzadas:** `WITH CHECK` y `WITH NOCHECK` al agregar/verificar ciertas restricciones; habilitar o deshabilitar restricciones con `CHECK`/`NOCHECK CONSTRAINT`[cite: 26].

**Ejemplo aplicado:**
```sql
ALTER TABLE dbo.cliente
ADD correo VARCHAR(150) NULL;

-- Revertir el cambio de ejemplo:
ALTER TABLE dbo.cliente DROP COLUMN correo;
```

---

### 4.3 DROP (DDL)

Elimina por completo un objeto y su definición; `DROP TABLE` también elimina sus filas[cite: 27].

**Sintaxis general:**
```sql
DROP TABLE [IF EXISTS] [esquema.]nombre_tabla [,...n];
```

* **Parámetros:** `IF EXISTS` evita un error si no existe la tabla; `esquema` y `nombre_tabla` identifican los objetos a eliminar[cite: 27].
* **Restricciones y precauciones:** Las claves foráneas que apuntan a la tabla pueden impedir eliminarla[cite: 27]. Debe contarse con permisos suficientes; es una operación destructiva[cite: 27].
* **Opciones avanzadas:** El comando `DROP` también funciona con distintos tipos de objeto (`DROP VIEW`, `DROP INDEX`, etc.) mediante sintaxis específica[cite: 27].

**Ejemplo aplicado:**
```sql
-- Tabla auxiliar que no afecta las tablas del proyecto:
CREATE TABLE dbo.temporal_demo (id INT);
DROP TABLE IF EXISTS dbo.temporal_demo;
```

---

### 4.4 TRUNCATE (DDL)

Elimina todas las filas de una tabla sin borrar su estructura[cite: 27].

**Sintaxis general:**
```sql
TRUNCATE TABLE [esquema.]nombre_tabla;
```

* **Parámetros:** `nombre_tabla` es la tabla que se desea vaciar; no se admite cláusula `WHERE`[cite: 27].
* **Restricciones y precauciones:** No puede aplicarse a una tabla referenciada por `FOREIGN KEY` de otra tabla (con excepciones como la referencia a sí misma)[cite: 27]. No dispara triggers `DELETE`; reinicia `IDENTITY`[cite: 27].
* **Opciones avanzadas:** En versiones y servicios compatibles existen variantes para particiones (`WITH (PARTITIONS (...))`)[cite: 27]. En SQL Server admite `ROLLBACK` dentro de una transacción explícita[cite: 27].

**Ejemplo aplicado:**
```sql
-- Demostración segura con tabla auxiliar:
CREATE TABLE dbo.vaciado_demo (id INT IDENTITY PRIMARY KEY);
INSERT INTO dbo.vaciado_demo DEFAULT VALUES;

BEGIN TRANSACTION;
TRUNCATE TABLE dbo.vaciado_demo;
ROLLBACK TRANSACTION;

DROP TABLE dbo.vaciado_demo;
```

---

### 4.5 INSERT (DML)

Agrega una o varias filas a una tabla respetando los tipos de datos y las restricciones[cite: 27].

**Sintaxis general:**
```sql
INSERT INTO [esquema.]tabla (columna1, columna2, ...)
VALUES (valor1, valor2, ...),
       (valor1b, valor2b, ...);

INSERT INTO [esquema.]tabla (columnas...)
SELECT expresiones... FROM tabla_origen [WHERE condicion];
```

* **Parámetros:** La lista de columnas define el destino; `VALUES` suministra expresiones, `DEFAULT` o `NULL`; `INSERT...SELECT` carga resultados de una consulta[cite: 27].
* **Restricciones y precauciones:** Los valores deben tener tipos compatibles; no se deben violar `PRIMARY KEY`, `FOREIGN KEY`, `CHECK` y `NOT NULL`[cite: 27]. Las columnas `IDENTITY` normalmente se omiten[cite: 27].
* **Opciones avanzadas:** `OUTPUT INSERTED.columna` puede recuperar filas agregadas; `DEFAULT VALUES` usa los valores por defecto; `INSERT...SELECT` permite cargar datos desde otra tabla[cite: 28].

**Ejemplo aplicado:**
```sql
INSERT INTO dbo.cliente (nombre, calle, ciudad)
OUTPUT INSERTED.id_cliente, INSERTED.nombre
VALUES ('Cliente de prueba', 'Calle 10', 'Monclova');
```

---

### 4.6 UPDATE (DML)

Modifica el contenido de una o varias columnas de filas existentes[cite: 28].

**Sintaxis general:**
```sql
UPDATE [esquema.]tabla
SET columna1 = expresion1
    [, columna2 = expresion2, ...]
[FROM origen_tablas]
[WHERE condicion];
```

* **Parámetros:** `SET` define los nuevos valores; `WHERE` selecciona las filas; `FROM` permite basarse en relaciones con otras tablas[cite: 28].
* **Restricciones y precauciones:** Sin `WHERE` se modifican todas las filas[cite: 28]. Los nuevos valores deben cumplir `CHECK`, `FOREIGN KEY`, tipos de datos y otras restricciones[cite: 28].
* **Opciones avanzadas:** `OUTPUT INSERTED/DELETED` permite comparar valores después/antes; `JOIN` en `FROM`, expresiones `CASE` y actualizaciones dentro de transacciones[cite: 28].

**Ejemplo aplicado:**
```sql
BEGIN TRANSACTION;

UPDATE dbo.empleado
SET salario = salario * 1.05
WHERE id_empleado = 1;

-- Revisar antes de confirmar:
SELECT * FROM dbo.empleado WHERE id_empleado = 1;

ROLLBACK TRANSACTION;
```

---

### 4.7 DELETE (DML)

Elimina filas de una tabla, de forma selectiva o total[cite: 28].

**Sintaxis general:**
```sql
DELETE FROM [esquema.]tabla
[FROM origen_tablas]
[WHERE condicion];
```

* **Parámetros:** `WHERE` delimita las filas; `FROM` puede utilizarse para condiciones basadas en uniones[cite: 28].
* **Restricciones y precauciones:** Sin `WHERE` elimina todas las filas; las claves foráneas pueden impedir el borrado o activar cascadas `ON DELETE CASCADE`[cite: 28].
* **Opciones avanzadas:** `OUTPUT DELETED` permite conservar un registro de filas eliminadas; se admite `TOP` en sintaxis T-SQL y borrado con `JOIN`[cite: 28].

**Ejemplo aplicado:**
```sql
BEGIN TRANSACTION;

DELETE FROM dbo.cita
WHERE estado = 'Cancelada';

-- Revertir esta demostración:
ROLLBACK TRANSACTION;
```

---

### 4.8 SELECT (DML)

Obtiene datos de una o varias tablas sin modificarlos; permite filtrar, ordenar, combinar y resumir información[cite: 29].

**Sintaxis general:**
```sql
SELECT [DISTINCT | ALL] [TOP (n)]
    expresion [AS alias] [, ...]
FROM tabla_o_vista [JOIN otra_tabla ON condicion]
[WHERE condicion]
[GROUP BY columnas]
[HAVING condicion_grupo]
[ORDER BY columna [ASC | DESC]]
[OFFSET n ROWS FETCH NEXT m ROWS ONLY];
```

* **Parámetros:** `SELECT` indica columnas o expresiones; `FROM` origen; `WHERE` filtra filas; `GROUP BY` crea grupos; `HAVING` filtra grupos; `ORDER BY` ordena[cite: 29].
* **Restricciones y precauciones:** La columna no agregada seleccionada debe ser compatible con `GROUP BY` cuando se agregan resultados[cite: 29]. `OFFSET/FETCH` exige `ORDER BY`; sin `ORDER BY`, el orden no está garantizado[cite: 29].
* **Opciones avanzadas:** `JOIN`, subconsultas, expresiones CTE (`WITH`), `DISTINCT`, `TOP`, `COUNT`/`SUM`/`AVG`, funciones de ventana y paginación `OFFSET`/`FETCH`[cite: 29].

**Ejemplo aplicado:**
```sql
SELECT c.nombre AS cliente,
       COUNT(m.id_mascota) AS total_mascotas
FROM dbo.cliente AS c
LEFT JOIN dbo.mascota AS m
    ON c.id_cliente = m.id_cliente
GROUP BY c.id_cliente, c.nombre
HAVING COUNT(m.id_mascota) >= 1
ORDER BY total_mascotas DESC;
```

---

## 5. Casos aplicados al sistema de clínica veterinaria

Los ejemplos anteriores relacionan la teoría con las tablas del proyecto normalizado: `cliente`, `cliente_telefono`, `empleado`, `veterinario`, `recepcionista`, `mascota` y `cita`[cite: 29]. Antes de modificar la estructura real debe comprobarse si existen dependencias de claves foráneas y respaldarse la información[cite: 29].

| Necesidad de la clínica | Comando | Aplicación |
| :--- | :--- | :--- |
| Agregar entidad para nuevos servicios[cite: 29] | `CREATE`[cite: 29] | Crear una tabla auxiliar `servicio_ejemplo`[cite: 29]. |
| Añadir un dato de contacto[cite: 29] | `ALTER`[cite: 29] | Incluir columna `correo` en `cliente`[cite: 29]. |
| Retirar una tabla de prácticas[cite: 29] | `DROP`[cite: 29] | Eliminar únicamente una tabla auxiliar[cite: 29]. |
| Vaciar datos de una tabla de pruebas[cite: 29] | `TRUNCATE`[cite: 29] | Eliminar filas manteniendo su definición[cite: 29]. |
| Registrar un propietario[cite: 29] | `INSERT`[cite: 29] | Añadir un cliente a la tabla `cliente`[cite: 29]. |
| Actualizar el salario de un empleado[cite: 29] | `UPDATE`[cite: 29] | Cambiar `salario` con filtro `id_empleado`[cite: 29]. |
| Retirar una cita cancelada[cite: 29] | `DELETE`[cite: 29] | Eliminar filas especificadas por `estado`[cite: 29]. |
| Listar clientes y número de mascotas[cite: 29] | `SELECT`[cite: 29] | `LEFT JOIN` con `COUNT` y `GROUP BY`[cite: 29]. |

> **Precaución:** Varios ejemplos son demostraciones y algunos modifican datos si se ejecutan[cite: 29]. Por eso, las pruebas destructivas usan tablas auxiliares o `ROLLBACK`[cite: 29]. El `INSERT` de ejemplo sí agrega un cliente real si se ejecuta; conviene utilizar una base de pruebas[cite: 29].

---

## 6. Conclusiones

El lenguaje SQL permite tanto definir la estructura de una base de datos como consultar y administrar la información[cite: 29]. Los comandos DDL `CREATE`, `ALTER`, `DROP` y `TRUNCATE` se relacionan con objetos, estructuras y operaciones de vaciado; los comandos DML `INSERT`, `UPDATE`, `DELETE` y `SELECT` se centran en el trabajo con registros y resultados[cite: 29].

La comparación y el análisis de la sintaxis, parámetros y restricciones permiten comprender las consecuencias de cada instrucción[cite: 29]. En el proyecto de la clínica veterinaria, estas operaciones facilitan mantener las tablas organizadas y realizar consultas fiables sin comprometer la integridad referencial[cite: 29].
