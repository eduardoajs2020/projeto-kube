
package br.com.desafio.model;
 
import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;

import jakarta.persistence.GenerationType;

import jakarta.persistence.Id;

import jakarta.persistence.Table;
 
@Entity

@Table(name = "produtos")

public class Produto {
 
    @Id

    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;
 
    private String nome;
 
    public Produto() {

    }
 
    public Produto(Long id, String nome) {

        this.id = id;

        this.nome = nome;

    }
 
    public Long getId() {

        return id;

    }
 
    public String getNome() {

        return nome;

    }
 
    public void setId(Long id) {

        this.id = id;

    }
 
    public void setNome(String nome) {

        this.nome = nome;

    }

}

