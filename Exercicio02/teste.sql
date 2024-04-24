CREATE DATABASE Papelaria;

CREATE TABLE Pessoa (
PessoaID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(100),
Email VARCHAR(100)
);

INSERT INTO Pessoa (Nome, Email) VALUES
('joao', 'joao@yahoo.com.br'),
('maria', 'maria@tor.net'),
('carlos', 'carlos@outlook.com'),
('ana', 'ana@gmail.com'),
('arthur', 'arthurrosa@gmail.com');

CREATE TABLE Pedidos (
	PedidoID int primary key auto_increment not null,
    PessoaID INT,
    DataPedido date,
    FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID)
);

INSERT INTO pedidos (PessoaID, DataPedido) VALUES
(1, "2024-01-10"),
(2, "2024-01-15"),
(3, "2024-01-20"), 
(4, "2024-01-25");

CREATE TABLE itens_pedidos (
	ItemPedidoID int primary key auto_increment not null,
    FOREIGN KEY (ItemPedidoID) REFERENCES Pedidos(PedidoID),
    Produto VARCHAR(100),
    Quantidade int
);
