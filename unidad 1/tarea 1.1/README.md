```mermaid
graph TD
    %% Nivel de Usuarios y Aplicaciones
    U1[Usuario 1]
    U2[Usuario 2]
    App[Aplicación]

    %% Nivel Externo
    subgraph NE [Nivel Externo]
        V1[Vista / Esquema Externo 1]
        V2[Vista / Esquema Externo 2]
        V3[Vista / Esquema Externo 3]
    end

    %% Nivel Conceptual
    subgraph NC [Nivel Conceptual]
        EC[Esquema Conceptual Global / Lógico]
    end

    %% Nivel Interno
    subgraph NI [Nivel Interno]
        EI[Esquema Interno / Almacenamiento Físico]
    end

    %% Almacenamiento Físico
    BD[(Dispositivos de Almacenamiento / Disco)]

    %% Conexiones de Usuarios a Vistas
    U1 --> V1
    U2 --> V2
    App --> V3

    %% Mapeos entre niveles
    V1 -->|Correspondencia Externo-Conceptual| EC
    V2 -->|Correspondencia Externo-Conceptual| EC
    V3 -->|Correspondencia Externo-Conceptual| EC

    EC -->|Correspondencia Conceptual-Interno| EI
    EI --> BD

    %% Estilos de Nodos
    style NE fill:#e1f5fe,stroke:#0288d1,stroke-width:2px
    style NC fill:#e8f5e9,stroke:#388e3c,stroke-width:2px
    style NI fill:#fff3e0,stroke:#f57c00,stroke-width:2px
    style BD fill:#f3e5f5,stroke:#7b1fa2,stroke-width:2px
