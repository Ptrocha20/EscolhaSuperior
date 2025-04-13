package com.escolhaSuperior.backend.controller;

import com.escolhaSuperior.backend.Service.AutenticacaoService;
import com.escolhaSuperior.backend.model.Utilizador;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = "*") // Permite requisições de qualquer origem (útil para desenvolvimento)
public class AuthController {

    @Autowired
    private AutenticacaoService autenticacaoService;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Map<String, String> loginData) {
        String email = loginData.get("email");
        String palavrapasse = loginData.get("palavrapasse");

        Optional<Utilizador> utilizador = autenticacaoService.login(email, palavrapasse);

        if (utilizador.isPresent()) {
            return ResponseEntity.ok(utilizador.get());
        } else {
            return ResponseEntity.status(401).body("Credenciais inválidas");
        }
    }

    @PostMapping("/registo")
    public ResponseEntity<?> registo(@RequestBody Utilizador utilizador) {
        Utilizador novoUtilizador = autenticacaoService.registo(utilizador);
        return ResponseEntity.ok(novoUtilizador);
    }
}
