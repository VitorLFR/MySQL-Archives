USE Facabook;

-- Quero saber o total do Estoque
SELECT SUM(quantidade) FROM produtos;

-- Quero saber a média do meu Estoque 
SELECT AVG(quantidade) FROM produtos;

-- && => AND
SELECT Nome, Quantidade FROM produtos WHERE Quantidade > 2 AND Quantidade < 9;

-- || => OR
SELECT Nome, Quantidade FROM produtos WHERE Quantidade > 2 OR Quantidade < 9;

-- Alias => AS
SELECT (quantidade * 2) AS Calculo FROM produtos; 