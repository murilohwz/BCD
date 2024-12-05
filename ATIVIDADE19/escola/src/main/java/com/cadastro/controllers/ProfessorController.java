package com.cadastro.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cadastro.entities.Professor;
import com.cadastro.services.ProfessorService;

@RestController
	@RequestMapping (value = "/professor")

	public class ProfessorController {
	
	@Autowired
	private ProfessorService professorService;
	
	@PostMapping
	public ResponseEntity<String> escola (@RequestBody Professor professor) {
		boolean IsValid = professorService.ValidarCadastro(professor);
		
		if(IsValid) {
			return ResponseEntity.ok("Cadastro Valido");
		} else {
			return ResponseEntity.status(401).body("Cadastro" + "Invalido");
		}
	}
}

