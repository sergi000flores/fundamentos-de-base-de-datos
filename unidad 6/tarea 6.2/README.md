# Tarea 6 - Clínica Veterinaria: DDL y DML

Proyecto académico para **Microsoft SQL Server**, desarrollado y probado mediante **SQL Server Management Studio (SSMS)**. Contiene siete tablas relacionadas, registros de ejemplo, consultas y pruebas controladas de integridad referencial.

## Requisitos

- Microsoft SQL Server (por ejemplo, SQL Server Express).
- SQL Server Management Studio (SSMS) con conexión al servidor.
- Permisos para crear una base de datos y tablas, e insertar y consultar datos.

## Clonar el repositorio

Si el proyecto está publicado en GitHub o en otro servidor Git, copia su URL y ejecuta:

```bash
git clone <URL_DEL_REPOSITORIO>
cd <CARPETA_DEL_REPOSITORIO>
```

**Nota:** el enlace del repositorio no fue proporcionado; reemplaza `<URL_DEL_REPOSITORIO>` y `<CARPETA_DEL_REPOSITORIO>` por los valores reales. También puedes descargar o descomprimir la carpeta del proyecto sin Git.

## Orden de ejecución en SSMS

1. Conéctate a una instancia de SQL Server en SSMS.
2. Abre `01_crear_bd_y_tablas.sql` y ejecútalo con **F5**: crea la base `ClinicaVeterinaria_Tarea6`, siete tablas y restricciones (PK, FK, CHECK, DEFAULT).
3. Ejecuta `02_poblar_datos.sql`: inserta registros de prueba. Está preparado para cargar datos solamente si la tabla `cliente` está vacía; **no lo ejecutes sobre datos ajenos sin revisarlo**.
4. Ejecuta `03_consultas_dml.sql`: consultas SELECT, WHERE, ORDER BY, GROUP BY, HAVING, COUNT, SUM, AVG, MAX, MIN, INNER JOIN y LEFT JOIN.
5. Ejecuta `04_pruebas_integridad.sql`: demostraciones de UPDATE y DELETE, restricciones y cascadas. Las modificaciones demostrativas se revierten con ROLLBACK.
6. Consulta la pestaña **Resultados** para las tablas y **Mensajes** para el estado y los errores esperados de integridad.

## Estructura del proyecto

```text
Entrega_Tarea6_ClinicaVeterinaria/
├── 01_crear_bd_y_tablas.sql
├── 02_poblar_datos.sql
├── 03_consultas_dml.sql
├── 04_pruebas_integridad.sql
├── Reporte_Tecnico_Tarea6_ClinicaVeterinaria.docx
├── evidencias/
│   ├── evidencia_01_creacion.png
│   ├── evidencia_02_consultas_basicas.png
│   ├── evidencia_03_agrupaciones_y_join.png
│   ├── evidencia_04_left_join.png
│   └── evidencia_05_citas_join.png
└── README.md
```

## Verificación de resultados

En una base nueva, la carga del script incluido añade datos suficientes para las siete tablas. Comprueba el número de filas con:

```sql
USE ClinicaVeterinaria_Tarea6;
SELECT 'cliente' AS tabla, COUNT(*) AS registros FROM dbo.cliente
UNION ALL SELECT 'mascota', COUNT(*) FROM dbo.mascota
UNION ALL SELECT 'cita', COUNT(*) FROM dbo.cita;
```

Las capturas incluidas evidencian ejecución satisfactoria de la creación/selección de la base y varias consultas, pero **no documentan visualmente las pruebas de UPDATE/DELETE**. Para una evidencia completa de mantenimiento, ejecuta el cuarto script y toma capturas adicionales.

## Precauciones

- Ejecuta el archivo de creación solo en la instancia deseada. Los nombres están fijados a `ClinicaVeterinaria_Tarea6`.
- Los scripts son T-SQL; `GO` es un separador de lotes de SSMS, no SQL estándar.
- Si ya existe la base con datos, los resultados pueden diferir de los del reporte.
- No uses las demostraciones de borrado en una base de producción.

## Autoría

Materia: Fundamentos de Base de Datos. Proyecto: sistema de clínica veterinaria.
