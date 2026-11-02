# Documentación de Bases de Datos y SGBD

## 1. Evolución de los Modelos de Datos

```mermaid
graph TD
    %% Estilos
    classDef modelStyle fill:#f9f,stroke:#333,stroke-width:2px;
    classDef descStyle fill:#fcf,stroke:#333,stroke-width:1px;

    %% Nodos principales
    Hierarchical["Modelo Jerárquico\n(Árbol invertido / 1:N)"]:::modelStyle
    Network["Modelo en Red\n(Grafo / N:M)"]:::modelStyle
    Relational["Modelo Relacional\n(Tablas bidimensionales / Claves)"]:::modelStyle
    OO["Modelo Orientado a Objetos\n(Clases y Objetos / Herencia)"]:::modelStyle

    %% Relaciones / Evolución conceptual
    Hierarchical -->|Evoluciona a| Network
    Network -->|Evoluciona a / Complementa| Relational
    Relational -->|Integra POO| OO
