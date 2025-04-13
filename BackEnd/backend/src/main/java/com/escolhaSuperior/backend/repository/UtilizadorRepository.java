package com.escolhaSuperior.backend.repository;

import com.escolhaSuperior.backend.model.Utilizador;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import com.escolhaSuperior.backend.model.Utilizador;

public interface UtilizadorRepository extends JpaRepository<Utilizador, Long> {
    Optional<Utilizador> findByEmail(String email);
}