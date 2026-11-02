Tarea 1.1 
mapa conceptual 



```mermaid
flowchart TD
    %% Nodo Principal
    ROOT["BASES DE DATOS (BD) Y SISTEMAS DE GESTIÓN (SGBD)"]

    %% Conexión central de primer nivel
    ROOT --> C1["conceptos<br/>fundamentales"]
    ROOT --> C2["objetivos<br/>principales"]
    ROOT --> C3["usos"]
    ROOT --> C4["aplicaciones"]

    %% Bloques de detalle
    C1 --> D1["• Dato: Unidad mínima de información.<br/>• Información: Datos procesados con contexto.<br/>• Base de Datos: Colección organizada de datos.<br/>• SGBD (DBMS): Software de gestión e interfaz de la base de datos.<br/>• Propiedades Clave:<br/>• Independencia de datos<br/>• Control de redundancia<br/>• Integridad<br/>• Seguridad"]
    
    C2 --> D2["• Centralización y consistencia<br/>• Reducción de redundancia<br/>• Seguridad y control de acceso<br/>• Soporte para acceso concurrente<br/>• Persistencia de datos"]
    
    C3 --> D3["• Procesamiento de Transacciones en Línea (OLTP):<br/>• Ejemplo: compras, pagos.<br/>• Procesamiento Analítico en Línea (OLAP):<br/>• Ejemplo: inteligencia de negocios, análisis complejos."]
    
    C4 --> D4["• Banca y Finanzas<br/>• Comercio Electrónico<br/>• Salud y Medicina<br/>• Educación<br/>• Telecomunicaciones<br/>• Gobierno y Admin. Pública"]

    %% Estilo visual similar al de la imagen
    style ROOT fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
    style C1 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
    style C2 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
    style C3 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
    style C4 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
    style D1 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10,text-align:left
    style D2 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10,text-align:left
    style D3 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10,text-align:left
    style D4 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10,text-align:left
