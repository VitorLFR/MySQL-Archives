CREATE DATABASE Banco;

USE Banco;

-- Criando a tabela de bancos
CREATE TABLE Banco (
    BancoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Pais VARCHAR(100)
);

-- Criando a tabela de pessoas
CREATE TABLE Pessoa (
    PessoaID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    Score INT,
    BancoID INT,
    FOREIGN KEY (BancoID) REFERENCES Banco(BancoID)
);

-- Criando a tabela de contas bancárias
CREATE TABLE ContaBancaria (
    ContaID INT AUTO_INCREMENT PRIMARY KEY,
    PessoaID INT,
    Saldo DECIMAL(10, 2) DEFAULT 0,
    FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID)
);

-- Criando a tabela de cartões
CREATE TABLE Cartao (
    CartaoID INT AUTO_INCREMENT PRIMARY KEY,
    PessoaID INT,
    NumeroCartao VARCHAR(16) UNIQUE NOT NULL,
    DataValidade DATE,
    CVV INT,
    FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID)
);

-- Criando a tabela de empréstimos
CREATE TABLE Emprestimo (
    EmprestimoID INT AUTO_INCREMENT PRIMARY KEY,
    PessoaID INT,
    ValorEmprestimo DECIMAL(10, 2),
    DataEmprestimo DATE,
    TaxaJuros DECIMAL(5, 2),
    FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID)
);

-- Criando a tabela de investimentos
CREATE TABLE Investimento (
    InvestimentoID INT AUTO_INCREMENT PRIMARY KEY,
    PessoaID INT,
    TipoInvestimento VARCHAR(50),
    ValorInvestido DECIMAL(10, 2),
    DataInvestimento DATE,
    FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID)
);

-- Inserindo valores na tabela Banco
INSERT INTO Banco (Nome, Pais) VALUES
    ('Banco do Brasil', 'Brasil'),
    ('Itaú', 'Brasil'),
    ('Santander', 'Brasil');

-- Inserindo valores na tabela Pessoa
INSERT INTO Pessoa (Nome, CPF, Score, BancoID) VALUES
    ('João Silva', '123.456.789-10', 750, 1),
    ('Maria Souza', '987.654.321-00', 800, 2), 
    ('Pedro Santos', '111.222.333-44', 700, 3), 
    ('Ana Oliveira', '555.666.777-88', 720, 1); 

-- Inserindo valores na tabela ContaBancaria
INSERT INTO ContaBancaria (PessoaID, Saldo) VALUES
    (1, 5000.00),
    (2, 10000.00),
    (3, 750.50),
    (4, 2000.00);
    
-- Inserindo valores na tabela Cartao
INSERT INTO Cartao (PessoaID, NumeroCartao, DataValidade, CVV) VALUES
    (1, '1234567812345678', '2026-05-01', 123), -- João Silva
    (2, '8765432187654321', '2025-12-01', 456), -- Maria Souza
    (3, '1111222233334444', '2024-10-01', 789), -- Pedro Santos
    (4, '9999888877776666', '2026-08-01', 234); -- Ana Oliveira

-- Inserindo valores na tabela Emprestimo
INSERT INTO Emprestimo (PessoaID, ValorEmprestimo, DataEmprestimo, TaxaJuros) VALUES
    (1, 10000.00, '2023-01-15', 8.5), -- João Silva
    (2, 5000.00, '2024-02-20', 7.0), -- Maria Souza
    (3, 2000.00, '2024-03-10', 9.0); -- Pedro Santos

-- Inserindo valores na tabela Investimento
INSERT INTO Investimento (PessoaID, TipoInvestimento, ValorInvestido, DataInvestimento) VALUES
    (1, 'Ações', 5000.00, '2022-12-01'),
    (2, 'Tesouro Direto', 8000.00, '2023-05-20'),
    (3, 'Fundo de Renda Fixa', 3000.00, '2024-01-10'),
    (4, 'CDB', 4000.00, '2023-10-05');

SELECT 
    p.Nome AS Pessoa,
    b.Nome AS Banco,
    i.TipoInvestimento AS TipoInvestimento,
    cb.Saldo AS SaldoContaBancaria,
    CASE WHEN e.EmprestimoID IS NOT NULL THEN 'Sim' ELSE 'Não' END AS TemEmprestimo,
    e.ValorEmprestimo AS ValorEmprestimo,
    c.NumeroCartao AS NumeroCartao
FROM Pessoa p
LEFT JOIN ContaBancaria cb ON p.PessoaID = cb.PessoaID
LEFT JOIN Cartao c ON p.PessoaID = c.PessoaID
LEFT JOIN Banco b ON p.BancoID = b.BancoID
LEFT JOIN Emprestimo e ON p.PessoaID = e.PessoaID
LEFT JOIN Investimento i ON p.PessoaID = i.PessoaID;

SELECT * FROM Banco;
SELECT * FROM Pessoa;
SELECT * FROM Cartao;
SELECT * FROM Investimento;
SELECT * FROM Emprestimo;
