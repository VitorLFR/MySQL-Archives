CREATE DATABASE cinema;

USE cinema;

CREATE TABLE filme (
	-- identificador
    id int primary key auto_increment not null,
    nome  varchar(50) not null,
    duracao int,
    dataDeLancamento date
);

INSERT INTO filme (nome, duracao, dataDeLancamento) VALUES
	("Interestelar 2", 220, "2024-02-15");

INSERT INTO filme (nome, duracao, dataDeLancamento) VALUES
("Bad boys 4: Giovanni e Joao", 120, "2024-07-15"),
("Sesi mais velozes e mais furiosos", 250, "2026-12-02"),
("Quinteto fantastico", 120, "2025-02-01");

    SELECT * FROM filme;
    
    UPDATE filme SET nome = "shrek 5", duracao = 200 WHERE id = 6;
    
    -- Deleta um único objeto
    DELETE FROM filme WHERE id = 6;
    
    -- Deleta um ou mais objetos
    DELETE FROM filme WHERE IN (1, 2);
    
    -- Deleta todos os dados
    TRUNCATE TABLE filme;