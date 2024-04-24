

REVOKE
	SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
FROM 'novoUsuario'@'localhost';

SHOW GRANTS FOR 'novoUsuario'@'localhost';