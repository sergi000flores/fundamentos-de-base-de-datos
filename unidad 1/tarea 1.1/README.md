erDiagram
    USUARIO ||--o{ VISTA_EXTERNA : accede
    APLICACION ||--o{ VISTA_EXTERNA : utiliza
    VISTA_EXTERNA ||--o{ ESQUEMA_CONCEPTUAL : mapea
    ESQUEMA_CONCEPTUAL ||--|{ ESQUEMA_INTERNO : traduce
    ESQUEMA_INTERNO ||--|{ ALMACENAMIENTO_FISICO : persiste

    USUARIO {
        int id_usuario
        string rol
    }

    APLICACION {
        int id_app
        string nombre
    }

    VISTA_EXTERNA {
        int id_vista
        string descripcion
    }

    ESQUEMA_CONCEPTUAL {
        int id_conceptual
        string global_logico
    }

    ESQUEMA_INTERNO {
        int id_interno
        string fisico_hardware
    }

    ALMACENAMIENTO_FISICO {
        int id_disco
        string archivos
    }
