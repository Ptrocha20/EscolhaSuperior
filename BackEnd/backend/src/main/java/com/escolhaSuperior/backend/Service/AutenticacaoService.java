package com.escolhaSuperior.backend.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.escolhaSuperior.backend.model.Utilizador;
import com.escolhaSuperior.backend.repository.UtilizadorRepository;

@Service
public class AutenticacaoService {

    @Autowired
    private UtilizadorRepository utilizadorRepository;

    public Utilizador registo(Utilizador utilizador) {
        // Sem encriptar a password para já
        return utilizadorRepository.save(utilizador);
    }

    public Optional<Utilizador> login(String email, String senha) {
        // Buscar o utilizador pelo email
        Optional<Utilizador> utilizador = utilizadorRepository.findByEmail(email);

        if (utilizador.isPresent() && utilizador.get().getPalavrapasse().equals(senha)) {
            return utilizador;
        }
        return Optional.empty();
    }
}
