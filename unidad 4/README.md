# Unidad 4 — Dependencias Funcionales, Formas Normales y Proceso de Normalización

* **Institución:** Instituto Tecnológico Superior de Monclova (ITSM)[cite: 2]
* **Asignatura:** Fundamentos de Base de Datos[cite: 2]
* **Profesor:** Ruben Riojas[cite: 2]
* **Estudiante:** Sergio Alberto Flores Rendon[cite: 2]

---

## Descripción General

En esta unidad se profundizó en la teoría formal de la normalización relacional aplicada al diseño de bases de datos. Se analizaron las dependencias funcionales, las anomalías de actualización y las reglas de las distintas formas normales, documentando el refinamiento progresivo de una estructura del sistema de clínica veterinaria hasta obtener su script SQL normalizado.

---

## Actividades Realizadas

### Fundamentos de dependencias y mapa conceptual de formas normales
* **Marco teórico de dependencias y anomalías:** Definición formal de normalización, dependencias funcionales (completas y parciales), dependencias transitivas y anomalías clásicas de **inserción**, **borrado** y **modificación**[cite: 15].
* **Mapa conceptual de formas normales:** Síntesis visual de las reglas y condiciones para alcanzar **1FN, 2FN, 3FN, Forma Normal de Boyce-Codd (FNBC), 4FN y 5FN** (incluyendo su representación gráfica y diagrama en Mermaid)[cite: 15].

### Proceso paso a paso de normalización y script SQL corregido
* **Transición progresiva de una estructura del proyecto:** Documentación detallada del paso de un estado desnormalizado a **1FN** (atomicidad y eliminación de grupos repetitivos), de **1FN a 2FN** (eliminación de dependencias funcionales parciales) y de **2FN a 3FN / FNBC** (eliminación de dependencias transitivas y validación de determinantes como superclaves)[cite: 15].
* **Script SQL normalizado:** Generación del script SQL corregido a partir del esquema resultante, conservando claves primarias, foráneas y restricciones de integridad[cite: 11, 15].

---

## Estructura de la Carpeta

```text
Unidad_4/
├── README.md
├── normalizacion_clinica_veterinaria.sql
├── Fundamentos_y_Mapa_Conceptual/
└── Proceso_Normalizacion_y_Script_SQL/
```
