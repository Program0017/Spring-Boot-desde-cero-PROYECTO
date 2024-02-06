package com.training.videojuegos;

import com.training.videojuegos.domain.VideoJuego;
import com.training.videojuegos.service.DistribuidorService;
import com.training.videojuegos.service.VideojuegoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoJuegoAbmController {

    public final DistribuidorService distribuidorService;
    public final VideojuegoService videojuegoService;

    public VideoJuegoAbmController(DistribuidorService distribuidorService, VideojuegoService videojuegoService) {
        this.distribuidorService = distribuidorService;
        this.videojuegoService = videojuegoService;
    }

    @RequestMapping("/videojuegos/crear")
    public String mostrarFormAlta(Model model) {
        model.addAttribute("distribuidores", distribuidorService.buscarTodos());
        model.addAttribute("videojuego", new VideoJuego());
        return "formVideojuego";
    }

    @PostMapping("/videojuegos/guardar")
    public String guardar(VideoJuego videojuego) {
        videojuegoService.guardar(videojuego);
        return "redirect:/";
    }
}
