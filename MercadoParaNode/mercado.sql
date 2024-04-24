CREATE DATABASE Mercado;

USE Mercado;

CREATE TABLE Produto(
productID int primary key auto_increment not null,
nome VARCHAR(100),
preco int,		
descricao VARCHAR(100)
);

INSERT INTO Produto (nome, preco, descricao) VALUES
("Maça", 505, "lorem lorem ipsum"),
("Banana", 340, "lorem lorem ipsum");
SELECT * FROM Produto;
