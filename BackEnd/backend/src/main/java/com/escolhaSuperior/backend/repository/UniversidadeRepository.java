package com.escolhaSuperior.backend.repository;

import com.escolhaSuperior.backend.model.Universidade;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UniversidadeRepository extends JpaRepository<Universidade, Long> {
} 
