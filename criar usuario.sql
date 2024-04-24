-- Criar  novo usuário 

CREATE USER 'novoUsuario'@'localhost'
IDENTIFIED BY 'senha123';

SHOW GRANTS FOR 'novoUsuario'@'localhost'