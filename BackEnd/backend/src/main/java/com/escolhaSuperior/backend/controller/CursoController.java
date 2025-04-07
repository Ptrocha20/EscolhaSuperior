package com.escolhaSuperior.backend.controller;

import com.escolhaSuperior.backend.model.Curso;
import com.escolhaSuperior.backend.repository.CursoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;



@RestController
@RequestMapping("/api/curso")
@CrossOrigin(origins = "*")
public class CursoController {
    
    @Autowired
    private CursoRepository cursoRepository;

    @GetMapping
    public List<Curso> getAllCursos(){
        return cursoRepository.findAll();
    }

    @GetMapping("/{id}")
    public  ResponseEntity<Curso> getCursoById(@PathVariable("id") Long id)
    {
        return cursoRepository.findById(id)
            .map(ResponseEntity::ok)
            .orElseGet(() -> ResponseEntity.status(HttpStatus.NOT_FOUND).body(null));
    }

    @PostMapping
    public Curso createCurso(@RequestBody Curso curso)
    {
        return cursoRepository.save(curso);
    }
    


}
