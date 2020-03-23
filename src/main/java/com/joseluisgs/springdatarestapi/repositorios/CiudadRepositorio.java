package com.joseluisgs.springdatarestapi.repositorios;

import com.joseluisgs.springdatarestapi.modelos.Ciudad;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

//@RepositoryRestResource(path = "ciudades", collectionResourceRel = "ciudades")
public interface CiudadRepositorio extends JpaRepository<Ciudad, Long> {

}
