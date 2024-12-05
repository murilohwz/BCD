package com.cadastro.services;

import org.springframework.stereotype.Service;

import com.cadastro.entities.Aluno;

@Service
public class AlunoService {
	public boolean ValidarMatricula (Aluno aluno) {
		return "aluno".equals(aluno.getNome()) &&
				"1234".equals(aluno.getId_aluno()); 
		
	}
	
} 
	 
	
	

