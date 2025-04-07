package com.escolhaSuperior.backend.controller;

import com.escolhaSuperior.backend.model.Universidade;
import com.escolhaSuperior.backend.repository.UniversidadeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;



@RestController
@RequestMapping("/api/universidade")
@CrossOrigin(origins = "*")
public class UniversidadeController {
    
    @Autowired
    private UniversidadeRepository universidadeRepository;

    @GetMapping
    public List<Universidade> getAllUniversidades(){
        return universidadeRepository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Universidade> getUniversidadeById(@PathVariable("id") Long id) {
        return universidadeRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.status(HttpStatus.NOT_FOUND).body(null));
    }

    @PostMapping
    public Universidade createUniversidade(@RequestBody Universidade universidade) {
        return universidadeRepository.save(universidade);
    }

}
