package com.training.videojuegos.service;

import com.training.videojuegos.domain.VideoJuego;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface VideoJuegoRepository  extends JpaRepository<VideoJuego, Integer>{
   
    @Query("from VideoJuego v order by v.nombre  DESC")
    List<VideoJuego> buscarTodos();
    
    @Query("from VideoJuego v where v.distribuidor.id = ?1 order by v.nombre")
    List<VideoJuego> buscarPorDistribuidor(int distribuidorId);

    
    List<VideoJuego> findByNombre (String nombre);
    
    List<VideoJuego> findByNombreContaining (String consulta);
    
    

}
