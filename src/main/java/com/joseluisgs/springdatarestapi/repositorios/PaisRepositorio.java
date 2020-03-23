package com.joseluisgs.springdatarestapi.repositorios;

import com.joseluisgs.springdatarestapi.modelos.Pais;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

// Punto de entrada
@RepositoryRestResource(path = "paises", collectionResourceRel = "paises")
public interface PaisRepositorio extends JpaRepository<Pais, Long> {

}