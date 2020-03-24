package com.joseluisgs.springdatarestapi.modelos.proyecciones;

import org.springframework.beans.factory.annotation.Value;

public interface CiudadPaisProyeccion {
    String getNombre();

    @Value("#{target.getPais().getNombre()}")
    String getPais();
}
