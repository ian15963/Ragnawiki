USE ragnawiki;

-- Skills de Aprendiz
INSERT INTO habilidade(nome, fkClasse) VALUES ('Habilidades_Básicas', 1), ('Primeiros_Socorros', 1), ('Fingir_de_Morto', 1);
SELECT idClasse FROM classe WHERE nome = 'Lordes';
-- Skills de Espadachim
INSERT INTO habilidade(nome, fkClasse) VALUES ('Golpe_Fulminante', 3), ('Impacto_Explosivo', 3), ('Aumentar_Recuperação_de_HP', 3), ('Ataque_Fatal', 3), ('Perícia_com_Espada', 3),
('Perícia_com_Espada_de_Duas_Mãos', 3), ('Provocar',3), ('Recuperar_HP_em_Movimento', 3), ('Vigor', 3), ('Instinto_de_Sobrevivência',3);

-- Skills de Mago
INSERT INTO habilidade(nome, fkClasse) VALUES ('Lanças_de_Fogo', 4), ('Bolas_de_Fogo', 4), ('Barreira_de_Fogo', 4), ('Lanças_de_Gelo', 4), ('Rajada_Congelante', 4), ('Relâmpago', 4),
('Tempestade_de_Raios', 4), ('Ataque_Espiritual', 4), ('Espíritos_Anciões', 4), ('Aumentar_Recuperação_de_SP', 4), ('Chama_Reveladora', 4), ('Escudo_Mágico', 4), ('Petrificar', 4);

-- Skills de Gatuno
INSERT INTO habilidade(nome, fkClasse) VALUES ('Ataque_Duplo', 5), ('Perícia_em_Esquiva', 5), ('Envenenar', 5), ('Esconderijo', 5), ('Furto', 5), ('Recuar', 5), ('Procurar_Pedras', 5),
('Desintoxicar', 5), ('Chutar_Areia', 5), ('Arremessar_Pedra', 5);

-- Skills de Mercador
INSERT INTO habilidade(nome, fkClasse) VALUES ('Aumentar_Capacidade_de_Carga', 6), ('Usar_Carrinho', 6), ('Cavalo-de-Pau', 6), ('Comércio', 6), ('Superfaturar', 6),('Desconto', 6), ('Identificar_Item', 6), ('Mammonita', 6),
('Decorar_Carrinho', 6), ('Grito_de_Guerra', 6), ('Loja_de_Compras', 6), ('Personalizar_Carrinho', 6);

-- Skills de Noviço
INSERT INTO habilidade(nome, fkClasse) VALUES ('Bênção', 7), ('Aumentar_Agilidade', 7), ('Curar', 7), ('Diminuir_Agilidade', 7), ('Escudo_Sagrado', 7), ('Angelus', 7), ('Aqua_Benedicta', 7),
('Flagelo_do_Mal', 7), ('Luz_Divina', 7), ('Medicar', 7), ('Portal', 7), ('Proteção_Divina', 7), ('Revelação', 7), ('Signum_Crucis', 7), ('Teleporte', 7);

-- Skills de Arqueiro
INSERT INTO habilidade(nome, fkClasse) VALUES ('Rajada_de_Flechas', 8), ('Chuva_de_Flechas', 8), ('Disparo_Violento', 8), ('Olhos_de_Coruja', 8), ('Concentração', 8),('Fabricar_Flechas', 8),
('Olhos_de_Águia', 8);

-- Skills de Cavaleiro
INSERT INTO habilidade(nome, fkCLasse) VALUES ('Impacto_de_Tyr', 9), ('Lança_Bumerangue', 9), ('Estocada',9), ('Contra-Ataque',9), ('Brandir_Lança',9), ('Avanço_Ofensivo',9),
('Montaria',9), ('Perfurar',9), ('Perícia_com_Lança',9), ('Perícia_em_Montaria', 9), ('Rapidez_com_Duas_Mãos', 9), ('Rapidez_com_Uma_Mão', 9);

-- Skills de Templário
INSERT INTO habilidade(nome, fkClasse) VALUES ('Crux_Divinum', 10), ('Crux_Magnum', 10), ('Bloqueio', 10), ('Redenção', 10), ('Aura_Sagrada', 10),
('Rapidez_com_Lança', 10), ('Punição_Divina', 10), ('Escudo_Refletor', 10), ('Escudo_Bumerangue', 10), ('Fé', 10), ('Montaria', 10), ('Perícia_em_Montaria',10),
('Perícia_com_Lança', 10), ('Flagelo_do_Mal', 10), ('Proteção_Divina', 10), ('Curar', 10), ('Medicar', 10), ('Divina_Providência', 10), ('Submissão', 10);

