CREATE DATABASE Papelaria;
 
USE Papelaria;
 
CREATE TABLE Pessoa (
	PessoaID INT primary key auto_increment not null,
    Nome Varchar(100),
    Email Varchar (100)
);
 
INSERT INTO Pessoa (Nome, Email) VALUES 
("João", "joao@yahoo.com.br"),
("Maria", "maria@tor.net"),
("Carlos", "carlos@outlook.com"),
("Ana", "ana@gmail.com");
 
CREATE TABLE Pedidos (
	PedidoID INT primary key auto_increment not null,
    PessoaID int,
    DataPedido date,
    FOREIGN KEY (PessoaID) REFERENCES pessoa(PessoaID)
);
 
INSERT INTO Pedidos (PessoaID, DataPedido) VALUES
(1,"2024-01-10"),
(2, "2024-01-15"),
(3, "2024-01-20"),
(4, "2024-01-25");
 
CREATE TABLE Itens_pedidos (
	ItemPedidoID INT primary key auto_increment not null,
    PedidoID int,
    FOREIGN KEY (PedidoID) REFERENCES pedidos(PedidoID),
    Produto Varchar(50),
    Quantidade int
);
 
SELECT * FROM Pessoa;