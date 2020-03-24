package com.joseluisgs.springdatarestapi.repositorios;

import com.joseluisgs.springdatarestapi.modelos.Ciudad;
import com.joseluisgs.springdatarestapi.modelos.Pais;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

// Punto de entrada
@RepositoryRestResource(path = "paises", collectionResourceRel = "paises")
//@RepositoryRestResource(exported = false) // Activa o desactiva que el repositorio se exporte
public interface PaisRepositorio extends JpaRepository<Pais, Long> {

    // Consulta personalizada
    @RestResource(path = "nombreComienzaPor", rel = "nombreComienzaPor")
    public Page<Pais> findByNombreStartsWith(@Param("nombre") String nombre, Pageable p);

    // Consulta personalizada
    @RestResource(path = "nombreContieneA", rel = "nombreContieneA")
    public Page<Pais> findByNombreContaining(@Param("nombre") String nombre, Pageable p);

}