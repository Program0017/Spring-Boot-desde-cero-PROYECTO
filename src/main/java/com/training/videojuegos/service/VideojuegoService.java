package com.training.videojuegos.service;

import com.training.videojuegos.domain.VideoJuego;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class VideojuegoService {
    
    private final VideoJuegoRepository videoJuegoRepository;

    public VideojuegoService(VideoJuegoRepository videoJuegoRepository) {
        this.videoJuegoRepository = videoJuegoRepository;
    }
    
    
    public List<VideoJuego> buscarDestacados(){  
        return videoJuegoRepository.buscarTodos();
    }
    
    public List<VideoJuego> buscarPorDistribuidor(int distribuidorId){  
        return videoJuegoRepository.buscarPorDistribuidor(distribuidorId);
    }
    public List<VideoJuego> buscarPorNombre(String nombre){  
        return videoJuegoRepository.findByNombre(nombre);
    }
    
    public List<VideoJuego> buscar(String consulta){  
        return videoJuegoRepository.findByNombreContaining(consulta);
    }
    
    public VideoJuego guardar(VideoJuego videoJuego){  
        return videoJuegoRepository.save(videoJuego);
    }
}
