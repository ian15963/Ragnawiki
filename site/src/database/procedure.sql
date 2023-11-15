USE ragnawiki;

DELIMITER //
CREATE PROCEDURE inserirDados(forca int, agilidade int, vitalidade int, inteligencia int, destreza int, sorte int, ataques int, ataquem int, defesas int, defesam int
, precisaos int, esquivas int, criticos int, nivel int, pontos int, idUsuario int, idClasse int)
BEGIN
DECLARE erro_sql TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = true;
START TRANSACTION;
	INSERT INTO atributos_build(Forca, Agilidade, Vitalidade, Inteligencia, Destreza, Sorte) VALUES (forca, agilidade, vitalidade, inteligencia, destreza, sorte);
    INSERT INTO status_build(ataque, ataqueMagico, defesa, defesaMagica, precisao, esquiva, critico, nivel, pontos) VALUES (ataques, ataquem, defesas, defesam, precisaos, esquivas, criticos, nivel, pontos);
    set @idAtributo = (Select max(idAtributo) FROM atributos_build);
    set @idStatus = (SELECT max(idStatus) FROM status_build);
	INSERT INTO build(nome, fkUsuario, fkClasse, fkAtributo, fkStatus) VALUES ('Garra de Tigre', idUsuario, idClasse, @idAtributo, @idStatus);
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
call inserirDados(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
SELECT * FROM atributos_build;
SELECT * FROM status_build;
set @idAtributo = (Select max(idAtributo) FROM atributos_build);
Select @idAtributo as 'Último id';
SELECT * FROM build;
SELECT c.nome, ab.*, sb.*, b.nome FROM build as b JOIN atributos_build as ab ON b.fkAtributo = ab.idAtributo JOIN status_build as sb ON b.fkStatus = sb.idStatus 
JOIN classe as c ON b.fkClasse = c.idClasse JOIN usuario as u ON u.id = b.fkUsuario WHERE b.idBuild = 1;
TRUNCATE TABLE build;

SELECT b.nome as 'nomeBuild', c.nome as 'nomeClasse', b.idBuild FROM build as b JOIN classe as c ON b.fkClasse = c.idClasse WHERE b.fkUsuario = 1;