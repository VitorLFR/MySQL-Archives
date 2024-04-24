USE Loja;

-- Adicionem 3 Clientes e 3 Produtos

INSERT INTO Clientes (Nome, Email) VALUES 
('Carlos Silveira', 'carlosSilveira@example.com'),
('Marcio Melo', 'marcioMelo@example.com'),
('Joao Cleber', 'joaoCleber@example.com');

INSERT INTO Produtos (Nome, Preco) VALUES 
('Produto E', 15.50),
('Produto F', 27.30),
('Produto G', 38.30);

SELECT * FROM produtos WHERE preco > 15;

SELECT * FROM clientes;
