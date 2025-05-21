package com.escolhaSuperior.backend.dto;

public class UtilizadorDTO {
    private Long idUtilizador;
    private String nome;
    private String email;

    public UtilizadorDTO(Long idUtilizador, String nome, String email) {
        this.idUtilizador = idUtilizador;
        this.nome = nome;
        this.email = email;
    }

    public Long getIdUtilizador() {
        return idUtilizador;
    }

    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }
}
