USE Loja;

SELECT tabelaPedido.ClienteID, Clientes.Nome AS NomeCliente, Produtos.Nome AS NomeProduto, categorias.Nome AS NomeCategoria FROM Pedidos AS tabelaPedido

INNER JOIN Clientes ON Clientes.ClienteID = tabelaPedido.ClienteID

-- Trazer o nome do Produto

INNER JOIN Produtos ON Produtos.ProdutoID = tabelaPedido.ProdutoID

INNER JOIN categorias ON categorias.CategoriaID = tabelaPedido.CategoriaID;




