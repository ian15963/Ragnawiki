USE ragnawiki;

-- Insert de Builds
call inserirDados('Garra de Tigre',90, 100, 120, 100,80, 1, 149, 209, 167, 167, 430, 365, 0, 175, 4, 1, 43);
call inserirDados('Tempestade de Flechas',50, 100, 60, 25,120, 120, 157, 144, 137, 80, 510, 389, 37, 175, 6, 1, 45);
call inserirDados('Cometa',1, 70, 80, 130,120, 25, 76, 270, 141, 189, 478, 340, 8, 175, 1, 1, 37);
call inserirDados('Lança do Destino',120, 100, 110, 2,100, 38, 195, 78, 162, 67, 462, 372, 12, 175, 1, 1, 36);
call inserirDados('Lâminas Retalhadoras',120, 110, 100, 38,1, 100, 196, 133, 159, 101, 384, 395, 31, 175, 3, 1, 39);
call inserirDados('Escudo Bumerang',80, 70, 50, 1,71, 1, 118, 39, 88, 35, 345, 259, 0, 99, 1, 1, 23);
call inserirDados('Portões',90, 71, 120, 100,105, 2, 179, 239, 138, 177, 430, 335, 1, 175, 5, 1, 43);
call inserirDados('Punho Supremo de Asura',120, 70, 73, 120,80, 2, 179, 239, 138, 177, 430, 335, 1, 175, 3, 1, 43);
call inserirDados('Soco Furação',100, 120, 98, 70,100, 1, 163, 168, 160, 132, 450, 385, 0, 175, 0, 1, 43);
call inserirDados('Combo Rápido',90, 100, 120, 90,91, 1, 151, 196, 167, 157, 441, 365, 0, 175, 4, 1, 43);
call inserirDados('Rugido do Leão',90, 100, 120, 100,80, 3, 150, 210, 167, 167, 431, 365, 1, 175, 0, 1, 43);
call inserirDados('Arcanos',1, 64, 70, 120,120, 90, 98, 277, 134, 177, 500, 347, 28, 175, 6, 2, 37);
call inserirDados('Meteoro Escarlate',1, 100, 80, 120,120, 32, 78, 257, 147, 179, 480, 371, 10, 175, 7, 2, 37);
call inserirDados('Laminas de Loki',100, 120, 90, 1,100, 70, 186, 87, 156, 62, 473, 399, 22, 175, 87, 2, 39);
call inserirDados('Laminas Retralhadoras',120, 100, 90, 1,100, 70, 186, 87, 156, 62, 473, 399, 22, 175, 87, 2, 39);
call inserirDados('Guardião Real',110, 120, 100, 1,100, 39, 186, 77, 161, 64, 463, 392, 12, 175, 2, 2, 36);
call inserirDados('Tempestade',1, 120, 90, 1,120, 100, 101, 101, 156, 62, 503, 405, 31, 175, 3, 2, 45);

-- Requisição para as 5 classes mais utilizadas.
SELECT c.nome, count(build.fkClasse) FROM build JOIN classe as c ON build.fkClasse = c.idClasse GROUP BY build.fkClasse 
ORDER BY count(build.fkClasse) DESC LIMIT 5;
-- Requisição para as 5 habilidades mais utilizadas por classe
SELECT h.nome FROM habilidades_principais as ph JOIN habilidade as h ON h.idHabilidade = ph.fkHabilidade WHERE ph.fkClasse = 37 limit 3;

DELIMITER //
  CREATE PROCEDURE  metricas_build()
  BEGIN
	
DECLARE total_forca int;
    DECLARE total_agilidade int;
    DECLARE total_vitalidade int;
    DECLARE total_inteligencia int;
    DECLARE total_destreza int;
    DECLARE total_sorte int;
    
    
    SELECT count(*) INTO total_forca FROM build JOIN atributos_build as a ON build.fkAtributo = a.idAtributo WHERE Forca >= 120;
 	SELECT count(*) INTO total_agilidade FROM build JOIN atributos_build as a ON build.fkAtributo = a.idAtributo WHERE Agilidade >= 120;
    SELECT count(*) INTO total_vitalidade FROM build JOIN atributos_build as a ON build.fkAtributo = a.idAtributo WHERE Vitalidade >= 120;
    SELECT count(*) INTO total_inteligencia FROM build JOIN atributos_build as a ON build.fkAtributo = a.idAtributo WHERE Inteligencia >= 120;
    SELECT count(*) INTO total_destreza FROM build JOIN atributos_build as a ON build.fkAtributo = a.idAtributo WHERE Destreza >= 120;
    SELECT count(*) INTO total_sorte FROM build JOIN atributos_build as a ON build.fkAtributo = a.idAtributo WHERE Sorte >= 120;
    SELECT total_forca as 'totalForca', total_agilidade as 'totalAgilidade', total_vitalidade as 'totalVitalidade', total_inteligencia as 'totalInteligencia'
    , total_destreza as 'totalDestreza', total_sorte as 'totalSorte';
END //
DELIMITER ;

call metricas_build();

SELECT h.nome FROM habilidades_principais as ph JOIN habilidade as h ON h.idHabilidade = ph.fkHabilidade WHERE ph.fkClasse = 25 limit 3;