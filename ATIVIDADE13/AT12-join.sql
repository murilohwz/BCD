-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS db_ecommerce;
USE db_ecommerce;

-- Criação da tabela tb_clientes
CREATE TABLE tb_clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    endereco VARCHAR(150),
    cidade VARCHAR(50),
    estado CHAR(2)
);

-- Criação da tabela tb_pedidos
CREATE TABLE tb_pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    status ENUM('Pendente', 'Processando', 'Enviado', 'Entregue', 'Cancelado') NOT NULL,
    metodo_pagamento ENUM('Cartão de Crédito', 'Boleto', 'Pix', 'Transferência') NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id_cliente) ON DELETE CASCADE
);

-- Inserindo dados na tabela tb_clientes
INSERT INTO tb_clientes (nome, email, telefone, endereco, cidade, estado) VALUES
('Carlos Souza', 'carlos.souza@example.com', '(11) 91234-5678', 'Rua A, 123', 'São Paulo', 'SP'),
('Ana Lima', 'ana.lima@example.com', '(21) 92345-6789', 'Avenida B, 456', 'Rio de Janeiro', 'RJ'),
('Marcos Silva', 'marcos.silva@example.com', '(31) 93456-7890', 'Rua C, 789', 'Belo Horizonte', 'MG'),
('Fernanda Costa', 'fernanda.costa@example.com', '(41) 94567-8901', 'Avenida D, 101', 'Curitiba', 'PR'),
('Paulo Santos', 'paulo.santos@example.com', '(51) 95678-9012', 'Rua E, 202', 'Porto Alegre', 'RS'),
('Juliana Mendes', 'juliana.mendes@example.com', '(61) 96789-0123', 'Avenida F, 303', 'Brasília', 'DF'),
('Rafael Oliveira', 'rafael.oliveira@example.com', '(71) 97890-1234', 'Rua G, 404', 'Salvador', 'BA'),
('Patrícia Souza', 'patricia.souza@example.com', '(81) 98901-2345', 'Avenida H, 505', 'Recife', 'PE'),
('Luiz Lima', 'luiz.lima@example.com', NULL, 'Rua I, 606', 'Belém', 'PA'),
('Camila Rocha', 'camila.rocha@example.com', '(11) 90123-4567', 'Avenida J, 707', 'São Paulo', 'SP'),
('Rodrigo Teixeira', 'rodrigo.teixeira@example.com', '(41) 91234-5678', 'Rua K, 808', 'Curitiba', 'PR'),
('Larissa Campos', 'larissa.campos@example.com', '(31) 92345-6789', 'Avenida L, 909', 'Belo Horizonte', 'MG'),
('Felipe Silva', 'felipe.silva@example.com', '(21) 93456-7890', 'Rua M, 1000', 'Rio de Janeiro', 'RJ'),
('Isabela Ribeiro', 'isabela.ribeiro@example.com', NULL, 'Avenida N, 1111', 'Brasília', 'DF'),
('Gustavo Fernandes', 'gustavo.fernandes@example.com', '(81) 95678-9012', 'Rua O, 1212', 'Recife', 'PE');

