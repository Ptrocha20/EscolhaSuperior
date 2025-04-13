package com.escolhaSuperior.backend.model;

import jakarta.persistence.*;
import java.util.List;


@Entity
@Table(name = "utilizador")
public class Utilizador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idutilizador")
    private Long idUtilizador;

    @Column(name = "nome")
    private String nome;

    @Column(name = "email")
    private String email;

    @Column(name = "palavrapasse")
    private String palavrapasse;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "utilizador_faculdade_favorito",
        joinColumns = @JoinColumn(name = "id_utilizador"),
        inverseJoinColumns = @JoinColumn(name = "id_faculdade")
    )
    private List<Universidade> universidadeFavoritas;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "utilizador_curso_favorito",
        joinColumns = @JoinColumn(name = "id_utilizador"), // Corrigido para garantir a correspondência correta
        inverseJoinColumns = @JoinColumn(name = "id_curso")
    )
    private List<Curso> cursosFavoritos;

    // Getters e setters

    public Long getIdUtilizador() {
        return idUtilizador;
    }

    public void setIdUtilizador(Long idUtilizador) {
        this.idUtilizador = idUtilizador;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPalavrapasse() {
        return palavrapasse;
    }

    public void setPalavrapasse(String palavrapasse) {
        this.palavrapasse = palavrapasse;
    }

    public List<Universidade> getUniversidadeFavoritas() {
        return universidadeFavoritas;
    }

    public void setUniversidadeFavoritas(List<Universidade> universidadeFavoritas) {
        this.universidadeFavoritas = universidadeFavoritas;
    }

    public List<Curso> getCursosFavoritos() {
        return cursosFavoritos;
    }

    public void setCursosFavoritos(List<Curso> cursosFavoritos) {
        this.cursosFavoritos = cursosFavoritos;
    }
}
