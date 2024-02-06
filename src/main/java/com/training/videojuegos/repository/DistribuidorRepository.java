package com.training.videojuegos.repository;

import com.training.videojuegos.domain.Distribuidor;
import com.training.videojuegos.domain.VideoJuego;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface DistribuidorRepository  extends JpaRepository<Distribuidor, Integer>{

}