-- Inserindo dados na tabela tb_pedidos
INSERT INTO tb_pedidos (data_pedido, valor_total, status, metodo_pagamento, id_cliente) VALUES
('2024-01-10', 150.00, 'Pendente', 'Cartão de Crédito', 1),
('2024-01-15', 200.00, 'Processando', 'Boleto', 2),
('2024-01-20', 350.50, 'Enviado', 'Pix', 3),
('2024-01-25', 450.00, 'Entregue', 'Transferência', 4),
('2024-01-30', 500.00, 'Cancelado', 'Cartão de Crédito', 5),
('2024-02-05', 120.00, 'Pendente', 'Pix', 6),
('2024-02-10', 180.75, 'Processando', 'Boleto', 7),
('2024-02-15', 220.00, 'Enviado', 'Cartão de Crédito', 8),
('2024-02-20', 330.00, 'Entregue', 'Transferência', 6),
('2024-02-25', 175.90, 'Pendente', 'Pix', 10),
('2024-03-01', 250.00, 'Processando', 'Cartão de Crédito', 11),
('2024-03-05', 195.00, 'Enviado', 'Boleto', 12),
('2024-03-10', 275.00, 'Entregue', 'Pix', 13),
('2024-03-15', 320.50, 'Cancelado', 'Transferência', 14),
('2024-03-20', 400.00, 'Pendente', 'Cartão de Crédito', 15),
('2024-03-25', 150.75, 'Processando', 'Pix', 1),
('2024-03-30', 210.00, 'Enviado', 'Boleto', 2),
('2024-04-05', 130.00, 'Entregue', 'Cartão de Crédito', 3),
('2024-04-10', 490.00, 'Cancelado', 'Pix', 4),
('2024-04-15', 355.00, 'Pendente', 'Boleto', 5),
('2024-04-20', 285.00, 'Processando', 'Transferência', 6),
('2024-04-25', 175.50, 'Enviado', 'Cartão de Crédito', 7),
('2024-05-01', 320.00, 'Entregue', 'Pix', 8),
('2024-05-05', 290.00, 'Cancelado', 'Boleto', 6),
('2024-05-10', 130.00, 'Pendente', 'Cartão de Crédito', 10),
('2024-05-15', 215.00, 'Processando', 'Pix', 11),
('2024-05-20', 420.00, 'Enviado', 'Boleto', 12),
('2024-05-25', 295.00, 'Entregue', 'Transferência', 13),
('2024-06-01', 410.00, 'Cancelado', 'Pix', 14),
('2024-06-05', 110.00, 'Pendente', 'Cartão de Crédito', 15),
('2024-06-10', 500.00, 'Processando', 'Pix', 1),
('2024-06-15', 220.00, 'Enviado', 'Boleto', 2),
('2024-06-20', 315.00, 'Entregue', 'Cartão de Crédito', 3),
('2024-06-25', 160.00, 'Cancelado', 'Transferência', 4),
('2024-07-01', 190.00, 'Pendente', 'Boleto', 5),
('2024-07-05', 245.00, 'Processando', 'Pix', 6),
('2024-07-10', 355.00, 'Enviado', 'Transferência', 7),
('2024-07-15', 285.50, 'Entregue', 'Cartão de Crédito', 8),
('2024-07-20', 115.00, 'Cancelado', 'Boleto', 6),
('2024-07-25', 490.00, 'Pendente', 'Pix', 10),
('2024-08-01', 310.00, 'Processando', 'Transferência', 11),
('2024-08-05', 410.00, 'Enviado', 'Cartão de Crédito', 12),
('2024-08-10', 205.00, 'Entregue', 'Boleto', 13),
('2024-08-15', 275.00, 'Cancelado', 'Pix', 14),
('2024-08-20', 150.00, 'Pendente', 'Transferência', 15),
('2024-08-25', 245.00, 'Processando', 'Cartão de Crédito', 1),
('2024-09-01', 320.00, 'Enviado', 'Pix', 2),
('2024-09-05', 180.00, 'Entregue', 'Boleto', 3);

-- EXERCICIOS

-- 01
select * from  tb_clientes;
select email from tb_clientes;

-- 02
select * from tb_pedidos
where status = "Pendente";

-- 03
select tb_clientes.nome, sum(tb_pedidos.valor_total) AS valor_total
from tb_clientes 
join tb_pedidos 
on tb_clientes.id_cliente = tb_pedidos.id_cliente
where tb_clientes.cidade = 'São Paulo'
group by tb_clientes.id_cliente;

-- 04
select * from tb_clientes;
select telefone from tb_clientes where telefone is null;

-- 05
select * from  tb_pedidos
where status = "Cancelado";

-- 06
select * from tb_pedidos;
select avg('valor_total')
from tb_pedidos;

-- 07
select tb_clientes.nome, tb_pedidos.valor_total from tb_clientes left join tb_pedidos on  tb_clientes.id_cliente = tb_pedidos.id_cliente;

-- 08
select tb_clientes.nome, tb_pedidos.valor_total 
from tb_clientes 
join tb_pedidos 
on tb_clientes.id_cliente = tb_pedidos.id_cliente
order by id_clientes desc;















