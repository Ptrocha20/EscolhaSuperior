package com.escolhaSuperior.backend;

import jakarta.persistence.*;

@Entity
@Table(name = "curso")

public class Curso {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idcurso")
    private Long id;

    @Column(name = "nome")
    private String nome;

    @Column(name = "grau")
    private String grau;

    @Column(name = "duracao")
    private Integer duracao;

    @Column(name = "descricao")
    private String descricao;

    @Column(name = "plano_curricular")
    private String plano_curricular;

    @Column(name = "saidas_profissionais")
    private String saidas_profissionais;

    public Long getId(){
        return id;
    }

    public Long setId(Long id){
        this.id = id;
    }

    public String getNome(){
        return nome;
    }

    public String setNome(String nome){
        this.nome = nome;
    }
}
