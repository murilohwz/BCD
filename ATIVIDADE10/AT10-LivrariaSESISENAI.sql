-- Criando um banco de Dados
CREATE DATABASE db_livraria;

-- Usando um banco de Dados
USE db_livraria;

-- Criando uma tabela
CREATE TABLE tb_cliente (
id_cliente int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome varchar(30) NOT NULL,
cpf varchar(11) UNIQUE NOT NULL,
rg varchar(11) UNIQUE NOT NULL,
email varchar(45) UNIQUE NOT NULL
);

CREATE TABLE clientes_telefones (
id_telefone int PRIMARY KEY NOT NULL AUTO_INCREMENT,
telefone varchar(15),
);

CREATE TABLE clientes_enderecos (
id_endereco int PRIMARY KEY NOT NULL AUTO_INCREMENT,
rua varchar(45),
numero int,
cidade varchar(45),
estado varchar(45),
CLIENTE_id_cliente int 
);

CREATE TABLE pedido (
id_pedido int PRIMARY KEY NOT NULL AUTO_INCREMENT,
valor decimal(10,2) NOT NULL,
dia_hora date NOT NULL,
CLIENTE_id_cliente int NOT NULL
);

CREATE TABLE item_pedido (
quantidade int NOT NULL,
valor decimal (10,2) NOT NULL,
PEDIDO_id_pedido int PRIMARY KEY NOT NULL,
LIVRO_id_livro int NOT NULL
);

CREATE TABLE livro (
id_livro int PRIMARY KEY NOT NULL,
titulo varchar(45) NOT NULL,
categoria varchar(45) NOT NULL,
isbn varchar(13) NOT NULL,
ano date NOT NULL,
valor decimal(10,2) NOT NULL,
autor varchar(30) NOT NULL,
EDITORA_id_editora int NOT NULL
);

CREATE TABLE estoque (
quantidade int NOT NULL,
LIVRO_id_livro int
);

CREATE TABLE editora(
id_editora int PRIMARY KEY NOT NULL,
nome_editora varchar(45) NOT NULL,
nome_contato varchar(45) NOT NULL,
email varchar(45) NOT NULL,
contato varchar(45) NOT NULL
);

ALTER TABLE tb_telefones_clientes
ADD FOREIGN KEY (CLIENTES_id_clientes)
REFERENCES tb_clientes(id_clientes)

ALTER TABLE tb_clientes_enderecos
ADD FOREIGN KEY (CLIENTES_id_clientes)
REFERENCES tb_clientes(id_clientes);














