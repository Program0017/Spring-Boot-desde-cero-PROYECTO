package com.training.videojuegos.service;

import com.training.videojuegos.domain.Distribuidor;
import com.training.videojuegos.repository.DistribuidorRepository;
import com.training.videojuegos.domain.VideoJuego;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class DistribuidorService {
    
    private final DistribuidorRepository distribuidorRepository;

    public DistribuidorService(DistribuidorRepository distribuidorRepository) {
        this.distribuidorRepository = distribuidorRepository;
    }

    public  List<Distribuidor> buscarTodos(){
        return distribuidorRepository.findAll();
    }
}
