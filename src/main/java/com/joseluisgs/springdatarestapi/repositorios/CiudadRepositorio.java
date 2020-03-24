package com.joseluisgs.springdatarestapi.repositorios;

import com.joseluisgs.springdatarestapi.modelos.Ciudad;
import com.joseluisgs.springdatarestapi.modelos.proyecciones.CiudadPaisProyeccion;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

// Nos indica el path automaticamente desde el path donde se va a exponer
//@RepositoryRestResource(path = "ciudades", collectionResourceRel = "ciudades")
// Añadimos una proyeccion por defecto Excerps
@RepositoryRestResource(path = "ciudades", collectionResourceRel = "ciudades", excerptProjection = CiudadPaisProyeccion.class)
public interface CiudadRepositorio extends JpaRepository<Ciudad, Long> {

    // Consulta personalizada
    @RestResource(path = "nombreComienzaPor", rel = "nombreComienzaPor")
    public Page<Ciudad> findByNombreStartsWith(@Param("nombre") String nombre, Pageable p);

    // Consulta personalizada
    @RestResource(path = "nombreContieneA", rel = "nombreContieneA")
    public Page<Ciudad> findByNombreContaining(@Param("nombre") String nombre, Pageable p);
}
