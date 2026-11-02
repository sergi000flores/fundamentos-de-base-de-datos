graph TD
    subgraph Usuarios ["Nivel de Usuarios y Aplicaciones"]
        U1[Usuario 1]
        U2[Usuario 2]
        App[Aplicación]
    end

    subgraph NE ["Nivel Externo - Vistas"]
        V1[Vista 1: Oculta detalles]
        V2[Vista 2: Personalizada]
        V3[Vista Aplicación]
    end

    subgraph NC ["Nivel Conceptual - Global"]
        EC[Esquema Conceptual Lógico]
    end

    subgraph NI ["Nivel Interno - Físico"]
        EI[Esquema Interno en Hardware]
    end

    BD[(Dispositivos de Almacenamiento)]

    U1 --> V1
    U2 --> V2
    App --> V3

    V1 --> EC
    V2 --> EC
    V3 --> EC

    EC --> EI
    EI --> BD

    style NE fill:#e1f5fe,stroke:#0288d1,stroke-width:2px
    style NC fill:#e8f5e9,stroke:#388e3c,stroke-width:2px
    style NI fill:#fff3e0,stroke:#f57c00,stroke-width:2px
    style BD fill:#f3e5f5,stroke:#7b1fa2,stroke-width:2px
