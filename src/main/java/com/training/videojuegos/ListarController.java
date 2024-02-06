package com.training.videojuegos;

import com.training.videojuegos.domain.VideoJuego;
import com.training.videojuegos.service.VideojuegoService;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ListarController {
        
    public final VideojuegoService VideojuegoService;

    public ListarController(VideojuegoService VideojuegoService) {
        this.VideojuegoService = VideojuegoService;
    }
        
        
    
        @RequestMapping("/")
        public String ListarVideoJuegos(Model model){
            List<VideoJuego> destacados = VideojuegoService.buscarDestacados();
            model.addAttribute("videojuegos", destacados);
            return "listado";
        }
        
        @RequestMapping("/videoJuegosPorDistribuidor")
        public String listarVideoJuegosPorDistribuidor(int distribuidorId, Model model){
            List<VideoJuego> juegos = VideojuegoService.buscarPorDistribuidor(distribuidorId);
            model.addAttribute("videojuegos", juegos);
            return "listado";
        }
        
        @RequestMapping("/videoJuegosPorNombre")
        public String listarVideoJuegosPornombre(String nombre, Model model){
            List<VideoJuego> juegos = VideojuegoService.buscarPorNombre(nombre);
            model.addAttribute("videojuegos", juegos);
            return "listado ";
        }
        
        @RequestMapping("/busqueda")
        public String consultar(@RequestParam("q") String consulta, Model model){
            List<VideoJuego> juegos = VideojuegoService.buscar(consulta);
            model.addAttribute("videojuegos", juegos);
            return "listado";
        }
        
}
