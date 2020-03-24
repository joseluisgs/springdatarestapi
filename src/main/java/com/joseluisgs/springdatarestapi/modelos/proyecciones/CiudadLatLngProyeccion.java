package com.joseluisgs.springdatarestapi.modelos.proyecciones;

import com.joseluisgs.springdatarestapi.modelos.Ciudad;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.rest.core.config.Projection;

@Projection(name = "ciudadLatLng", types = {Ciudad.class})
public interface CiudadLatLngProyeccion {
    @Value("#{target.id}")
    long getId();

    String getNombre();

    @Value("#{target.lat}#{','}#{target.lng}")
    String getCoordenadas();

    @Value("#{target.getPais().getNombre()}")
    String getPais();
}
