USE ragnawiki;

-- Skills de Aprendiz
INSERT INTO habilidade(nome) VALUES ('Habilidades_Básicas'), ('Primeiros_Socorros'), ('Fingir_de_Morto');

-- Skills de Espadachim
INSERT INTO habilidade(nome) VALUES ('Golpe_Fulminante'), ('Impacto_Explosivo'), ('Aumentar_Recuperação_de_HP'), ('Ataque_Fatal'), ('Perícia_com_Espada'),
('Perícia_com_Espada_de_Duas_Mãos'), ('Provocar'), ('Recuperar_HP_em_Movimento'), ('Vigor'), ('Instinto_de_Sobrevivência');

-- Skills de Mago
INSERT INTO habilidade(nome) VALUES ('Lanças_de_Fogo'), ('Bolas_de_Fogo'), ('Barreira_de_Fogo'), ('Lanças_de_Gelo'), ('Rajada_Congelante'), ('Relâmpago'),
('Tempestade_de_Raios'), ('Ataque_Espiritual'), ('Espíritos_Anciões'), ('Aumentar_Recuperação_de_SP'), ('Chama_Reveladora'), ('Escudo_Mágico'), ('Petrificar');

-- Skills de Gatuno
INSERT INTO habilidade(nome) VALUES ('Ataque_Duplo'), ('Perícia_em_Esquiva'), ('Envenenar'), ('Esconderijo'), ('Furto'), ('Recuar'), ('Procurar_Pedras'),
('Desintoxicar'), ('Chutar_Areia'), ('Arremessar_Pedra');

-- Skills de Mercador
INSERT INTO habilidade(nome) VALUES ('Aumentar_Capacidade_de_Carga'), ('Usar_Carrinho'), ('Cavalo-de-Pau'), ('Comércio'), ('Superfaturar'),('Desconto'), ('Identificar_Item'), ('Mammonita'),
('Decorar_Carrinho'), ('Grito_de_Guerra'), ('Loja_de_Compras'), ('Personalizar_Carrinho');

-- Skills de Noviço
INSERT INTO habilidade(nome) VALUES ('Bênção'), ('Aumentar_Agilidade'), ('Curar'), ('Diminuir_Agilidade'), ('Escudo_Sagrado'), ('Angelus'), ('Aqua_Benedicta'),
('Flagelo_do_Mal'), ('Luz_Divina'), ('Medicar'), ('Portal'), ('Proteção_Divina'), ('Revelação'), ('Signum_Crucis'), ('Teleporte');

-- Skills de Arqueiro
INSERT INTO habilidade(nome) VALUES ('Rajada_de_Flechas'), ('Chuva_de_Flechas'), ('Disparo_Violento'), ('Olhos_de_Coruja'), ('Concentração'),('Fabricar_Flechas'),
('Olhos_de_Águia');

-- Skills de Cavaleiro
INSERT INTO habilidade(nome) VALUES ('Impacto_de_Tyr'), ('Lança_Bumerangue'), ('Estocada'), ('Contra-Ataque'), ('Brandir_Lança'), ('Avanço_Ofensivo'),
('Montaria'), ('Perfurar'), ('Perícia_com_Lança'), ('Perícia_em_Montaria'), ('Rapidez_com_Duas_Mãos'), ('Rapidez_com_Uma_Mão');

-- Skills de Templário
INSERT INTO habilidade(nome) VALUES ('Crux_Divinum'), ('Crux_Magnum'), ('Bloqueio'), ('Redenção'), ('Aura_Sagrada'),
('Rapidez_com_Lança'), ('Punição_Divina'), ('Escudo_Refletor'), ('Escudo_Bumerangue'), ('Fé'), ('Montaria'), ('Perícia_em_Montaria'),
('Perícia_com_Lança'), ('Flagelo_do_Mal'), ('Proteção_Divina'), ('Curar'), ('Medicar'), ('Divina_Providência'), ('Submissão');

-- Skills de Bruxo
INSERT INTO habilidade(nome) VALUES ('Coluna_de_Pedra'), ('Pântano_dos_Mortos'), ('Fúria_da_Terra'), ('Congelar'), ('Barreira_de_Gelo'),
('Barreira_de_Gelo'), ('Nevasca'), ("Esfera_d'Água"), ('Chuva_de_Meteoros'), ('Supernova'), ('Coluna_de_Fogo'), ('Trovão_de_Júpiter'),
('Ira_de_Thor'), ('Sentido_Sobrenatural'), ('Explosão_Protetora');

-- Skills de Sábio
INSERT INTO habilidade(nome) VALUES ('Desejo_Arcano'), ('Abracadabra'), ('Furacão'), ('Vulcão'), ('Dilúvio'), ('Sentido_Sobrenatural'), ('Encantar_com_Chama'),
('Encantar_com_Geada'), ('Encantar_com_Ventania'), ('Encantar_com_Terremoto'), ('Conjuração_Livre'), ('Estudo_de_Livros'), ('Dragonologia'), ('Coluna_de_Pedra'),
('Fúria_da_Terra'), ('Espelho_Mágico'), ('Espelho Mágico'), ('Desconcentrar'), ('Cancelar_Magia'), ('Desencantar'), ('Proteger_Terreno'), ('Criar_Conversor_Elemental'),
('Mudança_Elemental');

-- Skills de Mercenário
INSERT INTO habilidade(nome) VALUES ('Perícia_com_Katar'), ('Perícia_com_Mão_Esquerda'), ('Perícia_com_Mão_Direita'), ('Lâminas_Destruidoras'), ('Tocaia'), ('Furtividade'), ('Envenenar_Arma');

-- Skills de Ferreiro
INSERT INTO habilidade(nome) VALUES ('Martelo_de_Thor'), ('Adrenalina_Pura'), ('Amplificar_Poder'), ('Força_Violenta'), ('Manejo_Perfeito'),
('Consertar_Armas'), ('Perícia_em_Armamento'), ('Punho_Firme'), ('Resistência_ao_Fogo'), ('Forjar_Espada_de_Duas_Mãos'), ('Produzir_Pedra_Fundamental'),
('Trabalhar_Ferro'),('Trabalhar_Aço'), ('Forjar_Machado'), ('Forjar_Adaga'), ('Forjar_Soqueira'), ('Forjar_Maça'), ('Forjar_Lança'), 
('Encontrar_Minério'), ('Perícia_com_Oridecon'), ('Venda_Duvidosa'), ('Ganância'), ('Adrenalina_Concentrada');


-- Skills de Lordes
INSERT INTO habilidade(nome) VALUES  ('Aparar_Golpe'), ('Ataque_Vital'), ('Frenesi'), ('Dedicação'), ('Golpe_Traumático'),
('Lâmina_de_Aura'), ('Perfurar_em_Espiral'), ('Relaxar'); 

-- Skills de Mestre-Ferreiro
INSERT INTO habilidade(nome) VALUES ('Choque_do_Carrinho'), ('Impulso_no_Carrinho'), ('Golpe_Estilhaçante'), ('Força_Violentíssima'), ('Aprimorar_Armamento');


SELECT count(*) FROM habilidade WHERE fkClasse = 28;

SELECT h.nome as 'nomeSkill', c.nome as 'nomeClasse', c.descricao FROM habilidade as h 
    JOIN classe as c ON h.fkClasse = c.idClasse WHERE h.fkClasse = c.idClasse;