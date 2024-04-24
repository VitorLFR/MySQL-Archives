CREATE DATABASE Facabook;

USE Facabook;

CREATE TABLE Cliente (
	Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(12),
    Email VARCHAR(40) NOT NULL,
    Telefone VARCHAR(20)
    );

CREATE TABLE Usuarios(
	Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(12),
    Email VARCHAR(40) NOT NULL,
    Telefone VARCHAR(20),
    Tipo VARCHAR(15) NOT NULL
    );
    
CREATE TABLE Produtos(

	Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(80) NOT NULL,
    Quantidade int NOT NULL,
    Afiacao VARCHAR(50)
	); 

INSERT INTO Cliente (Nome, CPF, Email, Telefone) VALUES
	("Sergio", "123456789-11", "sergio123@gmail.com", "119466789997");
    
SELECT * FROM Cliente;
    
INSERT INTO Usuarios (Nome, CPF, Email, Telefone, Tipo) VALUES
	("Mateus", "178455789-11", "mateuzinho123@gmail.com", "119466786789", "Administradores");
    
SELECT * FROM Usuarios;
    
INSERT INTO Produtos (Nome, Quantidade, Afiacao) VALUES
	("Faca do Arthur", 7, "Potente"),
    ("Faca do Gonça", 1, "Descubra"),
    ("Faca do Giovanni", 13, "Boa"),
    ("Tramontina", 20, "Normal"),
    ("Faca do João", 18, "Mediana");
    
SELECT * FROM Produtos;
    
