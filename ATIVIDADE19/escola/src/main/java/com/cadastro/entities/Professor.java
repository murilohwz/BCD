package com.cadastro.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

	@Entity
	@Table(name = "tb_professor")
	public class Professor {
		
		//Atributos
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private String id_professor;
		
		@Column(name = "name")
		private String nome;
		
		@Column(name = "idade")
		private int idade;
		
		@Column(name = "curso")
		private String curso;
		
		//Construtores
		public Professor() {
			
		}
		
		public Professor(String id, String nome, int idade, String curso) {
			this.id_professor = id_professor;
			this.nome = nome;
			this.idade = idade;
			this.curso = curso;
		}

		public String getId_professor() {
			return id_professor;
		}

		public void setId_professor(String id_professor) {
			this.id_professor = id_professor;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public int getIdade() {
			return idade;
		}

		public void setIdade(int idade) {
			this.idade = idade;
		}

		public String getCurso() {
			return curso;
		}

		public void setCurso(String curso) {
			this.curso = curso;
		}
	}


