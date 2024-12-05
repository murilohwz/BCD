package com.cadastro.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

	@Entity
	@Table(name = "tb_aluno")
	public class Aluno {
		
		//Atributos
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private String id_aluno;
		
		@Column(name = "nome")
		private String nome;
		
		@Column(name = "idade")
		private int idade;
		
		@Column(name = "curso")
		private String curso;
		
		//Construtores
		public Aluno() {
			
		}
		
		public Aluno(String id_aluno, String nome, int idade, String curso) {
			this.id_aluno = id_aluno;
			this.nome = nome;
			this.idade = idade;
			this.curso = curso;
		}

		//Getters e Setters
		public String getId_aluno() {
			return id_aluno;
		}

		public void setId_aluno(String id_aluno) {
			this.id_aluno = id_aluno;
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
