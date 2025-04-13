package com.escolhaSuperior.backend.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/utilizador") 
public class FavoritoController {

    @PutMapping("/favoritar-curso/{idCurso}")
    public ResponseEntity<?> favoritarCurso(@RequestParam Long idUtilizador, @PathVariable Long idCurso) {
        
        return ResponseEntity.ok().build();
    }
}
