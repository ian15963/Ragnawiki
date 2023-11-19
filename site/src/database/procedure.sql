USE ragnawiki;

DELIMITER //
CREATE PROCEDURE inserirDados(nomeUsuario varchar(45), forca int, agilidade int, vitalidade int, inteligencia int, destreza int, sorte int, ataques int, ataquem int, defesas int, defesam int
, precisaos int, esquivas int, criticos int, nivel int, pontos int, idUsuario int, idClasse int)
BEGIN
DECLARE erro_sql TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = true;
START TRANSACTION;
	INSERT INTO atributos_build(Forca, Agilidade, Vitalidade, Inteligencia, Destreza, Sorte) VALUES (forca, agilidade, vitalidade, inteligencia, destreza, sorte);
    INSERT INTO status_build(ataque, ataqueMagico, defesa, defesaMagica, precisao, esquiva, critico, nivel, pontos) VALUES (ataques, ataquem, defesas, defesam, precisaos, esquivas, criticos, nivel, pontos);
    set @idAtributo = (Select max(idAtributo) FROM atributos_build);
    set @idStatus = (SELECT max(idStatus) FROM status_build);
	INSERT INTO build(nome, fkUsuario, fkClasse, fkAtributo, fkStatus) VALUES (nomeUsuario, idUsuario, idClasse, @idAtributo, @idStatus);
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
call inserirDados("Ian",1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
SELECT * FROM atributos_build;
SELECT * FROM status_build;
set @idAtributo = (Select max(idAtributo) FROM atributos_build);
Select @idAtributo as 'Último id';
SELECT build.* FROM build;
UPDATE build set nome = 'Kagerou', fkClasse = 28 WHERE idBuild = 9;
SELECT * FROM build JOIN status_build ON build.fkStatus = status_build.idStatus WHERE idStatus = 9;
UPDATE build set nome = "AOPA", fkClasse = 10 WHERE idBuild = 2;
SELECT c.nome, ab.*, sb.*, b.nome FROM build as b JOIN atributos_build as ab ON b.fkAtributo = ab.idAtributo JOIN status_build as sb ON b.fkStatus = sb.idStatus 
JOIN classe as c ON b.fkClasse = c.idClasse JOIN usuario as u ON u.id = b.fkUsuario WHERE b.idBuild = 1;
TRUNCATE TABLE build;

SELECT b.nome as 'nomeBuild', c.nome as 'nomeClasse', b.idBuild FROM build as b JOIN classe as c ON b.fkClasse = c.idClasse WHERE b.fkUsuario = 1;

DELIMITER //
CREATE PROCEDURE atualizarDados(forca int, agilidade int, vitalidade int, inteligencia int, destreza int, sorte int, ataquePersonagem int, 
ataquemPersonagem int, defesaPersonagem int, defesamPersonagem int, precisaoPersonagem int, esquivaPersonagem int, criticoPersonagem int, 
nivelPersonagem int, pontosPersonagem int, idStatusPersonagem int, idAtributos int)
BEGIN
DECLARE erro_sql TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = true;
START TRANSACTION;

	UPDATE atributos_build set Forca = forca, Agilidade = agilidade, Vitalidade = vitalidade, Inteligencia = inteligencia, 
	Destreza = destreza, Sorte = sorte WHERE idAtributo = idAtributos;
    
    UPDATE status_build set ataque = ataquePersonagem, ataqueMagico = ataquemPersonagem, defesa = defesaPersonagem, defesaMagica = defesamPersonagem, 
    precisao = precisaoPersonagem, esquiva = esquivaPersonagem, critico = criticoPersonagem, nivel = nivelPersonagem, pontos = pontosPersonagem 
    WHERE idStatus = idStatusPersonagem;
    
    IF erro_sql = false THEN
		COMMIT;
        SELECT 'Transação efetivada com sucesso' as Resultado;
	ELSE 
		ROLLBACK;
        SELECT 'Erro na transação' AS Resultado;
	END IF;
END// 
DELIMITER ;

call atualizarDados(1,2,3,4,5,6,100,80,80,80,80,90,90,90,70,9,9);
DROP PROCEDURE atualizarDados;
SELECT * FROM atributos_build;
SELECT * FROM status_build;
UPDATE atributos_build set Forca = 1, Agilidade = 1, Vitalidade = 1, Inteligencia = 1, 
    Destreza = 1, Sorte = 1 WHERE idAtributo = 3;
UPDATE status_build set ataque = 1, ataqueMagico = 1, defesa = 1, defesaMagica = 1, precisao = 1, esquiva = 1, 
    critico = 1, nivel = 1, pontos = 1 WHERE idStatus = 3;
UPDATE atributos_build set Forca = 2, Agilidade = 3, Vitalidade = 4, Inteligencia = 5, 
	Destreza = 6, Sorte = 7 WHERE idAtributo = 2;
    
SELECT c.idClasse, c.nome as 'nomeClasse', ab.*, sb.*, b.nome as 'nomeBuild' FROM build as b JOIN atributos_build as ab ON b.fkAtributo = ab.idAtributo JOIN status_build as sb ON b.fkStatus = sb.idStatus 
    JOIN classe as c ON b.fkClasse = c.idClasse JOIN usuario as u ON u.id = b.fkUsuario WHERE b.idBuild = 9 AND u.id = 2	;