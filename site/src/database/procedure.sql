DELIMITER //
CREATE PROCEDURE inserirDados(forca int, agilidade int, vitalidade int, destreza int, sorte int, ataques int, ataquem int, defesas int, defesam int
, precisaos int, esquivas int, criticos int)
BEGIN
DECLARE erro_sql TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = true;
START TRANSACTION;
	INSERT INTO atributos_build(Forca, Agilidade, Vitalidade, Destreza, Sorte) VALUES (forca, agilidade, vitalidade, destreza, sorte);
    INSERT INTO status_build(ataque, ataqueMagico, defesa, defesaMagica, precisao, esquiva, critico) VALUES (ataques, ataquem, defesas, defesam, precisaos, esquivas, criticos);
    set @idAtributo = (Select max(idAtributo) FROM atributos_build);
    set @idStatus = (SELECT max(idStatus) FROM status_build);
	INSERT INTO build(nome, fkUsuario, fkClasse, fkAtributo, fkStatus) VALUES ('Garra de Tigre', 1, 1, @idAtributo, @idStatus);
    IF erro_sql = false THEN
		COMMIT;
        SELECT 'Transação efetivada com sucesso' as Resultado;
	ELSE 
		ROLLBACK;
        SELECT 'Erro na transação' AS Resultado;
	END IF;
END// 
DELIMITER ;
DROP PROCEDURE inserirDados;
call inserirDados(1,1,1,1,1,1,1,1,1,1,1,1);
SELECT * FROM atributos_build;
SELECT * FROM status_build;
set @idAtributo = (Select max(idAtributo) FROM atributos_build);
Select @idAtributo as 'Último id';
SELECT * FROM build;