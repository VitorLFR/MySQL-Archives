-- Permitindo novas funções para os usuários
GRANT
	SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
TO 'novoUsuario'@'localhost';

SHOW GRANTS FOR 'novoUsuario'@'localhost'