# Esquema Relacional — Clínica Veterinaria "Patitas Felices"

## Notación Formal del Esquema
* **cliente** (**id_cliente**, nombre, calle, ciudad)
* **cliente_telefono** (**id_cliente**, **telefono**) — *FK (`id_cliente`) -> `cliente(id_cliente)`*
* **empleado** (**id_empleado**, nombre, salario)
* **veterinario** (**id_empleado**, especialidad) — *FK (`id_empleado`) -> `empleado(id_empleado)`*
* **recepcionista** (**id_empleado**, turno) — *FK (`id_empleado`) -> `empleado(id_empleado)`*
* **mascota** (**id_mascota**, nombre, especie, fecha_nacimiento, *id_cliente*) — *FK (`id_cliente`) -> `cliente(id_cliente)`*
* **cita** (**id_cita**, fecha_hora, estado, *id_mascota*, *id_veterinario*) — *FK (`id_mascota`) -> `mascota(id_mascota)`*, *FK (`id_veterinario`) -> `veterinario(id_empleado)`*

## Diagrama Relacional (Mermaid)

```mermaid
erDiagram
    CLIENTE {
        int id_cliente PK
        varchar nombre
        varchar calle
        varchar ciudad
    }

    CLIENTE_TELEFONO {
        int id_cliente PK, FK
        varchar telefono PK
    }

    EMPLEADO {
        int id_empleado PK
        varchar nombre
        decimal salario
    }

    VETERINARIO {
        int id_empleado PK, FK
        varchar especialidad
    }

    RECEPCIONISTA {
        int id_empleado PK, FK
        varchar turno
    }

    MASCOTA {
        int id_mascota PK
        varchar nombre
        varchar especie
        date fecha_nacimiento
        int id_cliente FK
    }

    CITA {
        int id_cita PK
        timestamp fecha_hora
        varchar estado
        int id_mascota FK
        int id_veterinario FK
    }

    CLIENTE ||--o{ CLIENTE_TELEFONO : "tiene"
    CLIENTE ||--o{ MASCOTA : "posee"
    EMPLEADO ||--o| VETERINARIO : "es"
    EMPLEADO ||--o| RECEPCIONISTA : "es"
    MASCOTA ||--o{ CITA : "agenda"
    VETERINARIO ||--o{ CITA : "atiende"
```
