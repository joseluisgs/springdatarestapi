package com.joseluisgs.springdatarestapi.modelos.proyecciones;

import com.joseluisgs.springdatarestapi.modelos.Ciudad;
import org.springframework.data.rest.core.config.Projection;

/*
IMPORTANTE que lo no lo dice, tiene que estar en el mismo paquete o subpaquete que clases de dominio
Flagged with the @Projection annotation and located in the same package (or sub-package) of the domain type, OR

Manually registered by using RepositoryRestConfiguration.getProjectionConfiguration().addProjection(…).

 */

@Projection(name = "ciudadSinUbicacion", types = { Ciudad.class })
// Indicamos las proyección y que campos vamos a devolver
public interface CiudadProyeccion {
    String getNombre();
}
