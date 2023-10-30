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