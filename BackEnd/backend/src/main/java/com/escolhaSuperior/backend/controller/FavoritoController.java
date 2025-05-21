package com.escolhaSuperior.backend.controller;

import com.escolhaSuperior.backend.model.Curso;
import com.escolhaSuperior.backend.model.Universidade;
import com.escolhaSuperior.backend.model.Utilizador;
import com.escolhaSuperior.backend.repository.CursoRepository;
import com.escolhaSuperior.backend.repository.UniversidadeRepository;
import com.escolhaSuperior.backend.repository.UtilizadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/utilizador")
@CrossOrigin(origins = "*")
public class FavoritoController {

    @Autowired
    private UtilizadorRepository utilizadorRepository;

    @Autowired
    private CursoRepository cursoRepository;

    @Autowired
    private UniversidadeRepository universidadeRepository;

    // === FAVORITAR CURSO ===
    @PutMapping("/favoritar-curso/{idCurso}")
    public ResponseEntity<?> favoritarCurso(@RequestParam Long idUtilizador, @PathVariable Long idCurso) {
        Optional<Utilizador> utilizadorOpt = utilizadorRepository.findById(idUtilizador);
        Optional<Curso> cursoOpt = cursoRepository.findById(idCurso);

        if (utilizadorOpt.isPresent() && cursoOpt.isPresent()) {
            Utilizador utilizador = utilizadorOpt.get();
            Curso curso = cursoOpt.get();
            if (!utilizador.getCursosFavoritos().contains(curso)) {
                utilizador.getCursosFavoritos().add(curso);
                utilizadorRepository.save(utilizador);
            }
            return ResponseEntity.ok().build();
        }

        return ResponseEntity.notFound().build();
    }

    // === DESFAVORITAR CURSO ===
    @DeleteMapping("/desfavoritar-curso/{idCurso}")
    public ResponseEntity<?> desfavoritarCurso(@RequestParam Long idUtilizador, @PathVariable Long idCurso) {
        Optional<Utilizador> utilizadorOpt = utilizadorRepository.findById(idUtilizador);
        Optional<Curso> cursoOpt = cursoRepository.findById(idCurso);

        if (utilizadorOpt.isPresent() && cursoOpt.isPresent()) {
            Utilizador utilizador = utilizadorOpt.get();
            Curso curso = cursoOpt.get();
            utilizador.getCursosFavoritos().remove(curso);
            utilizadorRepository.save(utilizador);
            return ResponseEntity.ok().build();
        }

        return ResponseEntity.notFound().build();
    }

    // === FAVORITAR UNIVERSIDADE ===
    @PutMapping("/favoritar-universidade/{idUniversidade}")
    public ResponseEntity<?> favoritarUniversidade(@RequestParam Long idUtilizador, @PathVariable Long idUniversidade) {
        Optional<Utilizador> utilizadorOpt = utilizadorRepository.findById(idUtilizador);
        Optional<Universidade> universidadeOpt = universidadeRepository.findById(idUniversidade);

        if (utilizadorOpt.isPresent() && universidadeOpt.isPresent()) {
            Utilizador utilizador = utilizadorOpt.get();
            Universidade universidade = universidadeOpt.get();
            if (!utilizador.getUniversidadeFavoritas().contains(universidade)) {
                utilizador.getUniversidadeFavoritas().add(universidade);
                utilizadorRepository.save(utilizador);
            }
            return ResponseEntity.ok().build();
        }

        return ResponseEntity.notFound().build();
    }

    // === DESFAVORITAR UNIVERSIDADE ===
    @DeleteMapping("/desfavoritar-universidade/{idUniversidade}")
    public ResponseEntity<?> desfavoritarUniversidade(@RequestParam Long idUtilizador, @PathVariable Long idUniversidade) {
        Optional<Utilizador> utilizadorOpt = utilizadorRepository.findById(idUtilizador);
        Optional<Universidade> universidadeOpt = universidadeRepository.findById(idUniversidade);

        if (utilizadorOpt.isPresent() && universidadeOpt.isPresent()) {
            Utilizador utilizador = utilizadorOpt.get();
            Universidade universidade = universidadeOpt.get();
            utilizador.getUniversidadeFavoritas().remove(universidade);
            utilizadorRepository.save(utilizador);
            return ResponseEntity.ok().build();
        }

        return ResponseEntity.notFound().build();
    }
}
