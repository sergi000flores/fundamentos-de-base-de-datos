
# Tarea 1.1 - Bases de Datos y Sistemas de Gestión

## Descripción

En esta actividad se presenta un diagrama sobre las bases de datos (BD) y los sistemas de gestión de bases de datos (SGBD), sus conceptos fundamentales, objetivos principales, usos y aplicaciones.

## Diagrama Mermaid

```mermaid
flowchart TD
    ROOT["BASES DE DATOS (BD) Y SISTEMAS DE GESTIÓN (SGBD)"]

    ROOT --> C1["Conceptos fundamentales"]
    ROOT --> C2["Objetivos principales"]
    ROOT --> C3["Usos"]
    ROOT --> C4["Aplicaciones"]

    C1 --> D1["Dato: Unidad mínima de información.<br/>Información: Datos procesados con contexto.<br/>Base de Datos: Colección organizada de datos.<br/>SGBD: Software de gestión e interfaz de la base de datos.<br/>Propiedades clave: Independencia de datos, control de redundancia, integridad y seguridad."]

    C2 --> D2["Centralización y consistencia.<br/>Reducción de redundancia.<br/>Seguridad y control de acceso.<br/>Acceso concurrente.<br/>Persistencia de datos."]

    C3 --> D3["OLTP: Procesamiento de transacciones en línea.<br/>Ejemplo: Compras y pagos.<br/>OLAP: Procesamiento analítico en línea.<br/>Ejemplo: Inteligencia de negocios y análisis complejos."]

    C4 --> D4["Banca y finanzas.<br/>Comercio electrónico.<br/>Salud y medicina.<br/>Educación.<br/>Telecomunicaciones.<br/>Gobierno y administración pública."]

    style ROOT fill:#FAFCE6,stroke:#333,stroke-width:2px,color:#000
    style C1 fill:#FAFCE6,stroke:#333,stroke-width:1px,color:#000
    style C2 fill:#FAFCE6,stroke:#333,stroke-width:1px,color:#000
    style C3 fill:#FAFCE6,stroke:#333,stroke-width:1px,color:#000
    style C4 fill:#FAFCE6,stroke:#333,stroke-width:1px,color:#000
    style D1 fill:#FAFCE6,stroke:#333,stroke-width:1px,color:#000
    style D2 fill:#FAFCE6,stroke:#333,stroke-width:1px,color:#000
    style D3 fill:#FAFCE6,stroke:#333,stroke-width:1px,color:#000
    style D4 fill:#FAFCE6,stroke:#333,stroke-width:1px,color:#000
```
