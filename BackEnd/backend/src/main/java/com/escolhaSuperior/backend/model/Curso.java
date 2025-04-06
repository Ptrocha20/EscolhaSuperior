package com.escolhaSuperior.backend.model;

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

    public void setId(Long id){
        this.id = id;
    }

    public String getNome(){
        return nome;
    }

    public void  setNome(String nome){
        this.nome = nome;
    }

    public String getGrau(){
        return grau;
    }

    public void setGrau(String grau){
        this.grau=grau;
    }

    public Integer getDuracao(){
        return duracao;
    }

    public void setDuracao(Integer duracao){
        this.duracao = duracao;
    }

    public String getDescricao(){
        return descricao;
    }

    public void setDescricao(String descricao){
        this.descricao = descricao;
    }

    public String getPlano_Curricular(){
        return plano_curricular;
    }

    public void setPlano_Curricular(String plano_curricular){
        this.plano_curricular = plano_curricular;
    }

    public String getSaidas_Profissionais(){
        return saidas_profissionais;
    }

    public void setSaidas_Profissionais(String saidas_profissionais){
        this.saidas_profissionais = saidas_profissionais;
    }
}
