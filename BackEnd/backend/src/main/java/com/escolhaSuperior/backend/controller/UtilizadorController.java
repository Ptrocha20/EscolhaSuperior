package com.escolhaSuperior.backend.controller;

import com.escolhaSuperior.backend.model.Utilizador;
import com.escolhaSuperior.backend.repository.UtilizadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/utilizadores")
@CrossOrigin(origins = "*")
public class UtilizadorController {

    @Autowired
    private UtilizadorRepository utilizadorRepository;

    @GetMapping("/{id}")
    public ResponseEntity<Utilizador> getUtilizadorById(@PathVariable Long id) {
        Optional<Utilizador> utilizador = utilizadorRepository.findById(id);
        return utilizador.map(ResponseEntity::ok)
                         .orElseGet(() -> ResponseEntity.notFound().build());
    }
}