 En esta tarea elabora un mapa conceptual con la notación formal y significado de los operadores unarios (selección , proyección ) y binarios (producto cartesiano , unión , intersección , diferencia -, división , reunión/join $\bowtie$).

Incluye en el marco teórico los operadores del álgebra relacional extendida (proyección generalizada, funciones de agregación G, reuniones externas left/right/full outer join).

# Mapa Conceptual — Álgebra Relacional[cite: 21]

```mermaid
flowchart TD
    classDef titulo fill:#FCE7F3,stroke:#EC4899,stroke-width:2px,color:#9D174D;
    classDef categoria fill:#DBEAFE,stroke:#60A5FA,stroke-width:1.8px,color:#1E3A8A;
    classDef operador fill:#F8FAFC,stroke:#94A3B8,stroke-width:1.5px,color:#0F172A;
    classDef extendida fill:#FDF2F8,stroke:#F472B6,stroke-width:1.8px,color:#9D174D;
    classDef extItem fill:#FFFBEB,stroke:#D97706,stroke-width:1.5px,color:#1F2937;

    AR["<b>ÁLGEBRA RELACIONAL</b>"]:::titulo

    OU["<b>OPERADORES UNARIOS</b>"]:::categoria
    OB["<b>OPERADORES BINARIOS</b>"]:::categoria

    SEL["<b>σ Selección</b><br/>Filtra filas según condición"]:::operador
    PROY["<b>π Proyección</b><br/>Elige columnas y quita duplicados"]:::operador

    PROD["<b>× Producto cartesiano</b><br/>Combina todos los pares"]:::operador
    UNION["<b>∪ Unión</b><br/>Reúne filas compatibles"]:::operador
    INTER["<b>∩ Intersección</b><br/>Conserva filas comunes"]:::operador
    DIF["<b>− Diferencia</b><br/>Filas de R que no están en S"]:::operador
    DIV["<b>÷ División</b><br/>Consulta del tipo «para todos»"]:::operador
    JOIN["<b>⋈ Reunión / join</b><br/>Relaciona filas compatibles"]:::operador

    ARE["<b>ÁLGEBRA RELACIONAL EXTENDIDA</b>"]:::extendida

    PG["<b>π Proyección generalizada</b><br/>Atributos y expresiones"]:::extItem
    AGR["<b>G / γ Agregación</b><br/>COUNT, SUM, AVG, MIN, MAX"]:::extItem
    RE["<b>⟕ ⟖ ⟗ Reuniones externas</b><br/>Conservan filas sin coincidencia"]:::extItem

    AR --> OU
    AR --> OB

    OU --- SEL
    SEL --- PROY

    OB --- PROD
    PROD --- UNION
    UNION --- INTER
    INTER --- DIF
    DIF --- DIV
    DIV --- JOIN

    PROY --> ARE
    JOIN --> ARE

    ARE --> PG
    ARE --> AGR
    ARE --> RE
```
