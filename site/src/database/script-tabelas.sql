CREATE DATABASE ragnawiki;

use ragnawiki;

CREATE TABLE usuario(
	
    id int primary key auto_increment,
    email varchar(45),
    nome varchar(45),
    sobrenome varchar(45),
    senha varchar(45)

);

INSERT INTO usuario VALUES (null, "ian@gmail.com", "Ian", "Silva Santos", "12345");
SELECT nome, email FROM usuario WHERE email = 'ian@gmail.com' AND senha = "12345";

CREATE TABLE bonus(
	idBonus int primary key auto_increment,
    Forca int,
    Agilidade int,
    Vitalidade int,
    Destreza int,
    Sorte int
);

CREATE TABLE classe(
	idClasse int primary key auto_increment,
    nome varchar(45),
    tipo varchar(30),
    descricao varchar(1200),
    fkBonus int,
    CONSTRAINT fkBonus FOREIGN KEY (fkBonus) REFERENCES bonus(idBonus)
);

CREATE TABLE habilidade(
	idHabilidade int primary key auto_increment,
    nome varchar(45)
);

CREATE TABLE classe_habilidade(
	fkClasse int,
    fkHabilidade int,
    primary key(fkClasse, fkHabilidade),
    CONSTRAINT fkClasseHabilidade FOREIGN KEY (fkClasse) REFERENCES classe(idClasse),
    CONSTRAINT fkHabilidadeClasse FOREIGN KEY (fkHabilidade) REFERENCES habilidade(idHabilidade)
);

SELECT h.nome as 'Nome da Skill', c.nome as 'Nome da Classe', c.descricao FROM habilidade as h 
    JOIN classe as c ON h.fkClasse = c.idClasse;