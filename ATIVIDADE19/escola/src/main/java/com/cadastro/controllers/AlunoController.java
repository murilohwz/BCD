package com.cadastro.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cadastro.entities.Aluno;
import com.cadastro.services.AlunoService; 

@RestController
	@RequestMapping(value = "/aluno")
	
	public class AlunoController {
		
	@Autowired
	private AlunoService alunoService;
	
	@PostMapping
	public ResponseEntity<String> escola(@RequestBody Aluno aluno) {
		boolean IsValid = alunoService.ValidarMatricula(aluno);
		
		if(IsValid) {
			return ResponseEntity.ok("Matricula Valida");
		} else {
			return ResponseEntity.status(401).body("Matricula" + "Invalida");
		}
	}
	
	
	}
	
	
	

