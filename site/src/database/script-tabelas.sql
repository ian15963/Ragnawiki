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
    Inteligencia int,
    Destreza int,
    Sorte int
);

CREATE TABLE classe(
	idClasse int primary key auto_increment,
    nome varchar(45),
    tipo varchar(30),
    descricao varchar(1200),
    classeAnterior int,
    fkBonus int,
    CONSTRAINT fkClasseAnterior FOREIGN KEY (classeAnterior) REFERENCES classe(idClasse),
    CONSTRAINT fkBonusClasse FOREIGN KEY (fkBonus) REFERENCES bonus(idBonus)
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

CREATE TABLE atributos_build(
	idAtributo int primary key auto_increment,
    Forca int,
    Agilidade int,
    Vitalidade int,
    Inteligencia int,
    Destreza int,
    Sorte int
);

CREATE TABLE status_build(
	idStatus int primary key auto_increment,
    ataque int,
    ataqueMagico int,
    defesa int,
	defesaMagica int,
    precisao int,
    esquiva int,
    critico int,
    nivel int,
    pontos int
);

CREATE TABLE build(
	idBuild int auto_increment,
    nome varchar(45),
    fkUsuario int,
    fkClasse int,
    fkAtributo int,
    fkStatus int,
    primary key(idBuild, fkUsuario, fkClasse, fkAtributo, fkStatus),
    CONSTRAINT fkUsuarioBuild FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
    CONSTRAINT fkClasseBuild FOREIGN KEY (fkClasse) REFERENCES classe(idClasse),
    CONSTRAINT fkAtributoBuild FOREIGN KEY (fkAtributo) REFERENCES atributos_build(idAtributo),
    CONSTRAINT fkStatusBuild FOREIGN KEY (fkStatus) REFERENCES status_build(idStatus)
);

CREATE TABLE habilidades_principais(
	fkBuild int,
    fkClasse int,
    fkStatus int,
    fkAtributos int,
    fkUsuario int,
    fkHabilidade int,
    primary key(fkBuild, fkClasse, fkStatus, fkAtributos, fkUsuario, fkHabilidade),
    CONSTRAINT fkBuildHabilidade FOREIGN KEY (fkBuild) REFERENCES build(idBuild),
    CONSTRAINT fkClasseHabilidadeBuild FOREIGN KEY (fkClasse) REFERENCES classe(idClasse),
    CONSTRAINT fkStatusHabilidade FOREIGN KEY (fkStatus) REFERENCES status_build(idStatus),
    CONSTRAINT fkAtributoHabilidade FOREIGN KEY (fkAtributos) REFERENCES atributos_build(idAtributo),
    CONSTRAINT fkUsuario FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
    CONSTRAINT fkHabilidade FOREIGN KEY (fkHabilidade) REFERENCES habilidade(idHabilidade)
);