-- Skills de Bruxo
INSERT INTO habilidade(nome, fkClasse) VALUES ('Coluna_de_Pedra', 11), ('Pântano_dos_Mortos', 11), ('Fúria_da_Terra', 11), ('Congelar', 11), ('Barreira_de_Gelo',11),
('Barreira_de_Gelo', 11), ('Nevasca', 11), ("Esfera_d'Água", 11), ('Chuva_de_Meteoros', 11), ('Supernova', 11), ('Coluna_de_Fogo', 11), ('Trovão_de_Júpiter', 11),
('Ira_de_Thor', 11), ('Sentido_Sobrenatural', 11), ('Explosão_Protetora', 11);

-- Skills de Ferreiro
INSERT INTO habilidade(nome, fkClasse) VALUES ('Martelo_de_Thor', 15), ('Adrenalina_Pura', 15), ('Amplificar_Poder', 15), ('Força_Violenta', 15), ('Manejo_Perfeito', 15),
('Consertar_Armas', 15), ('Perícia_em_Armamento', 15), ('Punho_Firme', 15), ('Resistência_ao_Fogo', 15), ('Forjar_Espada_de_Duas_Mãos', 15), ('Produzir_Pedra_Fundamental', 15),
('Trabalhar_Ferro', 15),('Trabalhar_Aço', 15), ('Forjar_Machado', 15), ('Forjar_Adaga', 15), ('Forjar_Soqueira', 15), ('Forjar_Maça', 15), ('Forjar_Lança', 15), 
('Encontrar_Minério', 15), ('Perícia_com_Oridecon', 15), ('Venda_Duvidosa', 15), ('Ganância', 15), ('Adrenalina_Concentrada', 15);


-- Skills de Lordes
INSERT INTO habilidade(nome, fkCLasse) VALUES ('Impacto_de_Tyr', 22), ('Lança_Bumerangue', 22), ('Estocada', 22), ('Contra-Ataque', 22), ('Brandir_Lança', 22), ('Avanço_Ofensivo', 22),
('Montaria', 22), ('Perfurar', 22), ('Perícia_com_Lança', 22), ('Perícia_em_Montaria', 22), ('Rapidez_com_Duas_Mãos', 22), ('Rapidez_com_Uma_Mão', 22), ('Aparar_Golpe', 22),
('Ataque_Vital', 22), ('Frenesi', 22), ('Dedicação', 22), ('Golpe_Traumático', 22), ('Lâmina_de_Aura', 22), ('Perfurar_em_Espiral', 22), ('Relaxar', 22); 

-- Skills de Mestre-Ferreiro
INSERT INTO habilidade(nome, fkClasse) VALUES ('Martelo_de_Thor', 28), ('Adrenalina_Pura', 28), ('Amplificar_Poder', 28), ('Força_Violenta', 28), ('Manejo_Perfeito', 28),
('Consertar_Armas', 28), ('Perícia_em_Armamento', 28), ('Punho_Firme', 28), ('Resistência_ao_Fogo', 28), ('Forjar_Espada_de_Duas_Mãos', 28), ('Produzir_Pedra_Fundamental', 28),
('Trabalhar_Ferro', 28),('Trabalhar_Aço', 28), ('Forjar_Machado', 28), ('Forjar_Adaga', 28), ('Forjar_Soqueira', 28), ('Forjar_Maça', 28), ('Forjar_Lança', 28), 
('Encontrar_Minério', 28), ('Perícia_com_Oridecon', 28), ('Venda_Duvidosa', 28), ('Ganância', 28), ('Adrenalina_Concentrada', 28),('Choque_do_Carrinho', 28), ('Impulso_no_Carrinho', 28),
('Golpe_Estilhaçante', 28), ('Força_Violentíssima', 28), ('Aprimorar_Armamento', 28);


SELECT count(*) FROM habilidade WHERE fkClasse = 28;

SELECT h.nome as 'nomeSkill', c.nome as 'nomeClasse', c.descricao FROM habilidade as h 
    JOIN classe as c ON h.fkClasse = c.idClasse WHERE h.fkClasse = c.idClasse;