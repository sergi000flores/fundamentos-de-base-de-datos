# Documentación de Bases de Datos y SGBD

## 1. Conceptos y Estructura de BD y SGBD

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

    %% Estilo visual
    style ROOT fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
    style C1 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
    style C2 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10


    style C3 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
    style C4 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10
Para que el cuadro comparativo se vea correctamente en GitHub sin usar funciones experimentales de Mermaid que suelen fallar (como `block-beta`), la manera más limpia y compatible es representarlo usando un **diagrama de flujo en Mermaid (`flowchart TD`)** estructurado en forma de filas y columnas bien organizadas.

Aquí tienes el código listo para copiar y pegar directamente en tu archivo `README.md`:

```markdown
```mermaid
flowchart TD
    subgraph Tabla ["Modelos de Datos"]
        direction TB
        
        %% Encabezados
        H["<b>Modelo</b> | <b>Definición</b> | <b>Forma de Representación</b>"]
        
        %% Fila 1: Jerárquico
        M1["<b>Jerárquico</b>"]
        D1["Modelo tradicional donde los datos se organizan en una estructura de <b>árbol invertido</b>. Establece relaciones de padre a hijo, donde cada hijo tiene un único padre (relación 1:N)."]
        R1["Estructura arborescente conectada por nodos y ramas jerárquicas."]
        
        %% Fila 2: En Red
        M2["<b>En Red</b>"]
        D2["Evolución del modelo jerárquico que permite relaciones más complejas. Permite que un registro hijo tenga múltiples padres (relación N:M), superando las limitaciones del modelo anterior."]
        R2["Estructura de <b>grafo</b> o red donde los datos se conectan mediante punteros y enlaces directos entre registros."]
        
        %% Fila 3: Relacional
        M3["<b>Relacional</b>"]
        D3["Modelo estándar actual basado en la teoría de conjuntos. Organiza toda la información en tablas bidimensionales independientes que se relacionan entre sí mediante claves."]
        R3["<b>Tablas bidimensionales (relaciones)</b> compuestas por filas (tuplas o registros) y columnas (atributos o campos), vinculadas por claves primarias y foráneas."]
        
        %% Fila 4: Orientado a Objetos
        M4["<b>Orientado a Objetos</b>"]
        D4["Modelo que integra los conceptos de la programación orientada a objetos. Almacena tanto los datos (atributos) como las operaciones (métodos) que actúan sobre ellos."]
        R4["<b>Objetos y clases</b>, reflejando entidades del mundo real con identidad, atributos y capacidad de herencia."]
    end

    %% Estilos limpios
    style H fill:#f4f4f4,stroke:#333,stroke-width:1px
    style M1 fill:#fff,stroke:#333,stroke-width:1px
    style D1 fill:#fff,stroke:#333,stroke-width:1px,text-align:left
    style R1 fill:#fff,stroke:#333,stroke-width:1px,text-align:left
    style M2 fill:#fff,stroke:#333,stroke-width:1px
    style D2 fill:#fff,stroke:#333,stroke-width:1px,text-align:left
    style R2 fill:#fff,stroke:#333,stroke-width:1px,text-align:left
    style M3 fill:#fff,stroke:#333,stroke-width:1px
    style D3 fill:#fff,stroke:#333,stroke-width:1px,text-align:left
    style R3 fill:#fff,stroke:#333,stroke-width:1px,text-align:left
    style M4 fill:#fff,stroke:#333,stroke-width:1px
    style D4 fill:#fff,stroke:#333,stroke-width:1px,text-align:left
    style R4 fill:#fff,stroke:#333,stroke-width:1px,text-align:left

```

```

Si prefieres la opción más infalible que **nunca falla en ningún visor de GitHub**, te recomiendo usar una tabla nativa de Markdown como esta:

```
| Modelo | Definición | Forma de Representación de Datos |
| :--- | :--- | :--- |
| **Jerárquico** | Modelo tradicional donde los datos se organizan en una estructura de **árbol invertido**. Establece relaciones de padre a hijo, donde cada hijo tiene un único padre (relación 1:N). | Estructura arborescente conectada por nodos y ramas jerárquicas. |
| **En Red** | Evolución del modelo jerárquico que permite relaciones más complejas. Permite que un registro hijo tenga múltiples padres (relación N:M), superando las limitaciones del modelo anterior. | Estructura de **grafo** o red donde los datos se conectan mediante punteros y enlaces directos entre registros. |
| **Relacional** | Modelo estándar actual basado en la teoría de conjuntos. Organiza toda la información en tablas bidimensionales independientes que se relacionan entre sí mediante claves. | **Tablas bidimensionales (relaciones)** compuestas por filas (tuplas o registros) y columnas (atributos o campos), vinculadas por claves primarias y foráneas. |
| **Orientado a Objetos** | Modelo que integra los conceptos de la programación orientada a objetos. Almacena tanto los datos (atributos) como las operaciones (métodos) que actúan sobre ellos. | **Objetos y clases**, reflejando entidades del mundo real con identidad, atributos y capacidad de herencia. |

```
    style D1 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10,text-align:left
    style D2 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10,text-align:left
    style D3 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10,text-align:left
    style D4 fill:#FAFCE6,stroke:#333,stroke-width:1px,rx:10,ry:10,text-align:left
