package com.cadastro.services;

import org.springframework.stereotype.Service;

import com.cadastro.entities.Professor;

@Service
public class ProfessorService {
	public boolean ValidarCadastro (Professor professor) {
		return "professor".equals(professor.getNome()) &&
				"5678".equals(professor.getId_professor());
	}
}



