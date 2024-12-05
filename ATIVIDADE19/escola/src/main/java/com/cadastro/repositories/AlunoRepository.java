package com.cadastro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cadastro.entities.Aluno;

public interface AlunoRepository extends JpaRepository<Aluno, String> {
	
}

