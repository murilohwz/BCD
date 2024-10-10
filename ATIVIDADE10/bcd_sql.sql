-- Criando um Banco de Dados
CREATE DATABASE db_cadastro;

-- Usando um Banco de Dados
USE db_cadastro;

-- Criando uma tabela
CREATE TABLE pessoas (
nome varchar(30),
idade int,
sexo char(1),
altura float,
nacionalidade varchar(20),
peso float
);

-- Alterando uma Tabelapessoas
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

SELECT * FROM pessoas;

ALTER TABLE pessoas
ADD COLUMN cpf varchar(11)
AFTER nome;

ALTER TABLE pessoas
ADD COLUMN id_pessoas int
FIRST;

ALTER TABLE pessoas
DROP COLUMN profissao;

ALTER TABLE pessoas
MODIFY COLUMN cpf int NOT NULL;

ALTER TABLE pessoas
CHANGE COLUMN cpf rg varchar(11);

DESC pessoas;

ALTER TABLE pessoas
RENAME TO alunos;

DESC alunos;

DROP TABLE IF EXISTS alunos;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS tb_curso (
id_curso int NOT NULL AUTO_INCREMENT,
nome varchar(30) NOT NULL UNIQUE,
descricao text,
carga int UNSIGNED,
ano year DEFAULT '2024',
PRIMARY KEY(id_curso)
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS professor (
id_professor int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('m','f'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) DEFAULT 'Brasileira',
CURSO_id_curso int,
FOREIGN KEY (CURSO_id_curso) REFERENCES tb_curso(id_curso)
);

DESC professor;

CREATE TABLE IF NOT EXISTS tb_aluno(
id_aluno int NOT NULL,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal (3,2),
nacionalidade varchar(20) DEFAULT 'Brasileira'
);

DESC tb_aluno;

ALTER TABLE tb_aluno
MODIFY COLUMN id_aluno int PRIMARY KEY
NOT NULL AUTO_INCREMENT;

ALTER TABLE tb_aluno
DROP COLUMN CURSO_id_curso;

ALTER TABLE tb_aluno
ADD FOREIGN KEY (CURSO_id_curso)
REFERENCES tb_curso(id_curso); 

