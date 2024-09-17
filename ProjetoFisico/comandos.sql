-- Criação do Banco
CREATE DATABASE habisbi

-- Criação das tabelas
---- Cliente
    CREATE TABLE Cliente(
        id INT PRIMARY KEY,
        nome VARCHAR(255) NOT NULL
        cpf INT
    )


-- Inserção de dados
---- Cliente
    INSERT INTO Cliente(
        id, 
        nome,
        cpf
    ) VALUES (
        1,
        Muhammad,
        12345678901
    )


-- Consultas
---- Selecionar todos os clientes
    SELECT * FROM Cliente