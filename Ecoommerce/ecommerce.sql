CREATE DATABASE ECOMMERCE;

USE ecommerce;

CREATE TABLE Users(
	UserID INT primary key auto_increment not null,
    Nome VARCHAR(100),
    Senha VARCHAR(20)
);

CREATE TABLE Pedido(
PedidoID INT primary key auto_increment not null,
UserID INT,
FOREIGN KEY (UserID) REFERENCES Users(UserID),
DataPedido Date
);

CREATE TABLE Produto(
ProdutoID INT primary key auto_increment not null,
Nome VARCHAR(50),
Preco INT
);

CREATE TABLE Pedido_Produto(
Pedido_ProdutoID INT primary key auto_increment not null,
PedidoID Int,
FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID),
ProdutoID INT,
FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);

CREATE TABLE Favoritos (
FavoritoID INT primary key auto_increment not null,
ProdutoID INT,
FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID),
UserID INT,
FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Categoria(
Nome VARCHAR(100)
);

INSERT INTO Produto (Nome, Preco) VALUES
("Bolacha BOREO 90g", 8), 
("Caca Cala 2L", 9),
("Friitos 136g", 8);

INSERT INTO Users(Nome, Senha) VALUES
("Vítor", "123"),
("Rafael", "321"),
("Arthur", "231");

INSERT INTO Pedido(UserID, DataPedido) VALUES
(1, "2024-01-02"),
(2, "2024-05-06"),
(3, "2024-05-01");

SELECT * FROM Users;
SELECT * FROM Pedido;
SELECT * FROM Produto;


